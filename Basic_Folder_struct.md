👉 YAML decides WHAT happens
👉 Python decides HOW it happens

python-yaml-data-pipelines/
│
├── pipelines/           # YAML pipeline definitions
│   ├── users_pipeline.yaml
│   └── orders_pipeline.yaml
│
├── src/
│   ├── main.py          # Entry point
│   ├── pipeline_runner.py
│   ├── loaders/
│   ├── extractors/
│   ├── transformers/
│   ├── validators/
│   └── utils/
│
├── sql/
│   ├── transformations.sql
│
├── configs/
│   ├── db_config.yaml
│
├── logs/
│
├── tests/
│
├── requirements.txt
├── .gitignore
└── README.md

------------------------------------------------------------------------------------------------------

# UPDATED FOLDER STRUCTURE
python-yaml-data-pipelines/
│
├── pipelines/                     # YAML = pipeline definitions
│   ├── users_pipeline.yaml
│   ├── orders_pipeline.yaml
│
├── configs/                       # Global configs
│   ├── db.yaml                    # DB connections
│   ├── logging.yaml
│
├── src/
│   ├── main.py                    # Entry point
│   ├── pipeline_runner.py         # Orchestrates pipelines
│
│   ├── extract/                   # Data extraction
│   │   ├── postgres_extractor.py
│   │   └── api_extractor.py
│
│   ├── transform/
│   │   ├── sql/                   # SQL-based transformations
│   │   │   └── users_transform.sql
│   │   │
│   │   ├── pandas/                # Pandas-based transformations
│   │   │   └── users_transform.py
│   │   │
│   │   └── python/                # Pure Python transformations
│   │       └── users_transform.py
│
│   ├── load/                      # Load to target DB
│   │   └── postgres_loader.py
│
│   ├── validate/                  # Data quality checks
│   │   └── basic_validations.py
│
│   ├── utils/
│   │   ├── db.py
│   │   ├── yaml_loader.py
│   │   ├── logger.py
│   │   └── exceptions.py
│
├── sql/                           # Raw SQL files
│   ├── source_schema.sql
│   ├── target_schema.sql
│
├── logs/
│   └── pipeline.log
│
├── tests/
│
├── requirements.txt
├── .gitignore
└── README.md

