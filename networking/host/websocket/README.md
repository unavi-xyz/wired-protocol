# WebSocket

Most client and host communication happens over a WebSocket connection.

## Messages

WebSocket messages are JSON objects. The `id` field is a unique identifier for the type of message.

A message may look something like:

```json
{
  "id": "com.example.foods.favorite",
  "data": "pizza",
  "target": "client"
}
```

### ID

Message IDs follow defined schemas using [Reverse Domain Name Notation](https://en.wikipedia.org/wiki/Reverse_domain_name_notation). For example, the `com.wired-protocol.webrtc` namespace is used for WebRTC signaling.

Structuring messages in this way makes the protocol extensible, allowing anyone to define their own message schemas without needing to worry about conflicting message IDs.

### Data

The `data` field is used to store the payload of the message. The type of data depends on the message ID.

### Target

A `target` field may optionally be included in a message. This is used to specify where the message should be sent. Valid targets are:

- `server`: Send the message to the server only. (Default)
- `client`: Send the message to all clients in your world.
