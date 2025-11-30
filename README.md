## Setup and run

1. Create a Kaggle account.
2. In your account settings, create a legacy API key. This will invoke a download of `kaggle.json` to your downloads folder.
3. Move the file to `~/.kaggle/kaggle.json`.
4. Back in the terminal, in this project's directory, run `uv sync`. This will install packages from `uv.lock`.
5. Run `uv run jupyter lab` to start up Jupyter.