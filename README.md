Wagtail
==

Wagtail, the opinionated best practice.

Docker Image
==

    $ docker build -t hbrls/wagtail:{version} .

For most of the time, you will continue to install app-specific dependencies. So I left the `USER root` there.

Before start your final app, you should set it to `USER www-data`.

`RUN sed "s/#logformat/$(cat /path/to/uwsgi-logformat.yaml)/" /uwsgi.yaml` to use your customized logformat.

Best Practice
==

1. Initialized database

    ```bash
    $ mysql> CREATE DATABASE wagtailexample CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
    $ mysql> CREATE USER 'wagtailexample'@'%' IDENTIFIED BY 'wagtailexample';
    $ mysql> GRANT ALL PRIVILEGES ON wagtailexample.* TO 'wagtailexample'@'%'
    $ mysql> FLUSH PRIVILEGES;
    
    $ wagtail start appl
    
    $ python manage.py makemigrations
    $ python manage.py migrate
    
    $ python manage.py createsuperuser  # wagtail:wagtail, wagtail@wagtailexample.com
    
    $ python manage.py collectstatic
    ```

2.  Change the default home page to our own `~/home/models.IndexPage`.

    1. 在 `Welcome to wagtail` 下新建 `IndexPage`，然后将它转移到 `Root` 下
    2. 到 "设置 > 站点 > Root Page" 将默认首页设置为 `IndexPage`

2. Add example of page/subpage hierarchy

       Root
           Welcome to wagtail
           首页                 <- the de facto root
               博客文章列表
                   博客文章列表
                   一类文章
                   二类文章
               关于我们

3. Add example of `WhateverPage` and `AgreementPage`. The `Hallo.js` Wagtail 1.5.3 is using doesn't support `<h1>`. Waiting for the next major release.

Where you are supposed to move on?
==

1. "设置 > 站点"

Conventions
==

1. `~/templates` for templates.

2. `~/static` is the *destination* of assets.

3. `DJANGO_ENV`: 'dev', 'sit', 'prod', ... to distinguish deploy environments.

4. The code (e.g. `~/home/models.py`, `~/blog/models.py`) provide *Page Types* to be used. The structure (i.e. site map) is up to your settings from the admin panel.

5. You would be requested a bunch of *carefully-designed-hard-coded-pages*. Just list their empty classes in `~/home/models.py` (e.g. `About`) and do the hard code and admin panel settings.

6. For *do-whatever-you-like* pages, just choose `~/home/models.Whatever` in the admin panel. You can also customize your own class like `~/home/models.Agreement` for a set of similar whatever pages.

References
==

1. https://github.com/apihackers/docker-wagtail
2. [Official: Your first Wagtail site](http://docs.wagtail.io/en/latest/getting_started/tutorial.html)
3. [Official: Wagtail demo project](https://github.com/torchbox/wagtaildemo)

Django 101
==

[Django LTS Roadmap](https://www.djangoproject.com/download/#supported-versions)

```bash
$ python manage.py showmigrations --plan
$ python manage.py sqlmigrate {app_name} {migration_name}
$ python manage.py migrate {app_name} {migration_name} --fake
```

CHANGELOG
==

2.9.3
--

1. Wagtail/Django renamed or deprecated contrib packages; [examples](https://github.com/wagtail/wagtail/blob/v2.6.3/docs/advanced_topics/settings.rst)
2. Django breaking changes [1](https://docs.djangoproject.com/en/3.1/releases/1.9/#assignment-tag), [2](https://github.com/wagtail/django-modelcluster/issues/89)

2.15.6, LTS, 2022-09-05
--

1. Django@3.0.14, [2021-04-06](https://docs.djangoproject.com/en/5.1/releases/), claims to support Python@3.9 at v2.2.17, which is not true
2. PyMySQL@1.0.0, [2021-01-07](https://github.com/PyMySQL/PyMySQL/blob/main/CHANGELOG.md#v100), to replace mysqlclient
3. Pillow@8.1.2, [2021-03-06](https://github.com/python-pillow/Pillow/blob/main/CHANGES.rst#812-2021-03-06)
   1. [Pillow vs Python](https://pillow.readthedocs.io/en/latest/installation/python-support.html)
   2. [Pillow vs Platform](https://pillow.readthedocs.io/en/latest/installation/platform-support.html)
4. Wagtail@2.11
   1. [SiteMiddleware moved to wagtail.contrib.legacy](https://github.com/wagtail/wagtail/blob/v2.11/docs/releases/2.11.rst#sitemiddleware-moved-to-wagtailcontriblegacy)

3.0.3, 2022-09-05
==

1. Django@3.2.6, 2022-10-04
2. drops Django@3.1, Python@3.6
