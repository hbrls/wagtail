# -*- coding: utf-8 -*-

def home_top_menu(root_page, current_page=None):
    menu_items = root_page.get_children().live().in_menu()
    for menu in menu_items:
        menu.show_dropdown = menu.get_children().live().in_menu().exists()
        menu.children = menu.get_children().live().in_menu()
        menu.active = current_page.url.startswith(menu.url) if current_page else False
    return menu_items
