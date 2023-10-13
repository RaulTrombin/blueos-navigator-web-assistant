# BlueOS's Navigator Extension

Navigator Assistant extension is a webserver that allows user to control navigator hardware.
This application uses the navigator-assistant to interface with navigator board, and users can control it from Websocket and RestAPI.

## Instructions

Access the extensions manager and install with the following parameters:

Extensions Manager:
```
blueos.local/tools/extensions-manager
```
Parameters:

```
raulelektron.blueos_navigator_assistant

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

You can also run Navigator Assistant locally or on other extensions. Please check [navigator-assistant].

A Jupyter extension is available to try some fast python and websocket applications, check the Navigator-Assistant-Websocket example.


[navigator-assistant]: https://github.com/RaulTrombin/navigator-assistant