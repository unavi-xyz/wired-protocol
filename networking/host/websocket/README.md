# WebSocket

Most client and host communication happens over a WebSocket connection.

## Messages

WebSocket messages are JSON objects with an `id` field and a `data` field. The `id` field is a unique identifier for the message.

A message may look something like:

```json
{
  "id": "com.example.foods.favorite",
  "data": "pizza"
}
```

### Message IDs

Message IDs follow defined schemas using [Reverse Domain Name Notation](https://en.wikipedia.org/wiki/Reverse_domain_name_notation). For example, the `xyz.unavi.webrtc` namespace is used for WebRTC signaling.

Structuring messages in this way makes the protocol extensible, allowing anyone to define their own message schemas without needing to worry about conflicting message IDs.
