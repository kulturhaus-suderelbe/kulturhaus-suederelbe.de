<!DOCTYPE html>
<html dir="ltr" lang="de-DE">

{% include head.html %}

<body>

<header>
<div class="navheader">
<div>Im<br>BGZ Süderelbe</div>
<div><img src="/img/kulturhaus.jpg"></div>
</div>

<nav>
{% assign pages = site.pages | sort: 'url' %}
<ul>
{% for p in pages %}
{% if p.dir == '/' or p.name == 'index.md' %}
<li><a href="{{ p.url }}">{{ p.title }}</a></li>
{% if p.url == page.url or p.dir == page.dir and page.dir != '/' %}
<ul>
{% for d in site.pages %}
{% if page.dir == d.dir and page.dir != '/' and d.name != 'index.md' %}
<li><a href="{{ d.url }}">{{ d.title }}</a></li>
{% endif %}
{% endfor %}
</ul>
{% endif %}
{% endif %}
{% endfor %}
</ul>
</nav>
</header>

<div class="page">
  {{ content }}
</div>

</body>
</html>
