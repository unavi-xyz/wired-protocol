# World Protocol

The Wired's world protocol adds multiplayer networking to [spatial](../spatial) environments.

## Worlds

A world is a published [glXF](../spatial#scenes-glxf) model, with additional metadata such as a name and preview image.
The world is not joinable on its own, you must enter an _instance_ of it.

### Instances

An instance is a multiplayer room, running on a server, that uses some world as it's base model.
There may be many instances for a given world, or the world author may restrict it and only allow a single instance they own.

### World Servers

Multiplayer networking within an instance is handled by a world server.
This server acts as a relay for all messages between players within an instance.

### World Registries

Worlds are published to a world registry, via a [DWN](../social/#decentralized-web-nodes-dwns) protocol.
From there the registry will create instances of the world according to its own logic.
Additionally this becomes a place for world discovery, as users can query the DWN for worlds using a filter.

## Networking

Networking within an instance uses [WebTransport](https://developer.mozilla.org/en-US/docs/Web/API/WebTransport),
following a defined [protobuf](https://protobuf.dev/) specification.
