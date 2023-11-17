~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...6d706c65',       / Protected                     /
      {                             / Unprotected                   /
        -333: [                     / Receipts (1)                  /
          h'd284586c...814a36c9'    / Receipt 1                     /
        ]
      },
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

~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...6d706c65',       / Protected                     /
      {                             / Unprotected                   /
        -222: {                     / Proofs                        /
          -1: [                     / Inclusion proofs (1)          /
            h'83010080',            / Inclusion proof 1             /
          ]
        },
      },
      nil,                          / Detached payload              /
      h'c47a7f7d...814a36c9'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                         / Protected                     /
  1: -35,                                 / Algorithm                     /
  4: h'3675c6f0...8f9ef6b3',              / Key identifier                /
  -111: 1,                                / Verifiable Data Structure     /
  13: {                                   / CWT Claims                    /
    1: https://app.transparency.example,  / Issuer                        /
    2: https://app.bundle.example,        / Subject                       /
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