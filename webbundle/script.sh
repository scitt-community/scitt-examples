

transmute scitt key generate \
--alg -35 \
--output private-key.cbor

transmute scitt key export \
--input  private-key.cbor \
--output public-key.cbor

transmute scitt key diagnose \
--input  public-key.cbor \
--output artifacts/_manifest/proxx.wbn.issuer.public-key.cbor.md

transmute scitt statement issue \
--iss https://app.bundle.example \
--sub https://app.bundle.example \
--cty application/webbundle \
--issuer-key private-key.cbor \
--statement  artifacts/proxx.wbn \
--signed-statement artifacts/_manifest/proxx.wbn.cbor

transmute scitt statement diagnose \
--input  artifacts/_manifest/proxx.wbn.cbor \
--output artifacts/_manifest/proxx.wbn.cbor.without-transparency.md

transmute scitt statement verify \
--issuer-key public-key.cbor \
--statement  artifacts/proxx.wbn \
--signed-statement artifacts/_manifest/proxx.wbn.cbor \

transmute scitt ledger receipt issue \
--iss https://app.transparency.example \
--sub https://app.bundle.example \
--issuer-key private-key.cbor \
--signed-statement  artifacts/_manifest/proxx.wbn.cbor \
--transparent-statement artifacts/_manifest/proxx.wbn.cbor \
--ledger artifacts/_manifest/ledger.json

transmute scitt transparent statement verify \
--issuer-key public-key.cbor \
--transparency-service-key public-key.cbor \
--statement  artifacts/proxx.wbn \
--transparent-statement artifacts/_manifest/proxx.wbn.cbor

transmute scitt statement diagnose \
--input  artifacts/_manifest/proxx.wbn.cbor \
--output artifacts/_manifest/proxx.wbn.cbor.with-transparency.md