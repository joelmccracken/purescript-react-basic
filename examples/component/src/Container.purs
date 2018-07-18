module Container where

import React.Basic (ReactComponent, createVoidElement, stateless)
import React.Basic.DOM as R
import ToggleButton as ToggleButton

component :: ReactComponent {}
component = stateless { displayName: "Container", render }
  where
    render _ =
      R.div_ {}
        [ createVoidElement ToggleButton.component { on: true }
        , createVoidElement ToggleButton.component { on: false }
        ]

