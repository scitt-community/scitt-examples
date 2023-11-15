
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

```sh
sbom-tool generate -b artifacts -ps scitt-community  -pn scitt-nodejs-example -pv 0.0.0

```

### Make Transparent SBOM


```sh
./script.sh
```

