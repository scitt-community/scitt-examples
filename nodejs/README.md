
## NodeJS Example

## Create SBOM

```sh
brew install sbom-tool
```

```sh
sbom-tool generate -b . -ps scitt-community  -pn scitt-nodejs-example -pv 0.0.0
mv ./_manifest/spdx_2.2/manifest.spdx.json ./artifact.manifest.spdx.json 
rm -rf ./_manifest
```

### Make Transparent SBOM

You will need a CLI that can produce and consume SCITT transparent statements.
This one supports RFC9162 and SQLite, and is 🚧 EXPERIMENTAL 🚧.

```sh
npm i -g @transmute/cli
```

```sh
./script.sh
```

### Clean up

Remove everything that was created during this process:

```sh
./clean.sh
```