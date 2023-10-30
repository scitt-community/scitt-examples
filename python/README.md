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

```sh
python main.py \
  "A paper certificate, with a blue ribbon and gold star" \
  --steps 40 --width 512 --height 512
```

### Create the SBOM

```sh
pip install cyclonedx-bom
```

```sh
cyclonedx-py -e --output artifact.manifest.cyclonedx.xml
```

### Make Transparent SBOM

You will need a CLI that can produce and consume SCITT transparent statements.
This one supports RFC9162 and SQLite, and is 🚧 EXPERIMENTAL 🚧.

```sh
npm i -g @transmute/cli
```

```sh
./script.sh
```

### Clean up

Remove everything that was created during this process:

```sh
./clean.sh
```