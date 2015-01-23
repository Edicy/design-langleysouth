<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">

<head>
{% include "SiteHeader" %}
</head>

<body>
	
	<div id="wrap" class="content-hyphenate">
   
   {% include "Langmenu" %}
   
   <div id="container">
   
     <div id="sidebar">
       <div id="sitename" class="clearfix">{% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}</div>
       
       {% include "Search" %}
       {% include "Mainmenu" %}
       {% include "MobileMenu" %}
       
       <div id="sidetext" class="clearfix">
         {% content name="footer" xpage="true" %}
       </div> <!-- //sidetext -->
       
     </div> <!-- //sidebar -->
    
      <div id="content">
        <div id="headerimg"></div>
        <div id="bigtext" class="clearfix">{% content name="slogan" xpage="true" %}</div>
        
        <div id="content-inner" class="clearfix">
          <div id="content-left"{% for article in site.latest_articles limit:1 %} style="width: 323px;"{% endfor %} class="clearfix" data-search-indexing-allowed="true">
            {% content %}
            <div class="clearer"></div>
          </div> <!-- //content-left -->
        
          <div id="content-right">
          {% for article in site.latest_articles limit:1 %}
            <div id="news">
              <h1>{{"latest_news"|lc}}</h1>
              <table>
{% for article in site.latest_articles limit:5 %}
              <tr>
                <td class="first">{{ article.created_at | date:"%d.%m" }}</td>
                <td><a href="{{ article.url }}">{{ article.title }}</a>
                </td>
              </tr>
{% endfor %}
              </table>
            </div> <!-- //news -->
          {% endfor %}
          </div> <!-- //content-right -->
          
          <div class="clearer"></div>
        </div> <!-- //content-inner -->
        <div id="edicy" style="text-align: right; padding-top: 10px; font-size: 12px;">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
      </div> <!-- //content -->
      
      
      <div class="clearer"></div>
      
     </div> <!-- //container -->
  </div> <!-- //wrap -->
  {% include "JS" %}
</body>
</html>