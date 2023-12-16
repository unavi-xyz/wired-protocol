# Social Protocol

The Wired's social protocol is built on top of the [Decentralized Web Node](https://identity.foundation/decentralized-web-node/spec/) (DWN) specification.
DWNs make use of [decentralized identifiers](https://en.wikipedia.org/wiki/Decentralized_identifier) (DIDs) to provide a self-hostable base layer for user identity and data storage.

## Decentralized identifiers (DIDs)

DIDs provide a globally unique namespace for both users and content within The Wired.

DIDs are a generic format for addressing content that can easily be extended to support any protocol.
For example, [`did:web`](https://w3c-ccg.github.io/did-method-web/) can be used to address content using a traditional web URL,
while [`did:ipid`](https://did-ipid.github.io/ipid-did-method/) can be used to address content over [IPFS](https://docs.ipfs.tech/).

A user's DID resolves to a document containing useful information such as their name, profile picture,
cryptographic keys that can be used to verify their identity, servers to contact them at, and anything else they want to store.

## Moderation

**A goal of The Wired is to remain decentralized.**

There is no central registry of users - a user cannot be "banned" from The Wired.
Same with any content within The Wired - files can be hosted and shared by anyone.
That's just the internet.

However specific services (websites, worlds, APIs) can and WILL moderate as necessary -
but like the Web, users will always have the option of moving to a different service they are not banned from (or running their own).

The difference with The Wired is that through this migration they can keep their identity and social connections.
A single company that decides who to ban doesn't wipe them from existence.
