~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a343536',       / Protected                     /
      {                             / Unprotected                   /
        -333: [                     / Receipts (1)                  /
          h'd284584e...516f4cad'    / Receipt 1                     /
        ]
      },
      nil,                          / Detached payload              /
      h'1e27604e...94e9f48a'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: text/plain,                    / Content type                  /
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
            h'83020181...5ead0d64', / Inclusion proof 1             /
          ]
        },
      },
      nil,                          / Detached payload              /
      h'f701c257...516f4cad'        / Signature                     /
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
  2,                                / Tree size                     /
  1,                                / Leaf index                    /
  [                                 / Inclusion hashes (1)          /
     h'b03d3ca8...5ead0d64'         / Intermediate hash 1           /
  ]
]
~~~~