Wagtail
==

Wagtail, the opinionated best practice.

Best Practice
==

1.  Change the default home page to our own `~/home/models.IndexPage`.

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

CHANGELOG
==
