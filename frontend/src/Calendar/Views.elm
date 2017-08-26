module Calendar.Views exposing (..)

import Calendar.Types exposing (Model, Msg(..))
import Html exposing (Html, div, text)


view : Model -> Html Msg
view model =
    div [] [ text "Hello, Calendar!" ]
