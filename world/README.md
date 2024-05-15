# World Protocol

The Wired's world protocol adds multiplayer networking to [spatial](../spatial) environments.

## Worlds

Worlds are created at a user's [DWN](../social/#decentralized-web-nodes-dwns).
A world is a [glXF](../spatial#scenes-glxf) model, with additional metadata such as a name and description.

### Instances

To join a world you must join an **instance** of the world.
An instance is a multiplayer room running on a host server.
This server acts as a relay for communication between players within the world.

Instances are created at the host server's DWN.
This DWN acts as a location for world discovery.

## Networking

Networking within an instance follows a [Cap'n Proto](https://capnproto.org/) schema over [WebTransport](https://developer.mozilla.org/en-US/docs/Web/API/WebTransport).
