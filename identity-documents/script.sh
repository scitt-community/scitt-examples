
rm -rf ./artifacts/*

# Generate Endorser Key Pair

transmute scitt key generate \
--alg -35 \
--output artifacts/endorser-private-key.cbor

transmute scitt key export \
--input  artifacts/endorser-private-key.cbor \
--output artifacts/endorser-public-key.cbor

# Generate Device Key Pair

# We won't actually use the device key...
# In this case, the signed device key is the statement.

transmute scitt key generate \
--alg -35 \
--output artifacts/device-private-key.cbor

transmute scitt key export \
--input  artifacts/device-private-key.cbor \
--output artifacts/device-public-key.cbor

# Generate Notary Key Pair

transmute scitt key generate \
--alg -35 \
--output artifacts/notary-private-key.cbor

transmute scitt key export \
--input  artifacts/notary-private-key.cbor \
--output artifacts/notary-public-key.cbor

# Register Public Keys

## Notary

transmute scitt statement issue \
--iss transparent.notary.example \
--sub transparent.notary.example \
--cty application/cose-key \
--issuer-key artifacts/notary-private-key.cbor \
--statement  artifacts/notary-public-key.cbor \
--signed-statement artifacts/signed-notary-public-key.cbor

transmute scitt ledger receipt issue \
--iss transparent.notary.example \
--sub endorser.example \
--issuer-key artifacts/notary-private-key.cbor \
--signed-statement  artifacts/signed-notary-public-key.cbor \
--ledger artifacts/notary-ledger.json

## Endorser

transmute scitt statement issue \
--iss endorser.example \
--sub endorser.example \
--cty application/cose-key \
--issuer-key artifacts/endorser-private-key.cbor \
--statement  artifacts/endorser-public-key.cbor \
--signed-statement artifacts/signed-endorser-public-key.cbor

transmute scitt ledger receipt issue \
--iss transparent.notary.example \
--sub endorser.example \
--issuer-key artifacts/notary-private-key.cbor \
--signed-statement  artifacts/signed-endorser-public-key.cbor \
--ledger artifacts/notary-ledger.json


# Sign Device Public Key

# (with registered endorsement public key)

transmute scitt statement issue \
--iss endorser.example \
--sub device.example/devices/1337 \
--cty application/cose-key \
--issuer-key artifacts/endorser-private-key.cbor \
--statement  artifacts/device-public-key.cbor \
--signed-statement artifacts/signed-device-public-key.cbor

# Register Signed Public Key

transmute scitt ledger receipt issue \
--iss transparent.notary.example \
--sub device.example/devices/1337 \
--issuer-key artifacts/notary-private-key.cbor \
--signed-statement  artifacts/signed-device-public-key.cbor \
--transparent-statement artifacts/notary-signed-device-public-key.cbor \
--ledger artifacts/notary-ledger.json

transmute scitt statement diagnose \
--input  artifacts/notary-signed-device-public-key.cbor \
--output artifacts/notary-signed-device-public-key.cbor.md