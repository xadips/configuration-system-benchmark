apache2:                 # ID declaration
  pkg:                  # state declaration
    - installed         # function declaration

apache2:
  service.running:
    - enable: True
    - reload: True