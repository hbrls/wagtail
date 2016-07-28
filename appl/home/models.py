# -*- coding: utf-8 -*-
from django.db import models
from wagtail.wagtailcore.models import Page
from wagtail.wagtailcore.fields import RichTextField
from wagtail.wagtailadmin.edit_handlers import FieldPanel


class IndexPage(Page):
    # the default home index
    # explicitly set the `page_ptr` on a blank class
    # https://groups.google.com/forum/#!msg/wagtail/GJMOlZI5SIQ/OD0Q8MAZCQAJ
    page_ptr = models.OneToOneField(Page, parent_link=True, related_name='+')

    class Meta:
        verbose_name = "首页"


class AboutPage(Page):
    # an example of carefully-designed-hard-coded-pages
    class Meta:
        verbose_name = "关于我们"


class WhateverPage(Page):
    body = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('body', classname="whatever")
    ]


class AgreementPage(Page):
    body = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('body', classname="agreement")
    ]

    class Meta:
        verbose_name = "用户协议"
