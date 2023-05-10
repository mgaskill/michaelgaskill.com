## [OpenSoft][1] (via [Overnight Prints][2])

[OpenSoft][1] is the technology arm of [Overnight Prints][2], and the engineers there
developed the entire eCommerce website, tooling, and printing pipeline. The Overnigth
Prints system is sophisticated and involves many tech stacks, subsystems, and
technological concerns across many geographical areas. The primary US print factory in
Louisville, KY and the engineering offices in Las Vegas, NV and Irvine, CA, as well as
having an international presence across Europe.

My focus was almost entirely on the customer-facing aspects of the custom print work,
although I integrated this to interact with the print workflow. I was the Tech Lead and
main contributor for this collection of projects, and had a team of 3-4 engineers.

## Feature Highlights

<div class="pure-g">
<div class="pure-u-2-3" markdown="1">
* [Smock][3]
* [Da Vinci Service][4]
* [Print Design Import][5]

</div>

<div class="pure-u-1-3 screenshot">
  <img class="screenshot" src="/images/opensoft/overnight-prints.png">
  <figcaption>Overnight Prints Main Page</figcaption>
</div>
</div>

## Technology Stack

### Backend

The technology stacks for the [Smock][3] and [DVS][4] were built with a [PHP][10]
backend, using the [Symfony][11] stack and [Postgres][12] as the database. Unit testing
was done primarily with [PHPUnit][13] and [Behat][14] with [Behatch Contexts][15].

The [Print Design Import][5] was built with [Adobe Illustrator][20] using an
[ExtendScript][21] plugin and [C-language][22] [Windows DLL][23] and [Linux shared
library][24] to support networking. This communicated with the [DVS][4] backend to
store the imported print designs.

### Frontend

The frontend tech stack primarily used [Twig][30] with [JavaScript][12] and [jQuery][32], with a lot of features from [HTML 5][33] and [CSS 3][34], in particular [Canvas][35] and [SVG][36].

[1]: https://opensoftdev.com/
[2]: https://www.overnightprints.com/
[3]: /opensoft/smock
[4]: /opensoft/da-vinci-service
[5]: /opensoft/print-design-import
[10]: https://www.php.net/
[11]: https://symfony.com/
[12]: https://www.postgresql.org/
[13]: https://phpunit.de/
[14]: https://behat.org/
[15]: https://github.com/Behatch/contexts
[20]: https://www.adobe.com/products/illustrator.html
[21]: https://extendscript.docsforadobe.dev/introduction/extendscript-overview.html
[22]: https://en.wikipedia.org/wiki/C_(programming_language)
[23]: https://learn.microsoft.com/en-us/troubleshoot/windows-client/deployment/dynamic-link-library
[24]: https://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html
[30]: https://twig.symfony.com/
[31]: https://en.wikipedia.org/wiki/JavaScript
[32]: https://jquery.com/
[33]: https://dev.w3.org/html5/spec-LC/
[34]: https://www.w3.org/TR/css-color-3/
[35]: https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API
[36]: https://www.w3.org/TR/SVG2/
