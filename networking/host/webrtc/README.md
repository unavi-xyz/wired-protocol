# WebRTC

WebRTC data channels are used to communicate location information between clients. This allows the high frequency data to be sent over UDP, which is much faster than TCP.

## Message Format

Messages are sent as array buffers. The first byte is the player ID, followed by the position and rotation values. With a single byte for the player ID, the maximum number of players is 256.

| Offset | Size | Type  | Description |
| ------ | ---- | ----- | ----------- |
| 0      | 1    | uint8 | Player ID   |
| 1      | 4    | int32 | Position X  |
| 5      | 4    | int32 | Position Y  |
| 9      | 4    | int32 | Position Z  |
| 13     | 2    | int16 | Rotation X  |
| 15     | 2    | int16 | Rotation Y  |
| 17     | 2    | int16 | Rotation Z  |
| 19     | 2    | int16 | Rotation W  |

Total length: 21 bytes

### Rounding Multipliers

The position and rotation values are rounded using a multiplier, to reduce the size of the message. The following multipliers are used:

| Value    | Multiplier |
| -------- | ---------- |
| Position | 100_000    |
| Rotation | 10_000     |

With the position stored as an int32, and the above rounding multiplier, users can travel ~21474 meters in any direction.

With the rotation stored as an int16, and the above rounding multiplier, the maximum value is ±3.2768. A quaternion is used to represent the rotation, so the maximum value for each component only needs to be ±1.

## Example

Here is an example of how to send and receive a message using JavaScript.

## Send

```js
const buffer = new ArrayBuffer(21);
const view = new DataView(buffer);

view.setUint8(0, playerId);

view.setInt32(1, posX * POSITION_ROUNDING, true);
view.setInt32(5, posY * POSITION_ROUNDING, true);
view.setInt32(9, posZ * POSITION_ROUNDING, true);

view.setInt16(13, rotX * ROTATION_ROUNDING, true);
view.setInt16(15, rotY * ROTATION_ROUNDING, true);
view.setInt16(17, rotZ * ROTATION_ROUNDING, true);
view.setInt16(19, rotW * ROTATION_ROUNDING, true);
```

## Receive

```js
const view = new DataView(buffer);

const playerId = view.getUint8(0);

const posX = view.getInt32(1, true) / POSITION_ROUNDING;
const posY = view.getInt32(5, true) / POSITION_ROUNDING;
const posZ = view.getInt32(9, true) / POSITION_ROUNDING;

const rotX = view.getInt16(13, true) / ROTATION_ROUNDING;
const rotY = view.getInt16(15, true) / ROTATION_ROUNDING;
const rotZ = view.getInt16(17, true) / ROTATION_ROUNDING;
const rotW = view.getInt16(19, true) / ROTATION_ROUNDING;
```
