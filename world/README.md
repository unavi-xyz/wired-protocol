# World Protocol

The Wired's world protocol adds multiplayer networking to [spatial](../spatial) environments.

## Worlds

Worlds are created at a user's [DWN](../social/#decentralized-web-nodes-dwns).
A world is a [glXF](../spatial#scenes-glxf) model, with additional metadata such as a name and description.

The world additionally defines a host server.
This server acts as a relay for communication between players within the world.

## Networking

Networking within an instance uses [WebTransport](https://developer.mozilla.org/en-US/docs/Web/API/WebTransport),
following a [protobuf](https://protobuf.dev/) specification.
