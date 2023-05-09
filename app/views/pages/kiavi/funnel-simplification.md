## Funnel Simplification

In order to improve lead conversion, my team re-thought and simplified the customer
funnel. The flow at that time was 42 questions long and was referred to as "the short
form"; the previous "long form" was the entire [Form 1003][1], which is what lenders
ultimately need completed for a loan application.

The lead conversion rate of the "short form" was about 1.4% from the top of funnel. In
order to understand which changes might be useful, we explored dropoff patterns at each
step of the flow and experimented with options. We collaborated with Risk to determine
the impact of these changes, and aligned on a minimal set of funnel steps. Ultimately,
we reduced the funnel to a mere 11 steps.

### Rewriting the Flow Architecture

One significant change that needed to be made was to rewrite the existing legacy
[React][3] funnel. The existing funnel was about 30,000 lines of very tightly coupled
[Redux][3]-heavy monolithic React code, that included code for many legacy features that
hadn't been used in years. It had been accumulating tech debt and was still showing its
2016-era design. In addition to being difficult to work with, it was impossible to unit
test, so all testing had to be done manually.

The team designed a decoupled modern [React][3]-based step-builder with a simple
registry that allowed steps to be defined and fully unit tested with [Jest][3] and
[Enzyme][4]. This reduced the time needed to implement funnel changes down from weeks to
hours. Once the new flow architecture was implemented, less than a week was spent
building and unit testing the 11 new funnel steps.

### Additional Quality Improvements

The funnel code was maintained by engineers on multiple teams, and these engineers
typically ran one or more UI experiments at a time. Historically, it was rare for
engineers to clean up when they made changes to the funnel; discontinued steps and
experiments were just left in the code and made inert. After the changes to the flow
architecture, my team added quality checks to fail builds when it identified disused
funnel steps or experiments. This helped teach the other frontend engineers about
proper code maintenance and reduced ongoing tech debt at the same time.

### Reception and Results

Borrower response to the simplified funnel was incredible from the initial release. Many
wrote in or talked with their account managers to rave about the simplified process and
how much it improved their ability to work.

The ease of use of the simplified funnel increased Pro borrower conversions to over 3%
from the top of funnel. We combined this funnel simplification with the [automated
borrower underwrite][2] project, and this resulted in an overall conversion of novice
borrowers of nearly 4%, or 3 times the original conversion rate. As a bonus, the
borrowers were underwritten in the process, making them far less likely to drop out
during loan processing.

[1]: https://singlefamily.fanniemae.com/media/7896/display
[2]: /kiavi/automated-underwriting
[3]: https://react.dev/
[4]: https://jestjs.io/
[5]: https://github.com/enzymejs/enzyme
