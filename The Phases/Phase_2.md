\# Phase 2 – YAML (Deep & Practical)

\## Overview

This phase focuses on \*\*mastering YAML\*\*, which acts as the \*\*control layer\*\* of modern data pipelines.

In real-world data engineering:

\- \*\*YAML defines WHAT happens\*\*

\- \*\*Python defines HOW it happens\*\*

This separation enables scalable, maintainable, and production-ready pipelines.

\---

\## 1. What is YAML? (Data Engineering Perspective)

YAML (Yet Another Markup Language) is a \*\*human-readable configuration language\*\*.

For Data Engineers, YAML is used to:

\- Define pipeline behavior

\- Configure data sources and targets

\- Control transformations

\- Separate configuration from code

YAML is \*\*not programming logic\*\* — it is \*\*pipeline description\*\*.

\---

\## 2. YAML vs JSON vs Python Dictionaries

\### Python Dictionary

\`\`\`python

pipeline = {

"name": "users\_pipeline",

"source": "users"

}

Requires code changes

Developer-dependent

Not configuration-friendly

JSON

json

Copy code

{

"pipeline": {

"name": "users\_pipeline",

"source": "users"

}

}

Strict syntax

No comments

Verbose

YAML (Preferred)

yaml

Copy code

pipeline:

name: users\_pipeline

source: users

YAML is:

Cleaner

Comment-friendly

Industry standard for pipeline configs

3\. YAML Syntax Rules (Critical)

Rule 1: Indentation Matters

YAML uses spaces only

Tabs are not allowed

Incorrect indentation breaks configs

Correct:

yaml

Copy code

pipeline:

name: users\_pipeline

Incorrect:

yaml

Copy code

pipeline:

name: users\_pipeline

4\. YAML Data Types

Strings

yaml

Copy code

table\_name: users

Numbers

yaml

Copy code

batch\_size: 1000

Booleans

yaml

Copy code

enabled: true

Null

yaml

Copy code

description: null

5\. Lists in YAML

Lists represent ordered sequences.

yaml

Copy code

transformations:

\- remove\_nulls

\- normalize\_email

\- deduplicate\_users

Equivalent Python:

python

Copy code

\["remove\_nulls", "normalize\_email", "deduplicate\_users"\]

Lists are heavily used for:

Transformation steps

Multiple pipelines

Task ordering

6\. Maps (Dictionaries) in YAML

Maps store key–value pairs.

yaml

Copy code

source:

type: postgres

database: source\_db

table: users

Equivalent Python:

python

Copy code

{

"type": "postgres",

"database": "source\_db",

"table": "users"

}

7\. Nesting in YAML

Nesting allows complex pipeline definitions.

yaml

Copy code

pipeline:

name: users\_pipeline

source:

type: postgres

table: users

target:

type: postgres

table: analytics\_users

Nesting directly maps to:

Pipeline stages

Execution logic

Modular design

8\. Multi-Pipeline Configuration

Real-world systems run multiple pipelines.

yaml

Copy code

pipelines:

\- name: users\_pipeline

source\_table: users

target\_table: analytics\_users

\- name: orders\_pipeline

source\_table: orders

target\_table: analytics\_orders

Benefits:

Scalable configuration

Loop-based execution in Python

Centralized pipeline management

9\. Environment-Based Configuration

Same pipeline, different environments.

yaml

Copy code

env: dev

databases:

dev:

host: localhost

database: source\_db

prod:

host: prod-db.company.com

database: source\_db

Why this matters:

No code changes between environments

Safer deployments

Production-grade design

10\. YAML Best Practices

✅ Use lowercase keys

✅ Use meaningful names

✅ Comment configs clearly

✅ Keep YAML declarative

❌ Avoid complex logic

❌ Avoid deeply nested unreadable configs

Example:

yaml

Copy code

\# Users pipeline configuration

pipeline\_name: users\_pipeline

11\. Common YAML Mistakes

Using tabs instead of spaces

Wrong indentation

Forgetting - for list items

Mixing logic with configuration

Overcomplicating YAML files

YAML errors are structure errors, not runtime errors — so be careful.

12\. Reading YAML in Python

YAML is read into Python as dictionaries using pyyaml.

Example YAML

yaml

Copy code

pipeline\_name: users\_pipeline

batch\_size: 1000

Python Code

python

Copy code

import yaml

with open("pipeline.yaml", "r") as f:

config = yaml.safe\_load(f)

print(config\["pipeline\_name"\])

print(config\["batch\_size"\])

This bridge enables config-driven pipelines.

13\. How YAML Controls Data Pipelines

Execution flow:

pgsql

Copy code

YAML file

↓

Python loads configuration

↓

Pipeline runner reads steps

↓

Extract → Transform → Load

YAML defines behavior.

Python executes behavior.

Phase 2 Completion Outcome

After Phase 2, you can:

Write clean, valid YAML

Design multi-pipeline configurations

Handle environment-based configs

Read YAML safely in Python

Use YAML as a pipeline controller

This phase enables config-first data engineering.

Next Phase

Phase 3 – Python Project Foundations

Focus:

Project structure

Logging

Config loaders

Entry points

Pipeline runner setup

yaml

Copy code

\---

\## ✅ You’re Ready for Phase 3

Phase 2 is \*\*successfully completed\*\*.

Next, we \*\*leave theory and start building real files\*\*:

\- \`main.py\`

\- config loaders

\- logging

\- pipeline runner skeleton

When you’re ready, just say:

\### 👉 \*\*“Start Phase 3”\*\* 🚀