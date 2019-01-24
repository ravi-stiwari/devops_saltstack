#!pydsl

state, web_server = include('lib.apache2').get_apache()

state('/var/www/html/index.html').file('managed', template='jinja', source='salt://frontend/files/index.html.jinja').require(pkg=web_server)
