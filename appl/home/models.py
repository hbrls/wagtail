# -*- coding: utf-8 -*-
from django.db import models
from wagtail.core.models import Page
from wagtail.core.fields import RichTextField
from wagtail.admin.edit_handlers import FieldPanel


class IndexPage(Page):
    # the default home index
    # explicitly set the `page_ptr` on a blank class
    # https://groups.google.com/forum/#!msg/wagtail/GJMOlZI5SIQ/OD0Q8MAZCQAJ
    page_ptr = models.OneToOneField(Page, parent_link=True, on_delete=models.CASCADE, related_name='+')

    class Meta:
        verbose_name = "PC 首页"


class MobileIndexPage(Page):
    # an example of mobile page
    class Meta:
        verbose_name = "Mobile 首页"


class AboutPage(Page):
    # an example of carefully-designed-hard-coded-pages
    class Meta:
        verbose_name = "关于我们"


class WhateverPage(Page):
    body = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('body', classname="whatever")
    ]
