import yaml

def load_yaml(path: str) -> dict:
    with open(path, "r") as f:
        print("The YAML file loaded")