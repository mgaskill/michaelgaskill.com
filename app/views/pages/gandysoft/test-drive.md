## PAIRS Test Drive

Following these simple steps, you can see how PAIRS works, and what's involved in
completing an appraisal analysis.  This process demonstrates *Basic Statistics* as
the method to produce appraisal adjustments, as the *Advanced Modeling* method
requires significantly more effort and understanding of multiple concepts to
demonstrate fully.

For video examples of all methods contained in this test drive, as well as complete
coverage of the *Advanced Modeling* method, please see the [GandySoft YouTube
Channel][2].

### Step 1: Create a Free Account and Login

If you do not yet have a GandySoft PAIRS account, you can get a *free trial
account.*  Simply go to [gandysoft.com][1] and click on the *Sign Up* button, as
shown on *screenshot #1* below.  Fill in the fields on the registration page (see
*screenshot #2* below) and click the *Sign Up* button.

Once you've successfully registered, a *verification email* will be sent to the
email address that you used to register.  Open this email and click on the link
provided to *confirm your account.*

<div class="pure-g">
<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/test-drive-01-main-page.png">
  <figcaption>1: Main Page</figcaption>
</div>

<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/test-drive-02-signup.png">
  <figcaption>2: Signup Page</figcaption>
</div>

<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/test-drive-03-main-page.png">
  <figcaption>3: Main Page</figcaption>
</div>
</div>

Go to the main page at [gandysoft.com][1], and then login using the credentials that
you provided during registration.  The *Login* link is located at the top-right
of the screen.

After login, you will be directed back to the [main page][1], with additional
options available, as shown in *screenshot #3* above.

### Step 2: Create the Analysis

<div class="pure-g">
<div class="pure-u-2-3" markdown="1">
From the [main page][1], click the *Create a New PAIRS Analysis* link
(bottom/right of *screenshot #3* above).

Fill in the details of the analysis, as shown in *screenshot #4* on the right.
Set the *Title* field to *Test Drive*, leave the *Property Type* field set to
*Single Family,* choose *2017-01-18* for the *Effective Date*, leave the *License*
field blank, and click the *Save* button.

Note that choosing a different date for the *Effective Date* will cause minor
differences in the analysis results, as this date is used to calculate time-based
adjustments that are applied throughout the analysis.

Once the analysis is created, the *Analysis Overview* will be shown, as seen in
*screenshot #5* to the right.  The <span style="color: forestgreen">green
checkmark</span> indicates that the step has been completed, and the <span
style="color: #215f8b">blue buttons</span> show which steps are available in the
workflow, based on current progress.  The first analysis step (*Details*) has
aleady been completed simply by creating the analysis and filling in the details
above, enabling progress to continue to the *Data* step.

You can easily return to the *Analysis Overview* page at any time by clicking the
title link of the analysis (in this case, *Test Drive*) in the *You Are Here:*
breadcrumbs at the top of any page of the analysis.
</div>

<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/test-drive-04-create-analysis.png">
  <figcaption>4: Create an Analysis</figcaption>

  <p></p>

  <img class="screenshot" src="/images/gandysoft/test-drive-05-analysis-overview.png">
  <figcaption>5: Analysis Overview</figcaption>
</div>
</div>

### Step 3: Upload the Analysis Data

Download the sample data file [gandysoft-sample-data.csv][3] used for this test
drive.  If prompted by your browser, save this data file in a location that you can
easily find again.

Click the *Change* button on the *Data* step of the *Analysis Overview* to progress
to the *Data* step.  Once there, click the *Source* dropdown to select the *MLS
data source* for this analysis (see *screenshot #6* below).  Choose *Greater Las
Vegas Association of Realtors.*  Note that the *How to Upload* instructions and the
*MLS data field mappings* change when the *Source* is changed, so it's important to
select the *Greater Las Vegas Association of Realtors* option.

Click the *Upload* button, and choose the sample data file
[gandysoft-sample-data.csv][3] downloaded at the beginning of this step.  The page
will briefly go to a *Loading...* state as the data is uploaded and processed.
Once *Loading...* is complete, a data browser (see *screenshot #7* below) will be
shown, allowing perusal of the processed data.

<div class="pure-g">
<div class="pure-u-1-2">
  <img class="screenshot" src="/images/gandysoft/test-drive-06-choose-data-source.png">
  <figcaption>6: Select the Data Source</figcaption>
</div>

<div class="pure-u-1-2">
  <img class="screenshot" src="/images/gandysoft/test-drive-07-upload.png">
  <figcaption>7: Data Browser</figcaption>
</div>
</div>

Note that the data displayed in the data browser will not be an exact match for the
fields from the CSV file, as the source data goes through more than *600 data
normalization processes* and *field mappings* to achieve the result that's
displayed.

Click the *Next: Subject Details* link at the top/right of the page, below the
banner, to progress to the next step in the analysis.

For additional information, see:

* the [Analysis Data][4] overview

### Step 4: Subject Details

Once you've reached the Subject Details page, you'll see a screen that resembles
*screenshot #8* below.  This page is provides a *visual review* of the key *property
features* (also known as *variables*) of the analysis.  From this point, variables
may be added or removed from the analysis, and *range filters* may be applied, as
necessary.

Click on either chart next to one of the variables to see a larger popup view of
that variable's data distribution.  The column chart provides a distribution of the
discrete values of the variable, while the scatter chart shows the distribution of
the variable's values by sales price.  *Screenshot #9* shows the scatter plot popup
for the *Lot Size* variable, which upon closer inspection shows that at least some
of the *Lot Size* values may actually be outliers in the data.

To remove the outlier values, enter *8000* on the *Value* field under the *Lot Size*
variable and *40* in the *Range* field directly below that, then press the *Tab*
key to leave the field.  The Lot Size chart will update instantly to reflect the
new filter, as can be seen in *screenshot #10* below.  Additionally, the *quick
filters* at the top of the page indicate that there are now *46 Sub-Market*
records, of a possible *51 Valid* records, showing that the *Lot Size* filter was
effective.

<div class="pure-g">
<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-08-subject-details.png">
  <figcaption>8: Subject Details</figcaption>
</div>

<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-09-subject-details-lot-size-popup.png">
  <figcaption>9: Lot Size Popup Chart</figcaption>
</div>

<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-10-subject-details-filtered.png">
  <figcaption>10: Lot Size Filtered</figcaption>
</div>

<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-11-subject-details-garage-bays-popup.png">
  <figcaption>11: Garage Bays Popup Chart</figcaption>
</div>
</div>

Note that the *Garage Bays* variable now has a *potential data issue,* having only a
*singlular sale with 2 Garage Bays* after filtering *Lot Size,* as can be seen in
the *screenshot #11* above.  A knowlegable appraiser may choose to remove the
variable at this point; however, as the variables analyzed on this page are
*independent of one another* and *without market rate adjustments,* we'll opt to
leave that variable to be handled at a later step.

After filtering and choosing variables, click the *Save* button at the bottom of
the page to save the changes to the analysis.  Once saved, click the *Next: Market
Analysis* link at the top / right of the page.

For additional information, see:

* the [Subject Details][5] overview

### Step 5: Market Analysis Charts

The Market Analysis / Charts page presents a wide variety of charts that can be
configured to display and tune market-oriented information presentation.
*Screenshot #12* shows the first two charts that appear by default: the *Sales and
Active Listings* chart and the *Sales and List Price* chart, additional charts
appear below those on-screen that are not shown in this image.  In the screenshot,
the charts have been customized beyond the default views; click on each chart to
show the *View* and *Chart data* options.

<div class="pure-g">
<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/test-drive-12-market-charts.png">
  <figcaption>12: Market Charts</figcaption>
</div>

<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/test-drive-13-1004mc.png">
  <figcaption>13: 1004MC</figcaption>
</div>

<div class="pure-u-1-3">
  <img class="screenshot" src="/images/gandysoft/test-drive-14-1004mc-editing.png">
  <figcaption>14: Editing 1004MC Remarks</figcaption>
</div>
</div>

The Form 1004MC chart, as seen in *screenshot #13*, provides summary market
analysis statistics and remarks.  Certain market assessment information cannot and
should not be automatically calculated, and must be completed by the appraiser;
these include the radio button selections for assessment of market trends and
extraneous market factors.

Click on any *remarks* field on the Form 1004MC chart to see or edit the underlying
template, as shown in *screenshot #14,* above.  The Form 1004MC remarks fields are
automatically completed from pre-defined *remarks templates,* rendered with the
current market rate and calculated market values.  The changes to the remarks
template are saved with the analysis.

Click the *Save* button at the bottom of the page to save any changes made on this
page.  Once saved, click the *Next: Basic Statistics* link at the top / right of
the page to proceed to the next step in the workflow.

For additional information, see:

* the [Market Charts][6] overview

### Step 6: Basic Statistics

The primary purpose of *Basic Statistics* is to select the *credible estimates* for
each variable from the set of estimates calculated by the various methods.  These
estimates are charted along a *price line*, with sliders that are used to identify
the high and low bounds of the estimate range.  *Screenshot #15* shows the initial
view of the *Bathrooms* variable.

Choose the left slider in the center of the chart, and then move it to include the
*$1,995.22 Fitted Squares by Val (Mean)* estimate.  Choose the right slider and move
it to include the *$8,676.85 Leveled Grouping by Val (Megamean)* estimate.
*Screenshot #16* shows the expected placement of the range sliders, highlighting
the estimates in the range.  These represent the low and high bounds of the
credible range for the value of an additional *Bathroom* in this market; different
markets may have entirely different values for the same variable.

<div class="pure-g">
<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-15-basic-statistics-bathrooms.png">
  <figcaption>15: Bathrooms Initial</figcaption>
</div>

<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-16-basic-statistics-bathrooms.png">
  <figcaption>16: Bathrooms Selection</figcaption>
</div>

<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-17-basic-statistics-garage-bays.png">
  <figcaption>17: Garage Bays Initial</figcaption>
</div>

<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-18-basic-statistics-garage-bays.png">
  <figcaption>18: Garage Bays Selection</figcaption>
</div>
</div>

Earlier, we deferred handling the potential issue with the *Garage Bays* variable,
and this is time to address it.  *Screenshot #13* shows the estimates for an
additional *Garage Bay*, and the estimates given are clearly unreliable, due to
relatively poor data representation.  Occasionally, this will also occur when the
variable has no true market impact on the sale price, or has a dependency with
another variable.  There are four potential solutions to addressing the *Garage
Bays* variable in this example:

* select the *only credible estimate,* limiting the ability to reconcile this
specific variable
* remove the variable from the analysis
* use *Advanced Modeling* to tune the analysis and model the value
* filter out the singlular record with *2 Garage Bays*

Any of these options may reasonably be chosen, and a skilled appraiser will have
good justification on which choice was made.  In this case, we'll choose the first
option, and select the single estimate; the estimated value is actually
reasonable for a *Garage Bay* in this market.  Move the sliders to highlight the
estimate as shown in screenshot #18,* above.

Once these choices have been made, click the *Save* button at the bottom of the
page.  After *Save*, click the *Next: Define Adjustments* link at the top / right
of the page; *do not* click the *Advanced Modeling* link, as this may needlessly
complicate the analysis.

Additional information can be found in:

* the [Adjustment Analysis][7] overview
* the [Basic Statistics][8] overview

### Step 7: Reconciliation and Reporting

*Reconciliation* is the process used by appraisers to take estimates for a variable
and define a specific adjustment value that will be used in the appraisal.  Often,
this simply involves rounding the value or averaging multiple values to a single
value.  PAIRS Reconciliation process does most of this for the appraiser, and
provides the ability to override the calculated reconciliation values.

*Screenshot #19* shows the inital Reconciliation page, with automatically
calculated estimates provided in the *Adjustment* field.  Click and change the
*Bathrooms* field to *4000* and then click the *Save* button.  The value of *4000*
is within the range of *credible estimates* for an additional *Bathroom*, and so is
a completely credible adjustment value, supported by the 8 methods highlighted in
*Screenshot #16,* above.

Click the *Save* button to save the changes, and then click the *Next: Validate Adjustments* link to proceed to the *Adjustments Report.

<div class="pure-g">
<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-19-define-adjustments.png">
  <figcaption>19: Estimated Adjustments</figcaption>
</div>

<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-20-define-adjustments.png">
  <figcaption>20: Reconciled Adjustments</figcaption>
</div>

<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-21-validate-adjustments.png">
  <figcaption>21: Adjustments Report</figcaption>
</div>

<div class="pure-u-1-4">
  <img class="screenshot" src="/images/gandysoft/test-drive-22-workfile-report.png">
  <figcaption>22: Workfile Report</figcaption>
</div>
</div>

The *Adjustments Report* shows the variables chosen, the adjustment for each
variable, and the estimation methods supporting each adjustment.  *Screenshot #21*
shows the top portion of this report for this analysis.  This report is typically
captured as a PDF and attached to the final appraisal report.

Click the *Next: View Workfile Report* link at the top / right of the page to
proceed to the *Workfile Report.*  The *Workfile Report,* shown in *Screenshot #22*
includes many additional details for each adjustment, including each of the
estimate values, the range used, and information about the variable's values. This
report is also typically captured as a PDF file and kept in the appraisal workfile,
the permanent record of the appraiser's activity while creating the appraisal.

Click the *Next: View Market Report* link to proceed to the *Market Report.*  This
report collects the details collected in the *Market Analysis* portion of the
workflow.  This may also be captured as a PDF file or as separate images, and
attached to the appraisal, supporting the Form 1004MC and adjustment estimates.

Click the *Next: View 1004MC Report* link to proceed to the *1004MC Report.*  This
displays the same information provided on the *Form 1004MC* chart on the *Market
Analysis* page, although it is no longer editable.  Content from this page is
typically copied to the actual Form 1004MC contained in the appraisal.

Finally, click the *Next: View Analysis* link to proceed to the *Analysis Overview.*
This overview should be relatively complete, with checkmarks indicating progress
through all items, except *Advanced Modeling,* which was intentionally skipped.

At this point, the analysis is complete.  Congratulations!

For additional information about *Reconciliation and Reporting*, see:

* the [Reconciliation][9] overview
* the [Reporting][10] overview


[1]: https://gandysoft.com
[2]: https://youtube.com/user/gandysoft
[3]: /gandysoft-sample-data.csv
[4]: /gandysoft/data
[5]: /gandysoft/subject-details
[6]: /gandysoft/market-charts
[7]: /gandysoft/adjustment-analysis
[8]: /gandysoft/basic-statistics
[9]: /gandysoft/reconciliation
[10]: /gandysoft/reporting
