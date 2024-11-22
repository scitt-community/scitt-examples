# Web Bundles

🚧 Experiment over... see https://chromestatus.com/feature/5377722941440000

See also: https://developer.chrome.com/docs/web-platform/web-bundles/#playing-around-with-web-bundles

You will need a CLI that can produce and consume SCITT transparent statements.
This one supports RFC9162 and json, and is 🚧 EXPERIMENTAL 🚧.

```sh
npm i -g @transmute/cli
```

```sh
./script.sh
```

## Signed Bundle

Protected header of a signed statement (signed web bundle)

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

## Transparent Bundle

Protected header of a receipt.

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

