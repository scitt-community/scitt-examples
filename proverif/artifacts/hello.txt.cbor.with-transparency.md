~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a343536',       / Protected                     /
      {                             / Unprotected                   /
        -333: [                     / Receipts (1)                  /
          h'd284584e...2771d6a4'    / Receipt 1                     /
        ]
      },
      nil,                          / Detached payload              /
      h'52326b8b...27f092a2'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: text/plain,                    / Content type                  /
  4: h'6ecc5826...3887edc6',        / Key identifier                /
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
            h'83040382...c2d300d0', / Inclusion proof 1             /
          ]
        },
      },
      nil,                          / Detached payload              /
      h'b7df3d89...2771d6a4'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  4: h'6ecc5826...3887edc6',        / Key identifier                /
  -111: 1,                          / Verifiable Data Structure     /
  13: {                             / CWT Claims                    /
    1: urn:example:789,             / Issuer                        /
    2: urn:example:abc,             / Subject                       /
  },
}
~~~~

~~~~ cbor-diag
[                                   / Inclusion proof 1             /
  4,                                / Tree size                     /
  3,                                / Leaf index                    /
  [                                 / Inclusion hashes (2)          /
     h'ba8198cb...3a663692'         / Intermediate hash 1           /
     h'0927e42a...c2d300d0'         / Intermediate hash 2           /
  ]
]
~~~~