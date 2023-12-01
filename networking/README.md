# Networking Protocol

The Wired's networking protocol is concerned with adding multiplayer functionality to the [spatial](../spatial) environment.

## Protobuf spec

The Wired provides a [protobuf](https://protobuf.dev/) specification for networked messages.
Protobufs are an efficient language-neutral format for describing serializable data.

## World Servers

Multiplayer networking within a world is centered around a self-hostable world server.
The world server acts as a relay for all messages between clients.
