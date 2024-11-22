
## W3C Verifiable Credentials

You will need a CLI that can produce and consume SCITT transparent statements.
This one supports RFC9162 and json, and is 🚧 EXPERIMENTAL 🚧.

```sh
npm i -g @transmute/cli
```

### Make a Transparent W3C Verifiable Credential

Signs the jsonld, registers it with a test ledger, adds a receipt to the signature, producing a transparent w3c verifiable credential.

```sh
./script.sh
```

