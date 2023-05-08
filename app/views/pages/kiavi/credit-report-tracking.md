## Credit Report Tracking

For many years, credit scores were ephemeral, even though they were used for key
underwriting decisions. A credit score could be overwritten by a vendor request, by an
automated process, or from the Production Rails console. Many times, it was impossible
to determine the origin of a credit score, as the score was not associated with a credit
pull in any way; sometimes there was no credit pull, and the credit score simply popped
into existence.

From nearly any perspective, this was an awful situation. The Risk team couldn't
reliably determine the actual credit risk of a given borrower. The Data team couldn't
accurately identify the credit score on a loan in order to produce analysis. The
Warehouse Line team couldn't report the credit score accurately to investors that
purchased loans. It was a bad situation that had just perpetuated for nearly 8 years.

Even worse, due to a lot of poor data modeling decisions, credit scores were not
associated with borrowers (people), but with loans. And to make matters even worse than
that, credit scores for co-borrowers were tracked outside the system in spreadsheets,
which meant that there was no way to even know what they were, especially if an employee
left and hadn't kept track clearly enough to discover it after the fact.

### Fixing Credit Reports

My team scrapped the idea that there was a single "credit score", and adopted credit
report management, which had originated with the [automated borrower underwrite][1]
project.

Key concepts that were introduced with this project were:

- Credit reports belong to people, not loans
- Loans track the current credit reports for all borrowers on the loan
- Loans that are underwritten are "frozen", and the credit reports at that time are preserved
- Credit reports are pulled by automation, only; no user overrides of a credit score is possible
- The newest credit report becomes "live" instantly for all active loans
- Keeping a history of credit pulls can provide analytical value for Risk and Data teams

This meant tracking every credit report as a separate item, and rolling forward when a
new credit report was available. Overall, the implementation was straightforward, with
a new credit pull record for each credit pull, and those associated directly with the
borrower. The credit score simply became a lookup value to the latest credit report,
with no ability to modify any aspect of it.

### Reception and Results

For most situations, operations personnel didn't notice a change in process for credit
reports, other than the lack of ability to modify the credit score value directly.
However, they did find that having the full credit report history was invaluable when
speaking with customers. With some light training, ops staff was able to use the new
system almost immediately; many didn't require training at all, as the new solution
was obvious and straightforward.

There were some credit fraud situations uncovered, perpetrated both by customers and by
staff. It seems that some customers would submit their own credit report, claiming that
they'd already paid for the credit pull. After using the new system, we found major
discrepancies between what they had reported and what we received directly from Experian.
Likewise, we identified a very small number of situations in which internal staff had
tweaked a customer's credit score into the approval range in order to improve their own
statistics. In both cases, these were isolated situations that were dealt with
appropriately.

### Exceptions

Sometimes, something goes wrong with a credit report; not often, but also not never.
A few of the situations that we encountered were typically related to re-pulling credit:

- When the customer's credit pull expires, the new credit pull indicates that their credit is frozen, requiring manual intervention
- Customer that had been approved requests re-running for a better score, but is declined after the new credit report
- Customer gets a lower credit score that's still approved after re-running credit, but their loan terms are no longer favorable

In some of these cases, using the prior credit report can address the problem. Those
cases were handled with overrides managed exclusively by the Risk team through a formal
exception process, so there was still a traceable system in place.

### Long-term Technical Impact

This project enabled multiple additional crucial projects:

- Data team produced an ML model to assess borrower suitability
- Risk team was able to analyze borrower credit for a 360 risk assessment
- Working with Experian to provide retroactive credit reports, we were able to understand the liability exposure for the loans that were underwritten based on untraceable FICO scores
- We were able to identify some fraud patterns that informed additional fraud detection methods
- This work made it possible to take on the core aspects of the [new architecture][2], particularly the full automated borrower underwriting solution
- This became the pattern-of-choice for all vendor requests that influenced underwriting; this became known as Data Provenance, which is traceability to the origin of the data being used

[1]: /kiavi/automated-underwriting
[2]: /kiavi/new-architecture
