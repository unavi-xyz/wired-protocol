# Networking

## Content Loading

The Wired uses URIs to reference content. For example, to connect to a world you point to the `world.json` file - this may be a URL like `https://cdn.unavi.xyz/worlds/1/world.json`. Other protocols such as IPFS may be used to address content if the client supports it.

## World Hosting

Worlds within The Wired are hosted by a dedicated [host server](./host). This server handles multiplayer functionality for the world, connecting clients together and acting as a relay for messages.

## Home Server

Each user has a [home server](./home) that they are registered on. The home server allows for persistant user identity by giving each player a handle, in the `username@domain` format. The home server also handles authentication for the user, and stores data such as their profile and friends list.
