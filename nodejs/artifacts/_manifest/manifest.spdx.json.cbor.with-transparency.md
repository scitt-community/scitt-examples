~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a343536',       / Protected                     /
      {                             / Unprotected                   /
        -333: [                     / Receipts (1)                  /
          h'd284584e...43ab6b9c'    / Receipt 1                     /
        ]
      },
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

~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a616263',       / Protected                     /
      {                             / Unprotected                   /
        -222: {                     / Proofs                        /
          -1: [                     / Inclusion proofs (1)          /
            h'83020181...57ddeefe', / Inclusion proof 1             /
          ]
        },
      },
      nil,                          / Detached payload              /
      h'2b3ab380...43ab6b9c'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  4: h'0aaeabb4...3f5128d8',        / Key identifier                /
  -111: 1,                          / Verifiable Data Structure     /
  13: {                             / CWT Claims                    /
    1: urn:example:789,             / Issuer                        /
    2: urn:example:abc,             / Subject                       /
  },
}
~~~~

~~~~ cbor-diag
[                                   / Inclusion proof 1             /
  2,                                / Tree size                     /
  1,                                / Leaf index                    /
  [                                 / Inclusion hashes (1)          /
     h'c6031c2e...57ddeefe'         / Intermediate hash 1           /
  ]
]
~~~~