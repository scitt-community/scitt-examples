### Generating images of certificates with AI


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