## Microservices Definition

I co-authored the SOA / microservices architecture, breaking the 3 monoliths into
approximately 40 services. Among the primary services were the User Server, the Address
Server (to manage property addresses), the Borrower Service (to manage borrower
preferences and subsequent loans), the Valuation Service (to handle the different forms
of valuation and the appraisal process), and one each for the many third-party vendor
integrations. There were many additional services that were defined to perform specific
responsibilities, as well.

### Service API

Each service was assigned a private data store and communicated with other services via gRPC. For event-based activity, a service could publish or subscribe to an event stream via a guaranteed-once notification using Amazon SQS / SNS.

### Public Client API

The public, customer-facing client was designed to interact with some services using
federated GraphQL via Apollo Federation, and directly with others using non-federated
queries. Clients should be largely decoupled from awareness of which service provides
which data in a graph-based API.

Additionally, some microservices are considered sensitive, and should therefore not be directly exposed to the public. In those cases, proxy services were defined to support managed communication between the public client and the service, allowing for additional security measures, such as query filtering and detection of patterns of mis-use.

### Private Client API

The private, operations-facing client was vastly more complex and the intent was to
primarily use gRPC APIs to interact, allowing them to expose much more detail and
potentially sensitive information in a safe and secure manner. This would allow the
operations client to use some of the service-to-service APIs to effect, reducing the
overall API spread and system complexity.
