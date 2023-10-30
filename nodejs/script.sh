rm ./manifest.spdx.json 

sbom-tool generate -b . -ps scitt-community  -pn scitt-nodejs-example -pv 0.0.0

mv ./_manifest/spdx_2.2/manifest.spdx.json ./artifact.manifest.spdx.json 

rm -rf ./_manifest

transmute scitt key generate \
--alg -35 \
--output private-key.cbor

transmute scitt key export \
--input  private-key.cbor \
--output public-key.cbor

# transmute scitt key diagnose \
# --input  public-key.cbor \
# --output artifact.manifest.spdx.json.issuer.public-key.cbor.md

transmute scitt statement issue \
--iss urn:example:123 \
--sub urn:example:456 \
--issuer-key private-key.cbor \
--statement  artifact.manifest.spdx.json \
--signed-statement artifact.manifest.spdx.json.cbor

# transmute scitt statement diagnose \
# --input  artifact.manifest.spdx.json.cbor \
# --output artifact.manifest.spdx.json.cbor.without-transparency.md

transmute scitt statement verify \
--issuer-key public-key.cbor \
--statement  artifact.manifest.spdx.json \
--signed-statement artifact.manifest.spdx.json.cbor \

transmute scitt ledger receipt issue \
--iss urn:example:789 \
--sub urn:example:abc \
--issuer-key private-key.cbor \
--signed-statement  artifact.manifest.spdx.json.cbor \
--transparent-statement artifact.manifest.spdx.json.cbor \
--ledger ledger.sqlite

transmute scitt transparent statement verify \
--issuer-key public-key.cbor \
--transparency-service-key public-key.cbor \
--statement  artifact.manifest.spdx.json \
--transparent-statement artifact.manifest.spdx.json.cbor

# transmute scitt statement diagnose \
# --input  artifact.manifest.spdx.json.cbor \
# --output artifact.manifest.spdx.json.cbor.with-transparency.md