## Proverif Example

Read the manual:

https://bblanche.gitlabpages.inria.fr/proverif/manual.pdf

You will need a CLI that can produce and consume SCITT transparent statements.
This one supports RFC9162 and json, and is 🚧 EXPERIMENTAL 🚧.

```sh
npm i -g @transmute/cli
```

### Run a model

Produces statements.

```sh
./proverif.sh ./artifacts/hello.pv > ./artifacts/hello.txt
```

### Register statements

Signs the statements, registered them, and produces transparent statements.

```sh
./script.sh
```