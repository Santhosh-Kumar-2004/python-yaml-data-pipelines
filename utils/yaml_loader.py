import yaml
from yaml import safe_load

def load_yaml(path: str) -> dict:
    with open(path, "r") as f:
        print("The YAML file loaded")
        return safe_load(f)