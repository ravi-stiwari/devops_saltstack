#!pydsl

web_server = 'apache2'
if __grains__['os_family'] == 'RedHat':
  web_server = 'httpd'
server_state = state(web_server)
server_state.pkg.installed()
server_state.service.running()
state('/var/www/html/index.html').file('managed', template='jinja', source='salt://apache2/files/index.html.jinja').require(pkg=web_server)
