# World Protocol

The Wired's world protocol adds multiplayer networking to [spatial](../spatial) environments.

## World

A world is a published [glXF](../spatial#scenes-glxf) model, with additional metadata such as a name and preview image.
The world is not joinable on its own, you must enter an *instance* of it.

### Instance

An instance is a multiplayer room, running on a server, that uses some world as it's base model.
There may be many instances for a given world, or the world author may restrict it and only allow a single instance.

### Server

Multiplayer networking within an instance is handled by a world server.
This server acts as a relay for all messages between clients within an instance.

### Publishing

Worlds are published to a user's [DWN](../social/#decentralized-web-node).
From there they become accessible via DID.

## Networking

Networking within an instance is done over [WebTransport](https://developer.mozilla.org/en-US/docs/Web/API/WebTransport).

### Protobufs

The Wired defines a [protobuf](https://protobuf.dev/) specification for networked messages.
Protobufs are an efficient language-neutral format for describing serializable data.
