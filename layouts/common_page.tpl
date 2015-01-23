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
       <div id="sitename" class="clearfix">{% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}
</div>
       
       {% include "Search" %}
       {% include "Mainmenu" %}
       {% include "MobileMenu" %}
       
       <div id="sidetext" class="clearfix">
         {% content name="footer" xpage="true" %}
       </div> <!-- //sidetext -->
       
     </div> <!-- //sidebar -->
    
      <div id="content">
        <div id="headerimg"></div>
        <div id="bigtext">{{ page.title }}</div>
        
        <div id="content-inner" class="clearfix">
          <div class=" data-search-indexing-allowed="true">{% content %}</div>
          <div class="clearer"></div>

          {% include "News" %}
        </div> <!-- //content-inner -->
        <div id="edicy" style="text-align: right; padding-top: 10px; font-size: 12px;">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
      </div> <!-- //content -->
      
      <div class="clearer"></div>
  </div> <!-- //container -->
  </div> <!-- //wrap -->
  {% include "JS" %}
</body>
</html>