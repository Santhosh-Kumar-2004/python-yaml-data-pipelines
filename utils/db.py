from sqlalchemy import create_engine

def get_engine(user, password, host, port, db):
    url = f"postgresql+psycopg2://{user}:{password}@{host}:{port}/{db}"
    return create_engine(url)