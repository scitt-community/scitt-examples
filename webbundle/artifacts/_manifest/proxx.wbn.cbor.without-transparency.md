~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...6d706c65',       / Protected                     /
      {},                           / Unprotected                   /
      nil,                          / Detached payload              /
      h'14c146aa...bf941853'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: application/webbundle,         / Content type                  /
  4: h'108a5f15...63827e5f',        / Key identifier                /
  13: {                             / CWT Claims                    /
    1: https://app.bundle.example,  / Issuer                        /
    2: https://app.bundle.example,  / Subject                       /
  },
}
~~~~