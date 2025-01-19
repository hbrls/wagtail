from jinja2 import Environment

from home.templatetags.home_tags import home_top_menu


def environment(**options):
    env = Environment(**options)

    # Register top_menu function for Jinja2
    env.globals.update({
        'home_top_menu': home_top_menu,
    })

    return env
