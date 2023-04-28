# Home Server

The home server is the server that a user is registered on. It is used to store user content and provide authentication for the user.

## Handles

A handle is a globally unique identifier for a user. It is used to identify a user across all servers. A handle is a string of the form `username@domain`. For example,`alice@unavi.xyz`.

## Authentication

Users can sign in to their home server using whatever authentication method the home server supports. This could be a username and password, or a third party OAuth provider.

The home server will be used by other services to verify user activity. For example, when joining a world other users can verify that the user is who they say they are by checking with the home server.

## API

The home server provides a [REST API](./api) for interacting with the server. This can be used to authenticate users, fetch user content, and more.

## The Future

In the future a more advanced solution may be used for user identity involving [DIDs](https://w3c-ccg.github.io/did-spec/), similar to what [at protocol](https://atproto.com/guides/identity) is doing. This would allow users to have more control over their identity and data, and would allow users to switch home servers without losing their identity.
