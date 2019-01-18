---
layout: archive
title: "Projects"
excerpt: "An overview of a small selection of projects ... might get more soon."
author_profile: true
permalink: /projects/
---

{% include base_path %}

{% for post in site.portfolio %}
  {% include archive-single.html %}
{% endfor %}
