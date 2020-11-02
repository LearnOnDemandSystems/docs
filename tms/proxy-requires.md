# Proxy Requirements

When connecting to a lab over a proxy, there are several restrictions to keep in mind. Depending on your proxy setup, certain remote controllers may fail to connect. In general, anything that alters traffic may interfere with connections to our environments. We recommend whitelisting lab instance traffic and ensuring all required ports are open. For whitelisting information, see our [Connectivity Requirements.](connectivity-requires.md)

To connect to a lab over a proxy, the following requirements must be met for each remote controller.

### Remote Controllers:

**HTML5:**

1. Secure websocket connections over port 443 must be supported

1. Websocket connection upgrade request (ws:// or wss://) headers must not be altered

1. Certificates must not be altered or repackaged

**Enhanced:**

1. The Enhanced controller functions using RDP over port 21xxx, RDP traffic through these ports must be allowed

1. If the connection to 21xxx fails, a RDP over HTTPS connection will be used.
