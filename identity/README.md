# Identity

Within the Wired, identity is handled using Ethereum addresses. This is a simple and effective way to handle identity, as it is already a standard in the Ethereum ecosystem, letting us leverage existing tools and libraries, such as wallet browser extensions.

## Authentication

Authentication is handled using the [EIP-712](https://eips.ethereum.org/EIPS/eip-712) standard, which allows us to sign arbitrary data with an Ethereum private key. This is done by creating a message, hashing it, and signing the hash with the private key. The signature is then sent to the server, which can verify the signature using the public key.
