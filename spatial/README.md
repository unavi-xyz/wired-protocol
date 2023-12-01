# Spatial Protocol

The Wired's spatial protocol is primarily concerned with running interactive user-created content in a dynamic 3D environment.

## Scenes (glXF)

The Wired uses the [glXF](https://github.com/KhronosGroup/glXF) file format for describing scenes.
glXF is a variant of [glTF](https://github.com/KhronosGroup/glTF), focused on the composition of multiple glTF (or other glXF) assets.
glTF is a well supported format for 3D models, and its extensible nature makes it a great fit for The Wired.

## Scripts (WASM)

The Wired uses [WebAssembly](https://webassembly.org/) (WASM) as a cross-platform compilation target and sandboxed execution environment for user scripting.
Scripts use the [component model](https://github.com/WebAssembly/component-model) to interact with a set of
[WIT](https://github.com/WebAssembly/component-model/blob/main/design/mvp/WIT.md) interfaces defined by The Wired.
Host environments can then implement these interfaces, allowing scripts to interact with the larger world in a controlled manner.

## Input

TODO.
The Wired will handle user input through a system inspired by Stardust's [SUIS](https://docs.rs/stardust-xr-fusion/latest/stardust_xr_fusion/input/index.html).
