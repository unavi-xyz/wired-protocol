# Home Server

The home server is the server that a user is registered on. It is used to store user content and provide authentication for the user.

## Handles

A user's handle is a unique identifier for their account. It is comprised of a username and a domain - for example `alice@unavi.xyz`. The domain is the domain of the home server that the user is registered on. The username is a unique identifier for the user on that home server.

## Authentication

Users can sign in to their home server using whatever authentication method the home server supports. This could be a username and password, or a third party OAuth provider.

The home server will be used by other services to verify user activity. For example, when joining a world other users can verify that the user is who they say they are by checking with the home server.

## API

The home server provides a REST API for interacting with the server. The API is documented in the [API](./api) section. This can be used to authenticate users, fetch user content, and more.
