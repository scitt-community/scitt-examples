~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...3a343536',       / Protected                     /
      {                             / Unprotected                   /
        -333: [                     / Receipts (1)                  /
          h'd284584e...1bc0cbaa'    / Receipt 1                     /
        ]
      },
      h'',                          / Detached payload              /
      h'59ab367c...c61b2fe7'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: text/plain,                    / Content type                  /
  4: h'2a4975be...1505e49f',        / Key identifier                /
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
            h'83020181...bc9098ce', / Inclusion proof 1             /
          ]
        },
      },
      h'',                          / Detached payload              /
      h'a0866c6b...1bc0cbaa'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  4: h'2a4975be...1505e49f',        / Key identifier                /
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
     h'77029048...bc9098ce'         / Intermediate hash 1           /
  ]
]
~~~~