#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import os
import glob
from lxml import etree


_count_directory_mappings = etree.XPath('count(./mapping[@directory=$directory])')


def path_normalize(root, *paths):
    path = os.path.join(root, *paths)
    path = os.path.expanduser(path)
    return os.path.realpath(path)


def get_xml_path(project_dir):
    return path_normalize(project_dir, '.idea', 'vcs.xml')


def parse_vcs_xml(xml_path):
    if not os.path.exists(xml_path):
        return None
    xml_parser = etree.XMLParser(remove_blank_text=True)
    tree = etree.parse(xml_path, xml_parser)
    return tree


def find_component(vcs_xml):
    components = vcs_xml.xpath('/project/component[@name="VcsDirectoryMappings"]')
    if not components:
        return None

    return components[0]


def make_module_path_relative(project_dir, module_git_dir):
    rel_path = os.path.relpath(module_git_dir, project_dir)
    return os.path.dirname(rel_path)


def walk_module_dirs(project_dir):
    glob_path = path_normalize(project_dir, 'vendor', 'acsi', '*', '.git')
    for git_dir in glob.iglob(glob_path):
        yield make_module_path_relative(project_dir, git_dir)


def append_mapping(parent, relative_dir, vcs_type='Git'):
    attributes = {
        'directory': '$PROJECT_DIR$/%s' % relative_dir,
        'vcs': vcs_type
    }
    if _count_directory_mappings(parent, directory=attributes['directory']) == 0.0:
        etree.SubElement(parent, 'mapping', attrib=attributes)


def main(project_dir, print_xml=False):

    xml_path = get_xml_path(project_dir)

    vcs_xml = parse_vcs_xml(xml_path)
    if not vcs_xml:
        sys.exit(1)

    component = find_component(vcs_xml)
    if not len(component):
        sys.exit(2)

    for module_path in walk_module_dirs(project_dir):
        append_mapping(component, module_path)

    encoding = vcs_xml.docinfo.encoding

    if print_xml:
        print(etree.tostring(vcs_xml, pretty_print=True, xml_declaration=True, encoding=encoding))
    else:
        vcs_xml.write(xml_path, pretty_print=True, xml_declaration=True, encoding=encoding)


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(description="Add acsi modules VCS roots to PhpStorm project")
    parser.add_argument('project_root', help="Root of the PhpStorm project")
    parser.add_argument('-p', '--print', help="Print the modified vcs.xml instead of writing it", action="store_true", dest='print_xml')
    args = parser.parse_args()
    main(args.project_root, print_xml=args.print_xml)
