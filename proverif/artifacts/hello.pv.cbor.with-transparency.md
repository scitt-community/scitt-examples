~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a343536',       / Protected                     /
      {                             / Unprotected                   /
        -333: [                     / Receipts (1)                  /
          h'd284584e...e5aa13d9'    / Receipt 1                     /
        ]
      },
      nil,                          / Detached payload              /
      h'd2a30350...f1c1e444'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: null,                          / Content type                  /
  4: h'337b79af...7f0860ec',        / Key identifier                /
  13: {                             / CWT Claims                    /
    1: urn:example:123,             / Issuer                        /
    2: urn:example:456,             / Subject                       /
  },
}
~~~~

~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a616263',       / Protected                     /
      {                             / Unprotected                   /
        -222: {                     / Proofs                        /
          -1: [                     / Inclusion proofs (1)          /
            h'83010080',            / Inclusion proof 1             /
          ]
        },
      },
      nil,                          / Detached payload              /
      h'ccef74f9...e5aa13d9'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  4: h'337b79af...7f0860ec',        / Key identifier                /
  -111: 1,                          / Verifiable Data Structure     /
  13: {                             / CWT Claims                    /
    1: urn:example:789,             / Issuer                        /
    2: urn:example:abc,             / Subject                       /
  },
}
~~~~

~~~~ cbor-diag
[                                   / Inclusion proof 1             /
  1,                                / Tree size                     /
  0,                                / Leaf index                    /
  [                                 / Inclusion hashes (0)          /

  ]
]
~~~~