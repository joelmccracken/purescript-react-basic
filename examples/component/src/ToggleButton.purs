module ToggleButton where

import Prelude

import React.Basic (ReactComponent, component)
import React.Basic.DOM as R
import React.Basic.Events as Events

type ExampleProps =
  { on :: Boolean
  }

toggleButton :: ReactComponent ExampleProps
toggleButton = component { displayName: "ToggleButton", initialState, receiveProps, render }
  where
    initialState =
      { on: false }

    receiveProps { props, setState } =
      setState _ { on = props.on }

    render { state, setState } =
      R.button
        { onClick: Events.handler_ (setState \s -> s { on = not s.on })
        , children: [ R.text if state.on then "On" else "Off" ]
        }
