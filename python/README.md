## Python Example


You will need a CLI that can produce and consume SCITT transparent statements.
This one supports RFC9162 and json, and is 🚧 EXPERIMENTAL 🚧.

```sh
npm i -g @transmute/cli
```

```sh
pip install cyclonedx-bom
```

### Create the SBOM

Create a cyclonedx sbom in xml format.

```sh
cyclonedx-py -i  artifacts/requirements.txt -r --output artifacts/_manifest/artifact.cdx.xml
```

### Make Transparent SBOM

Sign the sbom, register the signature, attach the receipt to the signature, produce a transparent statement.

```sh
./script.sh
```
