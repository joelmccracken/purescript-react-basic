const props = require("react-html-attributes");

const voids = ["area", "base", "br", "col", "embed", "hr", "img", "input", "link", "meta", "param", "source", "track", "wbr"];

const types = {
  "allowFullScreen": "Boolean",
  "async": "Boolean",
  "autoPlay": "Boolean",
  "capture": "Boolean",
  "checked": "Boolean",
  "children": "Array JSX",
  "cols": "Number",
  "controls": "Boolean",
  "default": "Boolean",
  "defer": "Boolean",
  "disabled": "Boolean",
  "formNoValidate": "Boolean",
  "hidden": "Boolean",
  "itemScope": "Boolean",
  "loop": "Boolean",
  "max": "Number",
  "min": "Number",
  "multiple": "Boolean",
  "muted": "Boolean",
  "onClick": "EventHandler",
  "onInput": "EventHandler",
  "onInvalid": "EventHandler",
  "onSubmit": "EventHandler",
  "noValidate": "Boolean",
  "onChange": "EventHandler",
  "open": "Boolean",
  "playsInline": "Boolean",
  "readOnly": "Boolean",
  "required": "Boolean",
  "reversed": "Boolean",
  "rowSpan": "Number",
  "rows": "Number",
  "scoped": "Boolean",
  "seamless": "Boolean",
  "selected": "Boolean",
  "size": "Number",
  "span": "Number",
  "start": "Number"
};

printRecord = (elProps) => elProps.length ? `
  ( ${ elProps.map((p) =>
       `${p} :: ${types[p] || "String"}`).join("\n  , ")
     }
  )` : "()"

const header =
`
module React.Basic.DOM.Childish
  ( module React.Basic.DOM
  , module React.Basic.DOM.Childish
  ) where

import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, createElement, createElementKeyed)
import React.Basic.DOM (text, CSS, css, mergeStyles, SharedProps, unsafeCreateDOMComponent)
import React.Basic.Events (EventHandler)
import Record (union)

createChildishElement
  :: forall children props
   . ReactComponent { children :: children | props }
  -> { | props }
  -> children
  -> JSX
createChildishElement component props children =
  createElement component (union { children } props)

createChildishKeyedElement
  :: forall children props
   . ReactComponent { children :: children | props }
  -> { key :: String | props }
  -> children
  -> JSX
createChildishKeyedElement component props children =
  createElementKeyed component (union { children } props)

-- | -------------------------------
-- | GENERATED CODE BELOW THIS LINE!
-- | -------------------------------
`.trim();

console.log(header);
console.log();

props.elements.html
  .map((e) => {
    const noChildren = voids.includes(e);
    return `
    type Props_${e} =${printRecord((props[e] || []).sort())}

    ${e}_
      :: forall attrs attrs_
       . Union attrs attrs_ (SharedProps Props_${e})
      => Record attrs${noChildren ? "" : ` -> Array JSX`}
      -> JSX
    ${e}_ = ${noChildren ? "createElement" : "createChildishElement"} (unsafeCreateDOMComponent "${e}")
`;
}).forEach((x) => console.log(x.replace(/^\n\ {4}/, "").replace(/\n\ {4}/g, "\n")))
