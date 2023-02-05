apache2:                 # ID declaration
  pkg:                  # state declaration
    - installed         # function declaration

apache-service:
  service.running:
    - name: apache2
    - enable: True
    - reload: True