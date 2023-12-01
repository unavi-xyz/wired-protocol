# Social Protocol

The Wired's social protocol provides a generalized self-sovereign user identity solution.

## Handles (DIDs)

The Wired uses [decentralized identifiers](https://en.wikipedia.org/wiki/Decentralized_identifier) (DIDs) as a globally unique namespace for users.

DIDs are a generic format for addressing content that can easily be extended to support any protocol.
For example, [`did:web`](https://w3c-ccg.github.io/did-method-web/) can be used to point to content using a traditional web URL,
while [`did:ipid`](https://did-ipid.github.io/ipid-did-method/) can be used to point to content over [IPFS](https://docs.ipfs.tech/).

A user handle is a DID that points to data containing useful information such as their name, profile picture,
cryptographic public keys used to verify their identity, and anything else they want to store.
