## Automated Borrower Underwriting

I volunteered to lead a project to make the acquisition of novice real estate investor
borrowers profitable for the company. Novice borrowers represented a significantly
greater risk of failure at the time, consumed vast amounts of operations resources, and
were expensive to aquire in the first place. Ultimately, this resulted in very low
margins or losses on most loans to novice borrowers. The company was looking to
determine whether they should embrace or reject the novice borrower opportunities.
Working with a cross-functional team that included Marketing, Risk, and Product, we came
up with a solution that would allow us to automatically underwrite the best of the
novice borrowers with no operational overhead, whatsoever.

### Implementation Details

The core verification of the borrower during the automated underwite was implemented
using an [Experian Credit Soft Inquiry][1], which provided key information, such as:

- Identity verification
- FICO score
- Credit history
- Current open accounts (tradelines)
- Bankruptcies
- Recent credit activity

The Risk team created a set of rules and thresholds suitable for determining
risk-worthiness, and an approved novice borrower would be able to use the approval
for up to 3 months to apply for one or more loans.

Failure cases were handled in different ways, depending on the situation. These were
the established cases:

- Ambiguous borrower - request SSN and try again
- Unable to identify borrower - decline
- Locked credit report - decline
- Not enough credit history - decline
- Too many open accounts - decline
- Non-discharged bankruptcies - decline
- FICO score too low - decline

FICO scores were used to determine the loan terms, where better scores resulted in
better loan terms, lower cash required, and better interest rates. The ranges of scores
that were determined terms was configurable as part of the larger configuration system.

### Long-term Technical Impact

The approach to storing credit reports and recording the vendor request/response was
significantly different than the existing approaches, as this required decoupling from a
given loan. This resulted in a major deviation away from the existing approach, but
also provided a roadmap for future work that needed to be decoupled from a specific loan,
setting a clear example and inspiring key features of the future architecture.

This also significantly influenced the need to consolidate understanding of credit
reports and traceability of credit checks; that project was kicked off a few months later
with the [credit report tracking][2] project.

### Performance During the Pandemic

This project took 3 months to design and implement, and resulted in novice borrowers
growing from 6% of total revenue to 24% within the first year. During the height of the
pandemic, novice borrowers became 56% of all revenue, and kept the company afloat when
most other competitors went out of business or paused operations. Because of this
project, Kiavi went from having a 2.5% marketshare immediately before the pandemic to an
8% marketshare by Sept 2020; the next closest competitor had 1.1% marketshare.

### Business Driver for New Architecture

Due to the exceptional performance that we observed from the automated borrower
underwrite for novice borrowers, the company moved forward with plans to provide similar
features for professional borrowers and for underwriting properties for all loans. This
was one of the driving business forces behind moving to the
[new architecture][3].

[1]: https://www.experian.com/blogs/ask-experian/what-is-a-soft-inquiry/
[2]: /kiavi/credit-report-tracking
[3]: /kiavi/new-architecture
