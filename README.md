# Bash-AI: ask your terminal anything

This is a simple bash script that allows you to ask questions to your terminal and get answers using Hugging Face's Inference API.

## Requirements

- Python 3.8 or higher with `pip`
- `virtualenv` for creating a virtual environment
- A valid Hugging Face API token (see [Hugging Face API documentation](https://huggingface.co/docs/api-inference/index) for details)

## Installation

Clone the repository:

```bash
git clone https://github.com/KuRLiC/bashai.git
```

Navigate to the cloned directory:

```bash
cd bashai
```

Call the script executable:

```bash
bash setup.sh
```

## Configuration

Create a bashai.json configuration file in the current directory with the following content:

```json
{
  "token": "your hugging face api token",
  "model": "selected model name from Hugging Face",
  "parameters": {
  }
}
```

You can you bashai-temaplate.json as a template for your configuration file.

You can find available models on the [Hugging Face Models page](https://huggingface.co/models).

## Usage

Activate the virtual environment:

```bash
. activate.sh
```

From now on, you can use the `./bashai` command to ask questions:

```bash
$ ./bashai "list all files in the current directory"
ls
Do you want to execute this command? (Y/n):
activate.sh  bashai  bashai.json  bashai-template.json  note.txt  other  README.md  requirements.txt  setup.sh
COMMAND EXECUTED SUCCESSFULLY
```
