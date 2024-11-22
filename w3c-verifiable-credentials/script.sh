

transmute scitt key generate \
--alg -35 \
--output private-key.cbor

transmute scitt key export \
--input  private-key.cbor \
--output public-key.cbor

transmute scitt key diagnose \
--input  public-key.cbor \
--output artifacts/credential.json.issuer.public-key.cbor.md

transmute scitt statement issue \
--iss urn:example:123 \
--sub urn:example:456 \
--issuer-key private-key.cbor \
--statement  artifacts/credential.json \
--signed-statement artifacts/credential.json.cbor

transmute scitt statement issue \
--iss urn:example:123 \
--sub urn:example:456 \
--issuer-key private-key.cbor \
--statement  artifacts/presentation.json \
--signed-statement artifacts/presentation.json.cbor

transmute scitt statement verify \
--issuer-key public-key.cbor \
--statement  artifacts/credential.json \
--signed-statement artifacts/credential.json.cbor \

transmute scitt ledger receipt issue \
--iss urn:example:789 \
--sub urn:example:abc \
--issuer-key private-key.cbor \
--signed-statement  artifacts/credential.json.cbor \
--transparent-statement artifacts/credential.json.cbor \
--ledger artifacts/ledger.json

transmute scitt ledger receipt issue \
--iss urn:example:789 \
--sub urn:example:abc \
--issuer-key private-key.cbor \
--signed-statement  artifacts/presentation.json.cbor \
--transparent-statement artifacts/presentation.json.cbor \
--ledger artifacts/ledger.json

transmute scitt transparent statement verify \
--issuer-key public-key.cbor \
--transparency-service-key public-key.cbor \
--statement  artifacts/credential.json \
--transparent-statement artifacts/credential.json.cbor

transmute scitt statement diagnose \
--input  artifacts/credential.json.cbor \
--output artifacts/credential.json.cbor.with-transparency.md

transmute scitt statement diagnose \
--input  artifacts/presentation.json.cbor \
--output artifacts/presentation.json.cbor.with-transparency.md