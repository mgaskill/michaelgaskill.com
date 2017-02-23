## Major Challenges

### MLS Data Quality

Throughout the development process, quality and consistency issues with MLS data
continued to have an impact on the ability to analyze data well.  Virtually every
MLS uses different field names, field structures, and data formats.  Not a single
MLS produced clean, compliant CSV, many of which couldn't even be parsed with
Excel, which has one of the most leniant CSV parsers available.  Every MLS system
offered some strange structural issue to break or seriously complicate parsing the CSV data.  Issues ranged from merely inconvenient to truly insidious, including:

* duplicated header names for entirely different fields
* header names change from one file to another from the same MLS
* blank header names
* extraneous characters outside field quotes in headers or fields
* columns duplicated entirely, sometimes as many as 6 times in a single file
* improperly escaping embedded quotes or commas
* embedded newlines without field quotes
* spurious blank lines
* mixed text encodings, including using a UTF-8 BOM for a Windows-1252 encoded file
* CSV formatted data within a CSV field, essentially requiring nested CSV parsing
* Excel formulas embedded within fields, requiring a basic formula interpreter
* one logical CSV split across files, sometimes by columns, sometimes by rows, sometimes both
* user-selectable delimiters, quotes, and file format (CSV, XLS, etc) requires detection of delimiters, quotes and format for all files

Once parsed, the MLS data required intensive value parsing, simply to retrieve
basic information.  As an example, there are 29 distinct date formats used across
the 102 MLSes mapped, sometimes as many as 5 different formats within a single CSV
file.  Similarly, a simple "no" value has as many as 9 different representations.
PAIRS breaks all field values down into one of 15 known data types, based on the
values used in the column.  Occasionally, a column can contain multiple types of
values, such as a "Lot Size" field that may contain either square feet or acres
values, or a "Seller Concessions" field that may contain either a dollar amount or
a percentage to be applied against the "Sale Price."  Multiple forms and stages of
data normalization are necessary to produce usable information from the raw data.

In many cases, the necessary information was either completely absent from
the MLS or was blatantly incorrect, for which an automatic filtering process
provided a partial solution.  In other cases, these quality and consistency issues
were ameliorated by introducing the more than *600 data normalization processes* to
normalize and improve the data in place.  In the end, it's up to the appraiser to
understand the veracity of the data, whether they can rely on it as-is to support
their appraisal, and to supplement the data as necessary to meet their quality
objectives.  An appraiser that is both familiar with the market and fully aware of
potential data issues can now rely on significant portions of the data to produce
high quality market and adjustment analyses.
