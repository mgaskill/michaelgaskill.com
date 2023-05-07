## New Architecture Stack

As part of the plan to transition away from Ruby on Rails as the core tech stack, I
formed a new team, starting with 2 engineers. The team's directive was to determine the
best future tech stack for our line of products and to implement a new approach to
[automated borrower underwriting][1] as a functional proof point. This was intended to
provide a migration path from our existing Ruby on Rails applications moving to a SOA
microservices environment.

### Languages, Databases, and APIs

We discussed and evaluated multiple implementation languages (including alternative uses
of Ruby), databases and other data storage, and API technology. We built example
solutions in order to evaluate how well each of the options met our needs and how easy
it would be for our engineers to work with.

### Event-Driven and Event-Sourcing

We experimented with multiple approaches to event-based systems, including event-driven
and event-sourced solutions using simple database tables, notification queues, kafka
streams, and others. We had originally chosen a 3rd-party vendor to provide an
event-based infrastructure, but chose to implement our own when their timeline changed
too many times.

### Decisions

We settled on using Kotlin for event-sourced services, using gRPC for service-to-service
communications, and publishing GraphQL to the federated graph. We chose per-service
Postgres databases for structured storage and event-sourcing, and S3 for unstructured /
file storage. Working with the DevOps team, we chose Kubernetes for deployment
containerization.
