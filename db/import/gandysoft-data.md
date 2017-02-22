## Full Market Analysis

Appraisers historically use a very small number of *comparable sales*, known as
*comparables* or *comps*, used to demonstrate (or sometimes justify) the assessment
of value for a *subject property,* the real property being appraised.  This approach
to selecting comps, often using *only 3 to 5 samples,* leads to a well-understood
quality degradation known as *selection bias,* sometimes referred to as
*cherry-picking data* to get the pre-conceived results.

GandySoft PAIRS *eliminates selection bias* by using methods that work well with the
larger sets of data that encompass the *entire market* of comparable sales.
Appraisers can choose to upload all sales records and current listings from their
MLS, typically in CSV format.  PAIRS will automatically recognize the fields from
the CSV, normalize the data values, convert disparate fields into discrete *property
features,* and eliminate unnecessary or unused fields from the analysis.

<div class="pure-g">
<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/data-1-upload-instructions.png">
  <figcaption>Upload instructions</figcaption>
</div>
<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/data-2-data-browser.png">
  <figcaption>Data browser</figcaption>
</div>
<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/data-3-fields.png">
  <figcaption>Fields manager</figcaption>
</div>
</div>

This provides a broader set of "normal" sales for the market, which greatly
*improves statistical reliability* of the analysis.  A key requirement is that this
set of sales *must be comparable* to the subject property; non-comparable sales
simply pollute the analysis, so the appraiser must be diligent in selecting the
data set.

Most, if not all of this data originates from the appraiser's MLS system, and an
unfortunate fact of life is that MLS data is notoriously unreliable.  The relatively
low quality of the data poses a major challenge to any form of analysis.  Each MLS
system uses different, sometimes conflicting field names and data representations;
there is no "one-size-fits-all" approach to MLS data.  As part of the upload
process, PAIRS runs this data through more than *600 data normalization processes*
and *field mappings* to clean it for analysis.  It is this process that turns the
raw CSV data into usable information.

PAIRS provides a variety of *dynamic filtering* mechanisms, some automatic and some
manual.  These provide the appraiser the ability to remove (filter out) data that's
unreliable, fundamentally wrong, or truly not comparable with the subject property.
The automatic filtering processes will remove any records in which key information
is missing, such as *Livable Area* or *Lot Size,* and this automatic filtering
occurs without any actions required by the appraiser.  The manual filtering processes
are discussed in detail on the [Subject Details][1] and [Advanced Modeling][2] pages.


[1]: /gandysoft/subject-details
[2]: /gandysoft/advanced-modeling
