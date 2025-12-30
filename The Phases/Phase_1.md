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


Real-world pipeline:
    Extract
    ↓
    Validate
    ↓
    Transform
    ↓
    Validate again
    ↓
    Load
    ↓
    Verify


Validation is mandatory in production pipelines.

---

## 5. Source Database vs Target Database

### Source Database
- Used by applications
- Optimized for transactions (OLTP)
- Data is raw and messy
- Schema changes frequently
- Heavy queries can break apps

### Target Database (Analytics DB / Warehouse)
- Used by analysts, dashboards, ML
- Clean and consistent schema
- Optimized for reads and aggregations
- Safe for heavy queries

This is why we **always separate** source and target systems.

---

## 6. Why Move Data Between Systems?

### Question: “Why not just use PK and FK in the source DB?”

Primary Keys and Foreign Keys:
- Ensure relational integrity
- Do NOT clean data
- Do NOT optimize for analytics
- Do NOT handle history, deduplication, or aggregation

Reasons for moving data:
- Performance isolation
- Schema standardization
- Historical tracking
- Business-friendly models
- Security separation
- Data quality enforcement

---

## 7. What Is “Usable Form” of Data?

Usable form means data that is:

- Clean (no invalid values)
- Consistent (same data types everywhere)
- Deduplicated
- Business-ready
- Easy to query

Examples of usable forms:
- Star schema
- Flattened tables
- Aggregated metrics
- Partitioned analytics tables

Raw application data is **not usable** directly for analytics.

---

## 8. Batch Pipelines vs Streaming Pipelines

### Batch Pipelines
- Run on schedules (hourly, daily)
- Easier to debug
- Handle large volumes
- Used in most companies

### Streaming Pipelines
- Near real-time
- Complex architecture
- Require Kafka / PubSub
- Used only when necessary

This learning path focuses on **batch pipelines first**.

---

## 9. Why YAML Is Used in Data Pipelines

YAML allows pipelines to be:
- Config-driven
- Reusable
- Flexible
- Easier to maintain

Instead of hardcoding logic in Python, YAML defines:
- Data sources
- Transformations
- Targets
- Execution rules

Python becomes the **engine**, YAML becomes the **controller**.

---

## 10. What Is Apache Airflow? (Brief Intro)

Apache Airflow is:
- A workflow orchestration tool
- Used to schedule and monitor pipelines
- DAG-based (Directed Acyclic Graphs)

Airflow does NOT:
- Move data by itself
- Replace Python logic

Airflow DOES:
- Schedule pipelines
- Handle retries
- Track failures
- Visualize workflows

In this learning path:
- We build pipelines first
- Then Airflow will orchestrate them later

---

## 11. Core Data Engineer Mindset

Always ask:
1. Where is the data coming from?
2. What shape is it in?
3. What shape do we need?
4. What can go wrong?
5. How do we rerun safely?

If you think this way, you are thinking like a Data Engineer.

---

## Phase 1 Completion Outcome

After Phase 1, you should be able to:
- Explain what a data pipeline is
- Justify why data is moved between systems
- Explain why source data is not analytics-ready
- Understand where YAML, Python, SQL, and Airflow fit
- Think in systems, not scripts

Phase 1 builds the **foundation** for everything ahead.
