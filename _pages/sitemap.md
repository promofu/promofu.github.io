---
layout:         archive
title:          "sitemap"
permalink:      /sitemap/
author_profile: true
---

{% include base_path %}

<p class="hint">This page needs some cleanup ... WIP</p>

A list of all the posts and pages found on the site.

For all you robots out there I made an [XML version]({{ base_path }}/sitemap.xml)
available for digesting as well.

<h2>pages</h2>
{% for post in site.pages %}
  {% if post.sitemap != false %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

<h2>posts</h2>
{% for post in site.posts %}
  {% if post.sitemap != false %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

{% capture written_label %}'none'{% endcapture %}

{% for collection in site.collections %}
{% unless collection.output == false or collection.label == "posts" %}
  {% capture label %}{{ collection.label }}{% endcapture %}
  {% if label != written_label %}
  <h2>{{ label }}</h2>
  {% capture written_label %}{{ label }}{% endcapture %}
  {% endif %}
{% endunless %}
{% for post in collection.docs %}
  {% unless collection.output == false or collection.label == "posts" %}
  {% include archive-single.html %}
  {% endunless %}
{% endfor %}
{% endfor %}
