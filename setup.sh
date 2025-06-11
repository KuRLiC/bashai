#!/bin/bash

# read virtual environment name from user input otherwise use default .bashai
VENV_NAME=${1:-.bashai}
# check if the virtual environment already exists
echo "Setting up virtual environment: $VENV_NAME"
if [ -d "$VENV_NAME" ]; then
    echo "Virtual environment '$VENV_NAME' already exists."
    echo "To recreate it, please remove the existing directory first."
    exit 1
fi
# create a virtual environment .bashai
python3 -m venv "$VENV_NAME"
# activate the virtual environment
echo "Activating virtual environment..."
source "$VENV_NAME/bin/activate"
# install the requirements
echo "Installing requirements..."
pip install -r requirements.txt
# create activation script
ACTIVATION_SCRIPT="activate.sh"
echo "Creating activation script at $ACTIVATION_SCRIPT"
echo "#!/bin/bash" > "$ACTIVATION_SCRIPT"
echo "source $VENV_NAME/bin/activate" >> "$ACTIVATION_SCRIPT"
chmod +x "$ACTIVATION_SCRIPT"
# check if the installation was successful
if [ $? -eq 0 ]; then
    echo "Virtual environment setup complete."
    echo "To activate the virtual environment, run: source $VENV_NAME/bin/activate"
else
    echo "Failed to install requirements. Please check the requirements.txt file."
    exit 1
fi
