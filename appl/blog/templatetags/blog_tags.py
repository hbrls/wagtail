# -*- coding: utf-8 -*-
from django import template


register = template.Library()


@register.simple_tag(takes_context=True)
def get_site_root(context):
    return context['request'].site.root_page


def has_blog_children(page):
    return page.get_children().live().in_menu().exists()


@register.inclusion_tag('tags/blog_index.html', takes_context=True)
def blog_index(context, parent, calling_page=None):
    menuitems = parent.get_children().live().in_menu()
    for menuitem in menuitems:
        menuitem.show_dropdown = has_blog_children(menuitem)
        menuitem.active = (calling_page.url.startswith(menuitem.url)
                           if calling_page else False)
    return {
        'parent': parent,
        'calling_page': calling_page,
        'menuitems': menuitems,
        'request': context['request'],
    }


@register.inclusion_tag('tags/top_menu_children.html', takes_context=True)
def blog_children(context, parent):
    menuitems_children = parent.get_children()
    menuitems_children = menuitems_children.live().in_menu()
    return {
        'parent': parent,
        'menuitems_children': menuitems_children,
        'request': context['request'],
    }
