FROM alpine:3.18

RUN apk add --no-cache bash

COPY files/* /

RUN mkdir -p /app
RUN chmod +x /entrypoint.sh && \
    if [ "$(uname -m)" = "aarch64" ]; then \
        cp /navigator-webassistant.aarch64 /app/navigator-webassistant; \
    elif [ "$(uname -m)" = "x86_64" ]; then \
        cp /navigator-webassistant.x86_64 /app/navigator-webassistant; \
    else \
        cp /navigator-webassistant.armv7 /app/navigator-webassistant; \
    fi && \
    chmod +x  /app/navigator-webassistant && \
    rm /navigator-webassistant.*

LABEL version="0.0.0"

RUN addgroup -g 1000 navigatorweb && adduser -G navigatorweb -u 1000 navigatorweb -D

# Add docker configuration
LABEL permissions='{\
  "ExposedPorts": {\
    "8080/tcp": {}\
  },\
  "HostConfig": {\
    "Privileged": true,\
    "PortBindings": {\
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
  "about": "Control navigator hardware using webservices",\
  "name": "Blue Robotics",\
  "email": "support@bluerobotics.com"\
}'
LABEL readme="https://raw.githubusercontent.com/raultrombin/blueos-navigator-web-assistant/master/README.md"
LABEL type="education"
LABEL tags='[\
  "rov",\
  "robot"\
]'

ENTRYPOINT ["/entrypoint.sh"]