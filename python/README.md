## Python Example

Based on https://replicate.com/blog/run-latent-consistency-model-on-mac

Set up a virtualenv to install the dependencies:

    python3 -m pip install virtualenv
    python3 -m virtualenv venv

Activate the virtualenv:

    source venv/bin/activate

(You'll need to run this command again any time you want to run the script.)

Then, install the dependencies:

    pip install -r requirements.txt


You will need a CLI that can produce and consume SCITT transparent statements.
This one supports RFC9162 and json, and is 🚧 EXPERIMENTAL 🚧.

```sh
npm i -g @transmute/cli
```

```sh
pip install cyclonedx-bom
```

### Generating images of certificates with AI

```sh
python main.py \
  "A paper certificate, with a blue ribbon and gold star" \
  --steps 40 --width 512 --height 512
```

### Create the SBOM

Create a cyclonedx sbom in xml format.

```sh
cyclonedx-py -i  artifacts/requirements.txt -r --output artifacts/_manifest/cyclonedx.xml
```

### Make Transparent SBOM

Sign the sbom, register the signature, attach the receipt to the signature, produce a transparent statement.

```sh
./script.sh
```
