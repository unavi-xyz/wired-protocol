# World Protocol

The Wired's world protocol adds multiplayer networking to [spatial](../spatial) environments.

## Protobuf spec

The Wired provides a [protobuf](https://protobuf.dev/) specification for networked messages.
Protobufs are an efficient language-neutral format for describing serializable data.

## Worlds

A world is simply a published [glXF](../spatial#scenes-glxf) scene, with additional metadata such as a name, author, and preview image.

## Instances

An instance is a multiplayer room that runs on a server, using some world as it's base model.

### Server

Multiplayer networking within an instance is controlled by a self-hostable server.
The instance server acts as a relay for all messages between clients within an instance.

### State

Each instance of a world has independent state.
This state stores information such as the location of dynamic objects or variables used by a script running in the scene.
State can either be persistent (lasting across sessions) or ephemeral (wiped when the last player leaves).
