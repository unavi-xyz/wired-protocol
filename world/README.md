# Worlds

A world within the Wired is defined by a `world.json` file. Here is an example `world.json`:

```json
{
  "info": {
    "name": "My World",
    "description": "A description of the world.",
    "image": "./image.jpg",
    "host": "host.unavi.xyz"
  },
  "model": "./world.gltf"
}
```

The `info` field contains metadata about the world.

The `model` field contains a URI pointing to a glTF file that defines the world's 3D model.
