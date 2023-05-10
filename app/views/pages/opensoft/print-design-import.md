## Print Design Import

<div class="pure-g">
<div class="pure-u-2-3" markdown="1">
I created a fully automated solution for importing print designs submitted by customers
and converting them into layered print designs. The print designs were uploaded as
either [Adobe Illustrator][1] or PDF files, and the designs were decomposed with a
custom integration with [Adobe Illustrator][1] to extract each design element (text,
image, shape, etc) to re-compose into a [DVS][3]-compatible template.
</div>

<div class="pure-u-1-3">
  <img class="screenshot" src="/images/opensoft/smock-upload.png">
  <figcaption>Print Design Upload</figcaption>
</div>
</div>

This required integrating with the cloud-based [Adobe Illustrator][1] product using the
Adobe flavor of JavaScript (called [ExtendScript][2]). Using ExtendScript, I hooked into
the creation of each element as the design file was loaded, queried the attributes of the
element, and exported them to a [DVS][3] design.

One of the key challenges was that ExtendScript did not have networking capabilities of
any kind. Modern networking was required to export the design elements to [DVS][3], so I
built a shared library in C to provide the network primitives for Windows and Linux. In
JavaScript, I built a library to support much of the [HTTP standard][4] for interacting
with the DVS backend, including supporting GET, POST, DELETE, and PATCH, multi-part
[MIME][5] (for exchanging images and complex data), redirects, and much more. That gave
the necessary functionality for the systems to be able to communicate effectively.

[1]: https://www.adobe.com/products/illustrator.html
[2]: https://extendscript.docsforadobe.dev/introduction/extendscript-overview.html
[3]: /opensoft/da-vinci-service
[4]: https://www.w3.org/Protocols/
[5]: https://datatracker.ietf.org/doc/html/rfc1341
