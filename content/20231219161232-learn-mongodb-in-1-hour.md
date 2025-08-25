---
title: Learn MongoDB in 1 Hour
date: 2023-12-19T06:29:55-05:00
---

URL: https://www.youtube.com/watch?v=c2M-rlkkT5o
- *Database* is a set of *collections*
- *Collection* is a set of *Documents*
- *Document*  is a set of *Key-Value pairs* that represent an object


| MongoDb    | TradDB   |
| ---------- | -------- |
| Document   | Row      |
| Collection | Table    |
| Database   | Database | 


# Creating a DB
- `use <dbName>`
# Creating a collection
`db.createCollection()`
# Dropping a database
`db.dropDatabase()`
# Inserting a single document to a collection
`db.<collectionName>.insertOne(<JSON>)`
# Inserting multiple documents to a collection
`db.<collectionName>.insertMany([<JSONs separated by comma>])`
# Querying all documents in a collection
`db.<collection>.find()`

# Data types
- String
- Integer
- Double
- Boolean
- Date
- Null
- Array
- Document

# Sorting documents
`db.<collection>.find().sort({})`
The arg to sort is a document
The keys are keys to sort the documents by and the value belongs to 1 or -1. 1 mean ascending and -1 means descending

# Limiting documents
`db.<collection>.find().limit(n: number)`
n is the number of documents to return. By default the are sorted by`_id`

# Find documents
`db.<collection>.find({query}, {projection})`
query is a document
projection is a document that has keys to boolean values indicating if that key is to be returned as a result

# Updating a single document
`db.<collection>.updateOne({filter}, {update})`
update is a document with keys that are atomic operators such as `$set` and `$unset`

# Set a field if that field doesn't exist
`db.<collection>.updateMany({field:{$exists:false}}, {field: defaultVal})`