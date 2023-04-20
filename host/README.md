# Host Server

The host server is a crucial component of The Wired. It serves as a bridge between clients, enabling them to communicate and interact with one another.

## Role

The host server performs the following tasks:

1. **Connection Management**: The host server establishes and maintains connections with clients, allowing them to join, leave, or switch between worlds.

2. **Message Relay**: The host server acts as a [Selective Forwarding Unit (SFU)](https://bloggeek.me/webrtcglossary/sfu), relaying messages and updates between clients to ensure seamless interaction.

3. **World State Synchronization**: The host server maintains the state of the virtual world and synchronizes it across clients, ensuring a consistent experience for all users.

4. **Access Control**: The host server can implement access control mechanisms, such as authentication and authorization, to restrict or grant access to specific users or groups.

## Interaction with Clients

Clients connect to the host server over WebSockets using the provided domain name specified in the `world.json` file. If no host is provided, the client will fall back to a default host server, set by the client.

The client provides the host server with the URI of the `world.json` it wishes to join. The host server uses this URI to connect clients together.

## Implementation

An open source dockerized host server is available in the [unavi monorepo](https://github.com/unavi-xyz/unavi/tree/main/apps/host).
