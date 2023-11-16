

transmute scitt key generate \
--alg -35 \
--output private-key.cbor

transmute scitt key export \
--input  private-key.cbor \
--output public-key.cbor

transmute scitt key diagnose \
--input  public-key.cbor \
--output artifacts/hello.pv.issuer.public-key.cbor.md

transmute scitt statement issue \
--iss urn:example:123 \
--sub urn:example:456 \
--issuer-key private-key.cbor \
--statement  artifacts/hello.pv \
--signed-statement artifacts/hello.pv.cbor

transmute scitt statement issue \
--iss urn:example:123 \
--sub urn:example:456 \
--issuer-key private-key.cbor \
--statement  artifacts/hello.txt \
--signed-statement artifacts/hello.txt.cbor

transmute scitt statement verify \
--issuer-key public-key.cbor \
--statement  artifacts/hello.pv \
--signed-statement artifacts/hello.pv.cbor \

transmute scitt ledger receipt issue \
--iss urn:example:789 \
--sub urn:example:abc \
--issuer-key private-key.cbor \
--signed-statement  artifacts/hello.pv.cbor \
--transparent-statement artifacts/hello.pv.cbor \
--ledger artifacts/ledger.json

transmute scitt ledger receipt issue \
--iss urn:example:789 \
--sub urn:example:abc \
--issuer-key private-key.cbor \
--signed-statement  artifacts/hello.txt.cbor \
--transparent-statement artifacts/hello.txt.cbor \
--ledger artifacts/ledger.json

transmute scitt transparent statement verify \
--issuer-key public-key.cbor \
--transparency-service-key public-key.cbor \
--statement  artifacts/hello.pv \
--transparent-statement artifacts/hello.pv.cbor

transmute scitt statement diagnose \
--input  artifacts/hello.pv.cbor \
--output artifacts/hello.pv.cbor.with-transparency.md

transmute scitt statement diagnose \
--input  artifacts/hello.txt.cbor \
--output artifacts/hello.txt.cbor.with-transparency.md