## Data Modeling

I audited and redesigned the data schema of 440+ tables to take into account learnings
of the previous 8 years. This required extensive business domain knowledge, a vision
for the future of the products, and a deep understanding of the existing system and its
design and data needs. In addition, the redesigned data model was to inform and be
informed by the data warehouse schema; the data warehouse was the source of data for
regulatory reporting, investor reporting, business reporting, and financial reporting,
as well as becoming the long-term system of record for all transactional data produced
by Kiavi's systems.

During this effort, I re-normalized many of the production tables, split tables that had
multiple purposes, and ensured that the data models had the correct multiplicity for
associations / relations. This redesign provided the mappings needed to translate from
the existing production schema to the new schema used in the data warehouse, as well as
the [data eventing][1] schemas, the internal client APIs, and the service-to-service
APIs.

### Domain Breakdown

I broke the entire schema into multiple domains, each of which captured multiple models.
These domains were grouped into 3 categories: origination data models, post-origination
data models, and system data models.

The origination data models were 168 models across these domains:

- Address
- Borrower
- Loan
- Project
- Property
- Shared
- User

The post-origination data models were 122 models across these domains:

- Bank Account
- Funding
- Investor
- Money Movement
- Servicing
- Special Servicing

The system data models were 152 models across these domains:

- Lead
- Obsolete
- Other
- Pricing
- Vendor
- System

### Improved Quality

This remodeling effort resulted in identifying over 160 tables that had been unused in
at least 2 years, and over 3,000 of the 7,500 data fields had either never been used
or were no longer in use. These tables and fields became a future opportunity for both
code cleanup and schema reduction, both of which were considered high priority for the
teams.

I was also able to observe various quality issues across the schema, which I addressed
as I worked:

- nearly 80 necessary indexes were missing; many of these provided very noticeable performance improvements
- around one fourth of the tables had missing created_at and updated_at timestamps
- around 120 columns had the wrong data type for their purpose, such as datetime fields stored as strings, timestamps stored as dates, money values stored as strings, and simple strings stored as text
- over 300 json data columns were incorrectly defined, which caused subtle performance issues
- dozens of columns had different virtual values or data types as a result of overriding the model's read attribute. This meant that the application was often using values different than were stored in the database column
- most columns were defined without limits or nullability, and I addressed those in the updated schema where possible; some application changes were simply too fundamental to make to address some of the these issues

### Educational Materials

During this process, I created and presented educational course materials to up-level
the existing knowledge-base for engineers, product managers, and business users, as well
as to help properly train new staff as they onboarded.

[1]: /kiavi/data-eventing
