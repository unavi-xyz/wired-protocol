# World Protocol

The Wired's world protocol adds multiplayer networking to [spatial](../spatial) environments.

## Protobuf spec

The Wired provides a [protobuf](https://protobuf.dev/) specification for networked messages.
Protobufs are an efficient language-neutral format for describing serializable data.

## World Servers

Multiplayer networking within a world is controlled by a self-hostable world server.
The world server acts as a relay for all messages between clients within a world.
