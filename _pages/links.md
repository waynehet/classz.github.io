---
layout: archive
title: "Links"
permalink: _pages/links/
author_profile: false
---

This is a list of my favorite links
<!--- "Find the right folder in the bookmarks file" -->
<!--- Note: Vivaldi bookmarks files store the normal list
of bookmarks in the second unnamed child of the bookmark_bar node in the JSON file --->
{% for item in site.data.Bookmarks.roots.bookmark_bar.children[1].children %}
	{% if item.name == "Wayne's Stuff" %}
		{% assign waynes_bookmarks = item %}
	{% endif %}
{% endfor %}

<!-- For each item in the "Wayne's Stuff" folder, call the include that will:
	create a link if the time is not a folder, or
  create another folder if the item is a folder, and then
		cycle through all the items in the subfolder -->
<p>
{% for item in waynes_bookmarks.children %}
	{% if item.type == "folder" %}
		<details>
			<summary> {{item.name}} </summary>
			<ul>
				{% include /link-tree.html bookmark_folder=item %}
			</ul>
		</details>
	{% endif %}
{% endfor %}
</p>