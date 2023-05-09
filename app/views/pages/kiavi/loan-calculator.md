## Loan Calculator

Borrowers had described the difficulty in choosing between all of the options for loan
terms, cash down, and rehab expenses while also understanding any fees or discounts that
might be available. This made it very difficult for them to know the best option for
their specific loan.

To address this, my team built a Loan Calculator to give the borrower the ability to
dynamically model different scenarios based on their eligibility and preferences. The
borrowers were able to quickly and easily determine what their cash out of pocket and
loan payments would be in seconds.

### Implementation Details

The Loan Calculator was written in modern [React][1] using [Hooks][2], and was tested
with [Jest][3]. The design was a responsive UI, intended to be primarily displayed on
mobile phones and tablets, so the overall design was optimized for mobile.

It was well understood that the initial implementation was an experiment, and that there
would be many additional changes if the experiment was successful. With this in mind,
we designed the Loan Calculator to be highly extensible. Another team was working on
building the Rental Loan program at the same time, and we coordinated the overall design
and implementation with them to make it straightforward to support Rental loans with the
Loan Calculator. The experiment was quickly deemed successful, and the expected Rental
changes were made a few weeks later.

### Reception and Results

This was introduced at the beginning of the loan application process, and in conjunction
with the [Funnel Simplification][4]. Borrowers were instantly excited and appreciative,
and this UI improvement became instrumental in improving the lead conversion rate for
both professional and novice borrowers. In addition, it directly improved the repeat
rate for borrowers that applied for subsequent loans.

[1]: https://react.dev/
[2]: https://react.dev/reference/react
[3]: https://jestjs.io/
[4]: /kiavi/funnel-simplification
