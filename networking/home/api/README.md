# API

The home server provides a REST API for interacting with the server. This can be used to authenticate users, fetch user content, and more.

## Endpoints

### GET /wired-protocol/v1/users/:username

Fetches a user's [profile](/content/profile).

#### Parameters

- `username` - The user's username. This is the part of the handle before the `@`.

#### Response

- `200` - The user's profile.
- `404` - The user does not exist.
