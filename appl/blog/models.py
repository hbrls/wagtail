# -*- coding: utf-8 -*-
from django.db import models
from wagtail.core.models import Page
from wagtail.core.fields import RichTextField
from wagtail.admin.edit_handlers import FieldPanel
from wagtail.search import index


class BlogIndexPage(Page):

    class Meta:
        verbose_name = "博客文章列表"


class ArticlePage(Page):
    keywords = models.CharField(max_length=250, null=True, blank=True)
    description = models.CharField(max_length=250, null=True, blank=True)
    main_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    date = models.DateField("Post date")
    intro = models.CharField(max_length=250, null=True, blank=True)
    body = RichTextField(blank=True)

    search_fields = Page.search_fields + [
        index.SearchField('intro'),
        index.SearchField('body'),
    ]

    content_panels = Page.content_panels + [
        FieldPanel('keywords'),
        FieldPanel('description'),
        FieldPanel('main_image'),
        FieldPanel('date'),
        FieldPanel('intro'),
        FieldPanel('body'),
    ]

    class Meta:
        verbose_name = "一篇博客文章"
