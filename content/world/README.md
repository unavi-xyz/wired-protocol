# Worlds

A world within the Wired is defined by a `world.json` file. Here is an example `world.json`:

```json
{
  "info": {
    "name": "My World",
    "description": "A description of the world.",
    "authors": ["alice@unavi.xyz"],
    "image": "./image.jpg",
    "host": "host.unavi.xyz"
  },
  "model": "./world.gltf"
}
```

## Info

The `info` object contains information about the world. Worlds are not required to have an `info` object, but it is recommended.

### Extras

An `extras` field can be added to the `info` object, which can contain any additional information related to the world. This field is intended to make the protocol extensible, as anyone can add application-specific data to the json.

```json
{
  "info": {
    ...
    "extras": {
      "myCustomField": "myCustomValue"
    }
  },
  "model": ...
}
```

## Model

The `model` field is a URI pointing to a glTF file for the world. The model can be either a `.gltf` or `.glb` file.

### Extensions

The following glTF extensions are commonly supported within the Wired:

- [KHR_audio](https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/KHR_audio)
- [OMI_collider](https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_collider)
- [OMI_spawn_point](https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_spawn_point)
