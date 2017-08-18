module Views exposing (..)

import Html exposing (Html, div, text)
import Types exposing (HomeModel, Model, Msg, Route(..))


view : Model -> Html Msg
view model =
    case model.route of
        HomeRoute ->
            homeView model.homeModel


homeView : HomeModel -> Html Msg
homeView model =
    div [] [ text "Hello world!" ]
