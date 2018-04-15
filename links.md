---
layout: page
title: Links
permalink: /links/
---

This is a list of my favour links

{% assign waynes_bookmarks = site.data.Bookmarks.roots.other.children[0] %}
{{ waynes_bookmarks.id}} - {{ waynes_bookmarks.children | size }}

<ul>
{% for bookmark in waynes_bookmarks.children %}
	{% if bookmark.type == "folder" %}
		<li>
			Folder: {{ bookmark.name }}
		</li>	
	{% endif %}
{% endfor %}
</ul>

<ul>
{% for bookmark in waynes_bookmarks.children[0].children %}
	{% if bookmark.type == "url" %}
		<li>
			<a href="{{ bookmark.url }}" >
			{{ bookmark.name }} </a>
		</li>	
	{% endif %}
{% endfor %}
</ul>