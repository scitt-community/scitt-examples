~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...6d706c65',       / Protected                     /
      {},                           / Unprotected                   /
      nil,                          / Detached payload              /
      h'd989f4f4...d71d4e6c'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: application/webbundle,         / Content type                  /
  4: h'3675c6f0...8f9ef6b3',        / Key identifier                /
  13: {                             / CWT Claims                    /
    1: https://app.bundle.example,  / Issuer                        /
    2: https://app.bundle.example,  / Subject                       /
  },
}
~~~~