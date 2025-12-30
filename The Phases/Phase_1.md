# Phase 1 – Data Engineering Fundamentals

## Overview
This phase builds the **mental foundation** required to become a Data Engineer.  
No tools, no code — only **correct understanding**.  
Everything built later (pipelines, YAML, SQL, Airflow, GCP) depends on this phase.

---

## 1. Who Is a Data Engineer?

A **Data Engineer** is responsible for:
- Moving data from source systems
- Making it reliable, clean, and usable
- Ensuring pipelines run repeatedly without breaking
- Protecting production systems from heavy workloads

A Data Engineer is **not** just:
- A SQL writer
- A data mover
- A tool user

A Data Engineer **designs systems**, not scripts.

---

## 2. What Is Data (Engineering Perspective)

From an engineering point of view, data is:

- Rows + Schema + Meaning
- Data without schema is dangerous
- Data without consistency is unusable

Problems Data Engineers handle:
- Inconsistent types
- Null values
- Duplicate rows
- Schema changes
- Broken upstream systems

---

## 3. What Is a Data Pipeline?

A **data pipeline** is a **repeatable, automated system** that:

1. Extracts data from a source
2. Validates the data
3. Transforms it into a usable form
4. Loads it into a target system
5. Handles failures and reruns safely

Key property:
> If it cannot be run safely multiple times, it is NOT a pipeline.

---

## 4. ETL in Reality (Not Just Theory)

Classic definition:
Extract → Transform → Load