## Full Market Analysis

Appraisers historically use a very small number of _comparable sales_, known as
_comparables_ or _comps_, used to demonstrate (or sometimes justify) the assessment
of value for a _subject property,_ the real property being appraised. This approach
to selecting comps, often using _only 3 to 5 samples,_ leads to a well-understood
quality degradation known as _selection bias,_ sometimes referred to as
_cherry-picking data_ to get the pre-conceived results.

GandySoft PAIRS _eliminates selection bias_ by using methods that work well with the
larger sets of data that encompass the _entire market_ of comparable sales.
Appraisers can choose to upload all sales records and current listings from their
MLS, typically in CSV format. PAIRS will automatically recognize the fields from
the CSV, normalize the data values, convert disparate fields into discrete _property
features,_ and eliminate unnecessary or unused fields from the analysis.

<div class="pure-g">
<div class="pure-u-1-2">
  <img class="screenshot" src="/images/gandysoft/data-1-upload-instructions.png">
  <figcaption>Upload instructions</figcaption>
</div>
<div class="pure-u-1-2">
  <img class="screenshot" src="/images/gandysoft/data-2-data-browser.png">
  <figcaption>Data browser</figcaption>
</div>
</div>

<img class="screenshot" src="/images/gandysoft/data-3-fields.png">
<figcaption>Fields manager</figcaption>

This provides a broader set of "normal" sales for the market, which greatly
_improves statistical reliability_ of the analysis. A key requirement is that this
set of sales _must be comparable_ to the subject property; non-comparable sales
simply pollute the analysis, so the appraiser must be diligent in selecting the
data set.

Most, if not all of this data originates from the appraiser's MLS system, and an
unfortunate fact of life is that MLS data is notoriously unreliable. The relatively
low quality of the data poses a major challenge to any form of analysis. Each MLS
system uses different, sometimes conflicting field names and data representations;
there is no "one-size-fits-all" approach to MLS data. As part of the upload
process, PAIRS runs this data through more than _600 data normalization processes_
and _field mappings_ to clean it for analysis. It is this process that turns the
raw CSV data into usable information.

PAIRS provides a variety of _dynamic filtering_ mechanisms, some automatic and some
manual. These provide the appraiser the ability to remove (filter out) data that's
unreliable, fundamentally wrong, or truly not comparable with the subject property.
The automatic filtering processes will remove any records in which key information
is missing, such as _Livable Area_ or _Lot Size,_ and this automatic filtering
occurs without any actions required by the appraiser. The manual filtering processes
are discussed in detail on the [Subject Details][1] and [Advanced Modeling][2] pages.

[1]: /gandysoft/subject-details
[2]: /gandysoft/advanced-modeling
