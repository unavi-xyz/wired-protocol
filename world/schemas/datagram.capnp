@0x875d2f2c381d4863;

struct Vec3 {
  x @0 :Float32 = 0.0;
  y @1 :Float32 = 0.0;
  z @2 :Float32 = 0.0;
}

struct Vec4 {
  x @0 :Float32 = 0.0;
  y @1 :Float32 = 0.0;
  z @2 :Float32 = 0.0;
  w @3 :Float32 = 0.0;
}

struct Transform {
  translation @0 :Vec3 = (x = 0.0, y = 0.0, z = 0.0);
  rotation @1 :Vec4 = (x = 0.0, y = 0.0, z = 0.0, w = 0.0);
}

struct PublishTransform {
  transform @0 :Transform;
}

struct ReceiveTransform {
  playerId @0 :UInt16;
  transform @1 :Transform;
}
