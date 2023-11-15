~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a343536',       / Protected                     /
      {},                           / Unprotected                   /
      nil,                          / Detached payload              /
      h'60a67454...cb77280e'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: application/json,              / Content type                  /
  4: h'0aaeabb4...3f5128d8',        / Key identifier                /
  13: {                             / CWT Claims                    /
    1: urn:example:123,             / Issuer                        /
    2: urn:example:456,             / Subject                       /
  },
}
~~~~