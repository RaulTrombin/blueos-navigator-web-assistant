FROM alpine:3.18

COPY files/* /

# Add docker configuration
LABEL permissions='{\
  "ExposedPorts": {\
    "8080/tcp": {}\
  },\
  "HostConfig": {\
    "PortBindings": {\
      "Privileged": true,\
      "8080/tcp": [\
        {\
          "HostPort": ""\
        }\
      ]\
    }\
  }\
}'
LABEL authors='[\
    {\
        "name": "Raul Victor Trombin",\
        "email": "raulvtrombin@gmail.com"\
    }\
]'
LABEL company='{\
  "about": "",\
  "name": "Blue Robotics",\
  "email": "support@bluerobotics.com"\
}'
LABEL readme="https://raw.githubusercontent.com/raultrombin/blueos-navigator-assistant/master/README.md"
LABEL type="education"
LABEL tags='[\
  "rov",\
  "robot"\
]'

ENTRYPOINT ["/entrypoint.sh"]