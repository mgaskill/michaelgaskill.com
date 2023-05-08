## [Kiavi][1] (formerly LendingHome)

Kiavi is the largest Fix & Flip lender in the U.S., with additional products for Rental and Rental Portfolio products. The company has written over [50,000 loans totalling more than $12B][2] as of late 2022. Kiavi is a Series E VC-funded startup that has raised $400M from investors such as Foundation Capital, Ribbit Capital, and First Round Capital.

I held multiple roles at Kiavi, starting as a Staff Software Engineer, and moving into management after a year. I held roles as Engineering Director and as VP of Engineering while in management, but eventually moved to be the company’s only Principal Software Engineer. For 2 years while in the VP of Engineering role, I was also Head of Data Infrastructure, which managed our data pipelines and data warehouse.

## Feature Highlights

<div class="pure-g">
<div class="pure-u-2-3" markdown="1">
* [Automated Borrower Underwriting][3]
* [Property Appraisals][4]
* [Data Modeling][5]
* [Credit Report Tracking][6]
* [Loan Calculator][7]
* [Broker Underwriting][8]
* [Data Eventing Pipeline][9]
* [Funnel Simplification][10]

</div>

<div class="pure-u-1-3 screenshot">
  <img class="screenshot" src="/images/kiavi/main-page.png">
  <figcaption>Kiavi Main Page</figcaption>
</div>
</div>

## Systems

Kiavi has many internal systems, but 6 major in-house developed systems. These system
each have dedicated teams assigned to develop and improve them. I have been responsible
for all of these systems, either as an engineer or a manager at some point throughout my
tenure at Kiavi, however, my primary focus was on the [Lending Platform][22] throughout
the entirety of my time with Kiavi.

### Lending Platform

Kiavi's Lending Platform included a full-scale loan origination system (LOS), the only
custom-built LOS in the real estate investor market. This has provided considerable
leverage to Kiavi to become the market leader in Fix & Flip Bridge Lending, but a
substantial margin.

The lending platform supports multiple loan types:

- Fix & Flip Bridge Loans
- Rental Loans
- Consumer Loans (now discontinued)

Key features of the lending platform include:

- Loan program configuration
- The inbound lead funnel
- Loan terms & Confirm
- Borrower underwriting
- Loan processing workflow
- Appraisal ordering and management
- Loan closing
- Loan document creating and processing
- Loan auditing

The lending platform is managed by the Loan Origination teams, as well as architectural
direction set by the Platform team.

### Servicing Platform

The servicing platform is a multi-faceted system that addresses these functions:

- Loan servicing
- Loan special servicing
- Funding and money transfers
- Warehouse lines
- Treasury
- Investments (now discontinued)

Servicing for the Bridge loans happens entirely on the servicing platform; however
Rental and Consumer loans are serviced by third-party servicers.

The lending platform is managed by the Post-Origination teams, as well as architectural
direction set by the Platform team.

### Operations Console

The internal operations teams for the lending platform and the servicing platform use a
joint application for access to and management of loans throughout their lifecycle,
including managing the borrowers and properties associated.

There are over 440 data models associated with the suite of products, and most of those
data models are managed directly or indirectly through the operations console. This
console also provides mechanisms to troubleshoot issues with a loan, such as why a
borrower or property might become ineligible during the loan processing process, as
additional information becomes available from trusted 3rd-party sources.

The lending platform is managed by both the Loan Origination teams and the
Post-Origination team, as well as architectural direction set by the Platform team.

### Data Pipeline

The data pipeline is a backend system that manages the data flow from all sources into
the data warehouse, including from the production applications and 3rd-party data
sources. The data pipeline uses both ETL and streaming to capture and transform data
into usable forms. Additionally, the data pipeline is used to distribute data from the
data warehouse to systems throughout the company, including Finance, Accounting, and
even the Production lending platform.

The data pipeline uses technology such as [Databricks][32], [Apache Airflow][33], and
[Etleap][34]

The data pipeline is managed by the Data Infrastructure team.

### Data Warehouse

The data warehouse provides a system-of-record for data generated from the Production
applications, as well as data aggregated from other sources. The data warehouse
publishes this data to internal business units within the company, as well as providing
the systems needed to store and access the data; these systems include [Snowflake][30] and [Tableau][31].

### ML Platform

The ML platform provides a way to publish, manage, train, and version the ML models that
the Data Science team creates. The ML platform is primarily based on [Amazon
SageMaker][40] for model management and training.

## Technology Stack

The technology stack for the lending platform, servicing platform, and operations console
are all based on the same general stacks, and are very closely related, sharing a common
codebase.

### Backend

The legacy backend for the Production applications is a monolithic [Ruby on Rails][50]
application using [Postgres][51] / [Amazon RDS][52] and [Redis][53]. Numerous gems are used, including:

- [Devise][54]
- [acts_as_paranoid][55]
- [Resque][56]
- [Rspec][57]
- [FactoryBot][58]
- [Rubocop][59]

... and many, many others.

The new direction for the products is to migrate to a SOA / microservices architecture,
as described here:

- [New Architecture][13]
- [Microservice Definition][14]

### Frontend

The frontend tech stack is in multiple stages of migration. The legacy frontend is
written in [HAML][60] and [jQuery][61], while a newer iteration of some aspects was
built in [React][62] 15 and 16 using REST APIs to the backend.

The modern frontend for customer-facing pages is a single-page app (SPA) built with a
[Micro-frontend][12] approach using [React][62] 18 and [Next.js][63] using [GraphQL][64]
APIs, with automated testing done with [Cypress][65].

### Development Process

### Additional information

For additional non-technical details about the project, see here:

- [Feature Development History][15]
- [Major Challenges][16]

[1]: https://kiavi.com
[2]: https://www.prnewswire.com/news-releases/kiavi-funds-over-50-000-bridge-and-fix-and-flip-loans-to-real-estate-investors-301685747.html
[3]: /kiavi/automated-underwriting
[4]: /kiavi/property-appraisals
[5]: /kiavi/data-modeling
[6]: /kiavi/credit-report-tracking
[7]: /kiavi/loan-calculator
[8]: /kiavi/broker-underwriting
[9]: /kiavi/data-eventing
[10]: /kiavi/funnel-simplification
[12]: /kiavi/micro-frontend
[13]: /kiavi/new-architecture
[14]: /kiavi/microservices
[15]: /kiavi/feature-development-history
[16]: /kiavi/major-challenges
[22]: /kiavi#lending-platform
[30]: https://www.snowflake.com/
[31]: https://www.tableau.com/
[32]: https://www.databricks.com/
[33]: https://airflow.apache.org/
[34]: https://etleap.com/
[40]: https://aws.amazon.com/sagemaker/
[50]: https://rubyonrails.org/
[51]: https://www.postgresql.org/
[52]: https://aws.amazon.com/rds/
[53]: https://redis.io/
[54]: https://github.com/heartcombo/devise
[55]: https://github.com/ActsAsParanoid/acts_as_paranoid
[56]: https://github.com/resque/resque
[57]: https://rspec.info/
[58]: https://github.com/thoughtbot/factory_bot
[59]: https://github.com/rubocop/rubocop
[60]: https://haml.info/
[61]: https://jquery.com/
[62]: https://react.dev/
[63]: https://nextjs.org/
[64]: https://graphql.org/
[65]: https://www.cypress.io/
