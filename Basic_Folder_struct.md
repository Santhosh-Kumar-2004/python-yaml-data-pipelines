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
