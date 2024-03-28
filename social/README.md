# Social Protocol

The Wired's social protocol provides a self-hostable base layer for user identity and data storage.

## Decentralized Identifiers (DIDs)

[Decentralized Identifiers](https://en.wikipedia.org/wiki/Decentralized_identifier) (DIDs) provide a
globally unique namespace for both users and content within The Wired.

DIDs are a generic format for addressing content that can be extended to support any protocol.
For example, [`did:web`](https://w3c-ccg.github.io/did-method-web/) can be used to address content using a traditional web URL,
while [`did:ipid`](https://did-ipid.github.io/ipid-did-method/) can be used to address content over [IPFS](https://docs.ipfs.tech/).

A user's DID resolves to a document containing information such as their name,
cryptographic keys that can be used to verify their identity, servers to contact them at, and anything else they want to store.

## DID Host

A DID host is a server that remotely hosts a DID and provides convenient access to it.
For example, the server may use a method like `did:web` and host your DID document at a web domain.

You can log in to the server with a typical login method - such as a username and password or OAuth connection - then receive
cryptographic keys which can be used to verify your ownership of the hosted DID to other parties.
This allows you to use DIDs with the convienance of traditional app logins.

Running your own DID host server is a great first step towards self-sovereignity within The Wired.

## Decentralized Web Nodes (DWNs)

[Decentralized Web Nodes](https://identity.foundation/decentralized-web-node/spec/) (DWNs) are the data layer of The Wired.
DWNs build upon DIDs to store user data and provide an API for others to interact with it.
These interactions could be a simple read to view a document hosted by the user, or more complex writes to add
comments or send encrypted messages.

DWNs are built using [CRDT](https://en.wikipedia.org/wiki/Conflict-free_replicated_data_type)s and will sync their data
with other DWNs.
This allows you to make use of a public cloud-hosted DWN, while at the same time running your own
local DWN to keep a backup of your data.

## Moderation

**The Wired is decentralized.**

There is no central registry of users - a user cannot be "banned" from The Wired.
Same with any content within The Wired - files can be hosted and shared by anyone.
That's just the internet.

However specific services (websites, worlds, APIs) can and WILL moderate as necessary -
but like the Web, users will always have the option of moving to a different service they are not banned from (or running their own).
