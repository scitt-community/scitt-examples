~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a343536',       / Protected                     /
      {},                           / Unprotected                   /
      h'',                          / Detached payload              /
      h'6115e89c...e82a9d39'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: application/json,              / Content type                  /
  4: h'c3839e1c...0ef5e1f7',        / Key identifier                /
  13: {                             / CWT Claims                    /
    1: urn:example:123,             / Issuer                        /
    2: urn:example:456,             / Subject                       /
  },
}
~~~~