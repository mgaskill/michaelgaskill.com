## Data Eventing Pipeline

I designed and led the Data Eventing Pipeline project to send incremental changes from
the production system to the data warehouse. This was originally identified as a
necessary architectural change to separate the functioning of the Data Warehouse from
the data architecture of the production applications, and preparation for moving to a
much more decoupled services architecture.

I led a team of 3 engineers and implemented the JSON schema definitions and pipeline to
communicate changes for all 420+ tables (over 8,000 data elements) and designed the data
change detection and collection mechanism.

### Schema Improvements

As part of the data eventing effort, the team implemented a series of improvements that
included:

- Using UUIDs instead sequential IDs in order to ensure that identifiers were not ephemeral
- Adding soft-delete capabilities to all models, to more easily track deletions
- Ensuring that timestamps existed on each model

Backfilling data in new UUID and timestamp columns was done asynchronously, in order to
provide usable values for all environments without blocking or slowing production
deployments.

### Data Corrections

Through the course of working through eventing and validating the data, it became clear that hundreds of columns (around 15% of all columns) had a data issue of some kind. I had to address the data issues as they came up, sometimes one at a time and sometimes as categories of fixes. These are just some of the data issues found:

- garbage data from production testing, demos, non-serious customers, and hackers
- enum string fields with non-enum values
- enum string fields with multiple variations of the same logical enum value
- empty strings instead of null values
- arrays or JSON values stored as strings
- ActiveRecord model method overrides that produced different dynamic values or types
- ActiveRecord default values not written to the column on record creation
- Timestamps not populated in some situations (e.g. record dup, bulk insert)
- Too-clever custom record duplication that failed to duplicate necessary values

Each of these situations 

### Code Generators

I implemented a series of code generators to generate the translations from the backend
applications to the event stream. The code generators operated from a common definition
of the abstracted data model (the architectural model) using a technique called
Model-Driven Architecture. Using this approach, certain aspects of the application are
exclusively code-generated, and able to be re-generated when the architecture model
changes.

Specific code generators that I implemented:

- ActiveRecord data mapping to translate ActiveRecord model instances to architecture model instances
- versioned JSON schema files to capture incremental data changes related to a given architecure model
- versioned JSON schema files to define the data warehouse "realized schema", a stream projection composed of data change events streamed from the production applications
- gRPC interface definitions for service-to-service APIs
- Kotlin gRPC implementation binding for a service
- GraphQL schemas for public client API

The code generators did a lot of heavy lifting and cut staffing needs of the project by
over 80%.

### Mapping Domain Models

As part of migrating the new data model, the data eventing project included a seamless
mechanism for translating data changes from the existing data model to the schema for the new data model. This allowed a any virtual attribute (column or method) to be represented as a different name or data type on the same table or a translated table.

### Capturing Calculations

An interesting aspect to this work that required a custom solution was that there were
multiple application-specific calculations that needed to be communicated with the data
changes, but were not actually persisted anywhere. As the company was required to
provide numerous regulatory reports and real estate investor reports, this information
was crucial to providing these accurately. This necessitated an in-transaction data
collection solution. We had already attempted to use traditional ETL and passive
log-mining approaches that were both brittle and failed to capture the required
calculations.

### Support for Machine Learning

As a very positive outcome of this effort, the ability to define the data warehouse
independently of the applications allowed the Data Science teams to reliably produce
numerous new ML models to help drive additional business insights for the company.
