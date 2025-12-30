---
title:  "{{title | escape}}"
date: {{importDate | format("YYYY-MM-DDTHH:mm:ssZ")}}
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>{{ date | format("YYYY") }}</dd>
<dt>Authors</dt>
<dd>{{authors}}</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/{{DOI}}">{{DOI}}</a></dd>
</dl>

---

# Related
{% for relation in relations | selectattr("citekey") %} [[{{relation.citekey}}]]{% if not loop.last %}, {% endif%} {% endfor %} 

# Persistent Notes

<!--- 
{% persist "notes" %} {% if isFirstImport %}  --->
<!--- {% endif %}
{% endpersist %} 
--->

# In-text annotations

{% for annotation in annotations -%}
{%- if annotation.annotatedText -%} 
{% if annotation.color %} <mark class="hltr hltr-{{annotation.colorCategory | lower}}">"{{annotation.annotatedText | safe}}"</mark> {% else %} {{annotation.type | capitalize}} {% endif %}[Page {{annotation.pageLabel}}](zotero://open-pdf/library/items/{{annotation.attachment.itemKey}}?page={{annotation.pageLabel}}&annotation={{annotation.id}})
{%- endif %}
{% if annotation.comment %}
{{annotation.comment | safe}} [Page {{annotation.pageLabel}}](zotero://open-pdf/library/items/{{annotation.attachment.itemKey}}?page={{annotation.pageLabel}}&annotation={{annotation.id}})
{% endif %}
{%- if annotation.imageRelativePath %}
![[{{annotation.imageRelativePath}}]]
{%- endif %}
{% if annotation.allTags %}
{{annotation.allTags}}
{% endif %}
{% endfor -%}