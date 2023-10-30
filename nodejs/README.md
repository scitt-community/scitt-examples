
## NodeJS Example

See also https://github.com/microsoft/sbom-tool


## Create SBOM

```sh
brew install sbom-tool
```


```sh
rm ./manifest.spdx.json 

sbom-tool generate -b . -ps scitt-community  -pn scitt-nodejs-example -pv 0.0.0

mv ./_manifest/spdx_2.2/manifest.spdx.json ./artifact.manifest.spdx.json 

rm -rf ./_manifest
```


### Make Transparent SBOM

```sh
./script.sh
```