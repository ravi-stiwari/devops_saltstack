install_apache:
  pkg.installed:
    - name: httpd

start_apache:
  service.running:
    - name: httpd
    - enable: True
