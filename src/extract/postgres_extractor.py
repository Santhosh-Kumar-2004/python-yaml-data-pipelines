# Ths file is only used for the Python - Postgres Extraction (Just etsting purpose)
import pandas as pd
from utils.db import get_engine
from utils.yaml_loader import load_yaml
from utils.logger import get_logger

logger = get_logger(__name__)

def extract_users():
    # Load DB config
    db_config = load_yaml("configs/db.yaml")["source_db"]

    # Create engine
    engine = get_engine(
        user=db_config["user"],
        password=db_config["password"],
        host=db_config["host"],
        port=db_config["port"],
        db=db_config["database"],
    )
    
    query = "SELECT * FROM raw.users"
    
    logger.info("Starting the Extracting of the users from the Raw schema in Source db...")
    
    df = pd.read_sql(query, engine)

    logger.info(f"Extracted {len(df)} rows")

    return df

if __name__ == "__main__":
    df = extract_users()
    print(df)