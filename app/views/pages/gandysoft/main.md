## GandySoft PAIRS via [GandySoft.com](http://gandysoft.com)

*GandySoft PAIRS* is a full-function *Software-as-a-Service (SaaS)* product
providing revolutionary Real Estate Appraisal analytics.  The game-changing
solution that PAIRS brings to the appraisal market is the combination of using
[full market data][1], a range of traditional estimation methods, a
proprietary *iterative matched pairs* method, [interactive statistical
modeling][8] tools, dynamic filtering methods to eliminate bad and anomalous
data, and *full decision-making power for the appraiser.*  A properly
trained appraiser can produce results that are shockingly good in about 5 minutes
or so.  Literally, no other solution on the market comes close to matching the
*accuracy, speed, flexibility,* and [reporting][10] capabilities that PAIRS
provides at a fraction of the cost.

## Feature Highlights

<div class="pure-g">
<div class="pure-u-1-2" markdown="1">
* [Flexible Workflow][2]
* [Full Market Analysis][1]
* [Subject Details][3]
* [Market Analysis and Charts][4]
    * [Market Conditions and Form 1004MC][5]
* [Adjustment Analysis][6]
    * [Basic Statistics][7]
    * [Advanced Modeling][8]
* [Reconciliation][9]
* [Reporting][10]

</div>

<div class="pure-u-1-2 youtube-video">
<iframe frameborder="0" allowfullscreen="allowfullscreen"
        src="https://youtube.com/embed/Vo4-7tGlHIM?autoplay=0&controls=2&showinfo=0&enablejsapi=0">
</iframe>
</div>
</div>

## Test Drive

Full details on how to use PAIRS can be found here on the [Test Drive][11] page.

## Technology Stack

### Backend

PAIRS was built from scratch using *Ruby on Rails 4.*  *FriendlyID* provides slug
functionality for human readable URLs.

*PostgreSQL* is used as the database server.  In addition to user profile
information and analysis results, post-processed (normalized) MLS data is stored in
the database for quick access.

The user authentication system is built around the *Devise* gem, with many
customizations applied for subscription-based service, and *CanCan* is used for
role-based authorization.  Sessions are managed via the ActiveRecord session store.

Long-term file storage for the original uploaded MLS data files is on *Amazon S3*,
stored using a filename derived from the SHA-256 hash of the contents of the
original uploaded file.  Each file is tracked and associated with one or more users
in the database.

### Frontend

The browser-based front-end was developed in *HTML5 and SCSS/CSS3.*  Dynamic UI
behavior was implemented using *Javascript,* with broad cross-browser support from
*jQuery* and *underscore.js.*  Ajax is used to help provide some of the dynamic
behavior, while relying on the backend to process an action or provide data in
context.  Aspects of the front-end also rely on application-specific web services
to provide information.

jQuery and Underscore.js are used heavily on the page, specifically to provide
strong cross-browser support.  Numerous old browser versions are explicitly
supported, as customers are loathe to upgrade or switch browsers.

jQueryUI is used throughout the application for form elements, date and time
selection, and the range slider in [Basic Statistics][7].  The *Chosen* jQuery
plugin was used to provide text/select dropdowns for selecting variables.

Markdown editing is done with a heavily customized version of *MDMagick* that
supports using *FontAwesome* for the edit control images and *textile* for
rendering markdown to HTML.  Additional changes include selectable markup
renderers, and underline, strikethrough, numbered lists, and image support.  The
codebase was cleaned up and refactored to allow dynamic images, buttons, and
actions to make future customizations obvious and straightforward.  The modified
code can be found in the [Acumulus/MDMagick] repository.

Charting was originally done using *Google Charts,* but when that was found to have
atrocious performance on non-Chrome browsers, a replacement was needed.  *RGraph*
was chosen after evaluating over 30 JavaScript charting libraries, specifically for
ease of use, customization support, and key features needed to produce the [Market
Charts][4] features.  Lack of built-in historam support meant creating a custom
histogram bucketing / charting feature.

Tabular/spreadsheet data is presented using the *Handsontable* JavaScript library,
and is heavily customized to support the types and format of data used in PAIRS. 
As *Handsontable* does not paginate, at least in the version used, pagination is
handled by the application, and each page of tabula data is provided to the
*Handsontable* control, as needed.

*FullCalendar* was used to present the event calendar.  *Moment.js* was used to
convert and manage display dates and times.

### Development Process

Development was done on Debian Linux and Mac OS X, using *thin* and *Puma*
webservers.  *git / Github* (following *Github Flow*) was used for source control,
and *RSpec* was used extensively for unit testing.

*Continuous Integration / Continuous Delivery / Continuous Deployment* was done
using *RSpec,* with custom Ruby scripts used for interation and verification
testing, *Jenkins* for release management, and *Capistrano* for deployments to
staging and production environments.  The staging environment fully duplicated the
production environment (but used cleansed data), allowing functional, performance,
and scalability testing before deployment to the production environment.  *Jenkins*
was used to automate *Capistrano* deployments, and *Capistrano* ran critical
deployment verification tests before completion of the deployment.

Extensive testing was done using *Chrome, Firefox, Internet Explorer, Safari, and
Opera* browsers running on *Windows, Linux, Mac OS X, iOS, and Android*.  Automated
browser testing used *Capybara* with *Selenium* via the *Selenium web driver*.

### Additional information

For additional non-technical details about the project, see here:

* [Feature Development History][12]
* [Major Challenges][13]

[1]: /gandysoft/data
[2]: /gandysoft/workflow
[3]: /gandysoft/subject-details
[4]: /gandysoft/market-charts
[5]: /gandysoft/form-1004mc
[6]: /gandysoft/adjustment-analysis
[7]: /gandysoft/basic-statistics
[8]: /gandysoft/advanced-modeling
[9]: /gandysoft/reconciliation
[10]: /gandysoft/reporting
[11]: /gandysoft/test-drive
[12]: /gandysoft/feature-development-history
[13]: /gandysoft/major-challenges
[14]: https://github.com/acumulus/MDMagick
