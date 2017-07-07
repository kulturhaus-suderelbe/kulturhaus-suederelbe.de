<header>

<nav>
{% assign pages = site.pages | sort: 'url' %}
<ul>
{% for p in pages %}
{% if p.dir == '/' or p.name == 'index.md' %}
<li><a href="{{ p.url }}">{{ p.title }}</a></li>
{% if p.url == page.url %}
<ul>
{% for d in site.pages %}
{% if page.dir == d.dir and page.dir != '/' and page.name != d.name %}
<li><a href="{{ d.url }}">{{ d.title }}</a></li>
{% endif %}
{% endfor %}
</ul>
{% endif %}
{% endif %}
{% endfor %}
</ul>
</nav>

<hr>

</header>
