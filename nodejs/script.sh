

transmute scitt key generate \
--alg -35 \
--output private-key.cbor

transmute scitt key export \
--input  private-key.cbor \
--output public-key.cbor

transmute scitt key diagnose \
--input  public-key.cbor \
--output artifacts/_manifest/manifest.spdx.json.issuer.public-key.cbor.md

transmute scitt statement issue \
--iss urn:example:123 \
--sub urn:example:456 \
--issuer-key private-key.cbor \
--statement  artifacts/_manifest/spdx_2.2/manifest.spdx.json \
--signed-statement artifacts/_manifest/spdx_2.2/manifest.spdx.json.cbor

transmute scitt statement diagnose \
--input  artifacts/_manifest/spdx_2.2/manifest.spdx.json.cbor \
--output artifacts/_manifest/manifest.spdx.json.cbor.without-transparency.md

transmute scitt statement verify \
--issuer-key public-key.cbor \
--statement  artifacts/_manifest/spdx_2.2/manifest.spdx.json \
--signed-statement artifacts/_manifest/spdx_2.2/manifest.spdx.json.cbor \

transmute scitt ledger receipt issue \
--iss urn:example:789 \
--sub urn:example:abc \
--issuer-key private-key.cbor \
--signed-statement  artifacts/_manifest/spdx_2.2/manifest.spdx.json.cbor \
--transparent-statement artifacts/_manifest/spdx_2.2/manifest.spdx.json.cbor \
--ledger artifacts/_manifest/ledger.json

transmute scitt transparent statement verify \
--issuer-key public-key.cbor \
--transparency-service-key public-key.cbor \
--statement  artifacts/_manifest/spdx_2.2/manifest.spdx.json \
--transparent-statement artifacts/_manifest/spdx_2.2/manifest.spdx.json.cbor

transmute scitt statement diagnose \
--input  artifacts/_manifest/spdx_2.2/manifest.spdx.json.cbor \
--output artifacts/_manifest/manifest.spdx.json.cbor.with-transparency.md