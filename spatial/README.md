# Spatial Protocol

The Wired's spatial protocol is concerned with running interactive user-created content in a dynamic 3D multiplayer environment.

## Scenes (glXF)

The Wired uses the [glXF](https://github.com/KhronosGroup/glXF) file format for describing scenes.
glXF is a variant of [glTF](https://github.com/KhronosGroup/glTF), focused on the composition of multiple glTF (or other glXF) assets.
glTF is a well supported format for 3D models, and its extensible nature makes it a great fit for The Wired.

## Scripts (WASM)

The Wired uses [WebAssembly](https://webassembly.org/) (WASM) as a cross-platform compilation target and sandboxed execution environment for user scripting.
Scripts use the [component model](https://github.com/WebAssembly/component-model) to interact with a set of
[WIT](https://github.com/WebAssembly/component-model/blob/main/design/mvp/WIT.md) interfaces defined by The Wired.
Host environments can then implement these interfaces, allowing scripts to interact with the scene in a controlled manner.

## Worlds

Worlds are created at a user's [DWN](../social/#decentralized-web-nodes-dwns), following to the [world schema](../social/dwn/schemas/world.json).
This countains metadata about the world such as a name and description, as well as the world scene.

### Instances

To join a world you must join an **instance** of the world.
An instance is a multiplayer room running on a host server.
This server acts as a relay for communication between players within the world.
Instances are created at the host server's DWN.

Additionally the world host DWN acts as a location for world discovery, where you can,
for example, query for active instances to join.

## Networking

Networking within an instance follows a [Cap'n Proto](https://capnproto.org/) schema over [WebTransport](https://developer.mozilla.org/en-US/docs/Web/API/WebTransport).
