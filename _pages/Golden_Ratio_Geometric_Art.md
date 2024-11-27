---
layout: single
classes: wide
title: "初心者でも簡単！黄金比を使った幾何学アートの描き方"
permalink: /_pages/Golden_Ratio_Geometric_Art/

excerpt: "Descriptions and samples of all layouts included with the theme and how to best use them."

toc: true
toc_label: "Included Layouts"
toc_icon: "columns"
toc_sticky: true

sidebar:
  nav:

    - docs



---

![table of contents example]({{ "/assets/images/img01.png" | relative_url }})
初心者でも簡単！黄金比を使った幾何学アートの描き方

The bread and butter of any theme. Below you'll find the layouts included with Minimal Mistakes, what they look like and the type of content they've been built for.

## Default layout
![table of contents example]({{ "/assets/images/img02.png" | relative_url }})_

The base layout all other layouts inherit from. There's not much to this layout apart from pulling in several `_includes`:

* `<head>` elements
* masthead navigation links
* {% raw %}`{{ content }}`{% endraw %}
* page footer
* scripts

**Note:** You won't ever assign this layout directly to a post or page. Instead all other layouts will build off of it by setting `layout: default` in their YAML Front Matter.
{: .notice--warning}

### Layout based and user-defined classes

Class names corresponding to each layout are automatically added to the `<body>` element eg. `<body class="layout--single">`.

| layout           | class name                  |
| ---------------- | --------------------------- |
| archive          | `.layout--archive`          |
| archive-taxonomy | `.layout--archive-taxonomy` |
| search           | `.layout--search`           |
| single           | `.layout--single`           |
| splash           | `.layout--splash`           |
| home             | `.layout--home`             |
| posts            | `.layout--posts`            |
| categories       | `.layout--categories`       |
| category         | `.layout--category`         |
| tags             | `.layout--tags`             |
| tag              | `.layout--tag`              |

Using YAML Front Matter you can also assign custom classes to target with CSS or JavaScript. Perfect for "art directed" posts or adding custom styles to specific pages.

Example:

```yaml
---
layout: splash
classes:
  - landing
  - dark-theme
---
```

Outputs:

```html
<body class="layout--splash landing dark-theme">
```

---