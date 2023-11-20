~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...6d706c65',       / Protected                     /
      {                             / Unprotected                   /
        -333: [                     / Receipts (1)                  /
          h'd284586c...9137389d'    / Receipt 1                     /
        ]
      },
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
      h'bc5e8c62...9137389d'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  4: h'108a5f15...63827e5f',        / Key identifier                /
  -111: 1,                          / Verifiable Data Structure     /
  13: {                             / CWT Claims                    /
    1: https://app.transparency.example,/ Issuer                    /
    2: https://app.bundle.example,  / Subject                       /
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