# BlueOS's Navigator Extension

Navigator Webassistant extension is a webserver that allows user to control navigator hardware.
This application uses the navigator-assistant to interface with navigator board, and users can control it from Websocket and RestAPI.

## Instructions

Access the extensions manager and install with the following parameters:

Extensions Manager:
```
blueos.local/tools/extensions-manager
```
Parameters:

```
raulelektron.blueos_navigator_webassistant

Navigator Assistant

latest

{
  "ExposedPorts": {
    "8080/tcp": {}
  },
  "HostConfig": {
    "Privileged": true,
    "PortBindings": {
      "8080/tcp": [
        {
          "HostPort": ""
        }
      ]
    }
  }
}
```

You can also run Navigator Assistant locally or on other extensions. Please check [navigator-web-assistant].

You can also use the Jupyter extension to try some fast python and websocket applications.


[navigator-web-assistant]: https://github.com/RaulTrombin/navigator-web-assistant