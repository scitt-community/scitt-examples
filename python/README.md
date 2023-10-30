## Replicate Example

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
  "a beautiful apple floating in outer space, like a planet" \
  --steps 4 --width 512 --height 512
```

### Create the SBOM

```sh
pip install cyclonedx-bom
```

```sh
cyclonedx-py -e --output artifact.xml
```

### Make Transparent SBOM

```sh
./script.sh
```