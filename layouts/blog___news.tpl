<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
</head>

<body>
	
	<div id="wrap">
   
   {% include "Langmenu" %}
   
   <div id="container">
   
     <div id="sidebar">
       <div id="sitename" class="clearfix">{% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}</div>
       
       {% include "Search" %}
       {% include "Mainmenu" %}
       {% include "MobileMenu" %}
       
       <div id="sidetext" class="clearfix content-hyphenate">
         {% content name="footer" xpage="true" %}
       </div> <!-- //sidetext -->
       
     </div> <!-- //sidebar -->
    
      <div id="content">
        <div id="headerimg"></div>
        <div id="bigtext">{{ page.title }}</div>
        
        <div id="content-inner" class="clearfix">
        {% if tags %}
            <div class="blog tagged-list-header">
                <div class="header-tag-icon"></div>
                {% if tags == empty %}
                    {{ "no_posts_tagged" | lc }}
                {% else %}
                    {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
                {% endif %}
            </div>
        {% endif %}
          {% addbutton class="add-article" %}
          
          {% for article in articles %}
          <div class="blog clearfix content-hyphenate">
            <h1><a href="{{ article.url }}">{{ article.title }}</a></h1>
            <div class="blog-information">{{ article.author.name }} <span class="date">{{ article.created_at | format_date:"long" }}</span></div>
            {{ article.excerpt }} <a href="{{ article.url }}">{{"read_more"|lc}}</a>, <a href="{{ article.url }}#comments">{{ "comments_for_count" | lc }}: {{ article.comments_count }}</a>
          </div> <!-- //blog -->
          {% endfor %}
        </div> <!-- //content-inner -->
        <div id="edicy" style="text-align: right; padding-top: 10px; font-size: 12px;">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
      </div> <!-- //content -->
      
      <div class="clearer"></div>

    </div> <!-- //container -->      
  </div> <!-- //wrap -->
  {% include "JS" %}
</body>
</html>