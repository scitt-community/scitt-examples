
## NodeJS Example

You will need a CLI that can produce and consume SCITT transparent statements.
This one supports RFC9162 and json, and is 🚧 EXPERIMENTAL 🚧.

```sh
npm i -g @transmute/cli
```

```sh
brew install sbom-tool
```

## Create SBOM

Creates a `_manifest` directory and places a spdx sbom in json format inside it.

```sh
sbom-tool generate -D true -b artifacts -ps scitt-community  -pn scitt-nodejs-example -pv 0.0.0 
```

### Make Transparent SBOM

Signs the sbom, registeres it with a test ledger, adds a receipt to the signature, producing a transparent statement.

```sh
./script.sh
```

