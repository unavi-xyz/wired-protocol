@0xae09eca2c525e50a;

struct Result(T) {
  union {
    success @0: T;
    error @1: Text;
  }
}

interface WorldServer {
  joinInstance @0 (instance: Instance) -> (response :Result(JoinResponse));

  struct Instance {
    recordId @0 :Text;
  }

  struct JoinResponse {
    ok @0: Bool;
  }

  listPlayers @1 () -> (response: List(Player));

  struct Player {
    playerId @0: UInt16;
    did @1: Text;
  }
}
