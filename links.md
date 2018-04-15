---
layout: page
title: Links
permalink: /links/
---

This is a list of my favorite links

<!--- "Find the right folder in the bookmarks file" -->
{% for item in site.data.Bookmarks.roots.other.children %}
	{% if item.name == "Wayne's Stuff" %}
		{% assign waynes_bookmarks = item %}
	{% endif %}
{% endfor %}

<p>
{% for item in waynes_bookmarks.children %}
	{% if item.type == "folder" %}
		<details>
			<summary> {{item.name}} </summary>
			<ul>
				{% include /link_tree.html bookmark_folder = item %}
			</ul>
		</details>
	{% endif %}
{% endfor %}
</p>
