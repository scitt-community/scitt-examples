~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...31333337',       / Protected                     /
      {                             / Unprotected                   /
        -333: [                     / Receipts (1)                  /
          h'd2845867...cf71886e'    / Receipt 1                     /
        ]
      },
      nil,                          / Detached payload              /
      h'1c3271fb...b5df03d7'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  3: application/cose-key,          / Content type                  /
  4: h'5b55dd99...8a2acc6b',        / Key identifier                /
  13: {                             / CWT Claims                    /
    1: endorser.example,            / Issuer                        /
    2: device.example/devices/1337, / Subject                       /
  },
}
~~~~

~~~~ cbor-diag
18(                                 / COSE Sign 1                   /
    [
      h'a4013822...31333337',       / Protected                     /
      {                             / Unprotected                   /
        -222: {                     / Proofs                        /
          -1: [                     / Inclusion proofs (1)          /
            h'83030281...d0898dca', / Inclusion proof 1             /
          ]
        },
      },
      nil,                          / Detached payload              /
      h'7557d5c8...cf71886e'        / Signature                     /
    ]
)
~~~~

~~~~ cbor-diag
{                                   / Protected                     /
  1: -35,                           / Algorithm                     /
  4: h'a04bfe57...296ea037',        / Key identifier                /
  -111: 1,                          / Verifiable Data Structure     /
  13: {                             / CWT Claims                    /
    1: transparent.notary.example,  / Issuer                        /
    2: device.example/devices/1337, / Subject                       /
  },
}
~~~~

~~~~ cbor-diag
[                                   / Inclusion proof 1             /
  3,                                / Tree size                     /
  2,                                / Leaf index                    /
  [                                 / Inclusion hashes (1)          /
     h'a85b06ef...d0898dca'         / Intermediate hash 1           /
  ]
]
~~~~