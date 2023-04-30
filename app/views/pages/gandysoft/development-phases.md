## Feature Development History

The overall development of the PAIRS system occurred over the course of almost
exactly 2 years.  During this time, 102 MLSes were mapped during this time, of a
total market of approximately 260 MLS systems; each MLS encapsulates a complete
localized market of potential users, typically for a single metropolitan or
regional area.  From a software perspective, PAIRS is one of the most complete
appraisal market and adjustment analytics solutions on the market.

### Phase 1: Initial Development (7 Months)

This phase encompassed user management and the appraisal workflow process,
developing out the [Advanced Modeling][8] system and [Reporting][10].  Due to
fundamental issues with the original iterative paired sales approach, the
proprietary matched pairs algorithm took more than 5 months to perfect the
calculations and to optimize the algorithm for unobtrusive use in *user time*.

### Phase 2: Expanding MLS Mappings (6 Months)

This phase of development directly addressed expansion beyond the Las Vegas MLS,
requiring significant enhancements to accommodate the enormous variation in MLS
data structure and content.  This phase included fairly complete mappings of the
first wave of 27 MLS systems, based on customer interest.  The initial major
approaches to data normalization were introduced here to begin addressing
fundamental recurring issues with MLS data.  Extensive automated testing for MLS
mappings was introduced during this period, providing a necessary stabilization for
common MLS mappings.

### Phase 3: Market Analysis (4 Months)

Development phase 3 began based on observations that *customer retention was very
low.*  Various reasons were identified, and most tractable was that *statistical
modeling* was beyond the skillset of the majority of appraisers that had tried the
software; a far simpler solution was required.  Additionally, a perception that the
lack of comprehensive *market rate analysis, Form 1004MC, and market graphs* were
possibly factors, and that feature parity with other products would improve
customer retention.

These key feature enhancements were functionally separate, so the phase was broken
into two major parts.  The *market analysis* features were chosen to be developed
first, including extended data normalization processes needed to support the market
analysis.  This phase introduced the [Subject Details][3], [Market Analysis][4],
and [Form 1004MC][5] workflow steps, and required major enhancements to the[Advanced
Modeling][8] and [Reporting][10] features, as well as adding 41 more MLS mappings
and streamlining the MLS mapping process.

### Phase 4: Basic Statistics (4 Months)

The fourth phase added the [Basic Statistics][7] functionality as a far simpler
alternative to [Advanced Modeling][8] for [Adjustment Analysis][6].  This also
required large-scale changes to [Reconciliation][9] and [Reporting][10] to account
for the new adjustment estimate functionality.  This phase introduced 15 additional
MLS mappings, and became the basis for the new training materials and YouTube
videos.

### Phase 5: Proper Status Reporting (3 Months)

The fifth phase began to address the critical lack of support for *Status*
throughout the analysis.  Whether *Status* should be used in the product had been
a recurring discussion, although the appraisal subject expert repeatedly asserted
that *Status* was irrelevant and that PAIRS was superior because it didn't depend on
status information.  However, the lack of support for *Status* became a hot-button
topic for the PAIRS users, as they were not able to produce the market analyses that
they needed.  Consequently, when the realization took hold that the prior
assumptions about the (lack of) importance of *Status* were unfounded, this became a
critical next task.

As proper *Status* handling is truly fundamental to many aspects of appraisal
analytics, this required significant work updating *all* existing MLS mappings.
The many varied uses of *Status*, virtually all date fields, and other associated
*Status* data required mapping.  Significant improvements to the data normalization
processes were also needed for *Status date* and related information, as well as
major enhancements to the [Subject Details][3], [Market Analysis][4], [Basic
Statistics][7], [Advanced Modeling][8], [Reconciliation][9], and [Reporting][10].
During this phase, 19 additional MLS mappings were introduced, including the first
international MLS support for Western Canada.
