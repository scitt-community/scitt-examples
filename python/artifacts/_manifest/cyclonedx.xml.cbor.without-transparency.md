~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a343536',       / Protected                     /
      {},                           / Unprotected                   /
      nil,                          / Detached payload              /
      h'17ac1711...5e5b3219'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: application/xml,               / Content type                  /
  4: h'937f453e...31b825e2',        / Key identifier                /
  13: {                             / CWT Claims                    /
    1: urn:example:123,             / Issuer                        /
    2: urn:example:456,             / Subject                       /
  },
}
~~~~