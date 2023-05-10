## Da Vinci Service

<div class="pure-g">
<div class="pure-u-2-3" markdown="1">
Da Vinci Service (DVS) was a design editor that was embedded within the [Smock][1]
product. DVS allowed the customer to graphically edit their design interactively. DVS
dealt only with the live editing capabilities; import, save, and resume editing were all
handled by the integration with [Smock][1]. DVS maintained internal state and design
versions, and could rollback and roll forward as needed.

My role with DVS was as Tech Lead for the overall series of projects, engineer for the
backend aspects of DVS, code reviewer and quality assurance for the DVS live editor.

DVS was initially written in ActionScript, but was converted to a JavaScript / [HTML5
Canvas][2] / [Scalable Vector Graphics][3] solution to address fundamental technical
issues with using Flash-based plugins.

</div>

<div class="pure-u-1-3">
  <img class="screenshot" src="/images/opensoft/dvs-designer.png">
  <figcaption>DVS Designer</figcaption>

  <img class="screenshot" src="/images/opensoft/dvs-designer-from-template.png">
  <figcaption>DVS with Template Design</figcaption>
</div>
</div>

[1]: /opensoft/smock
[2]: https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API
[3]: https://www.w3.org/TR/SVG2/
