module Views exposing (..)

import Html exposing (Html, a, div, li, text, ul)
import Html.Attributes exposing (href)
import Types exposing (HomeModel, Model, Msg(..), Route(..))
import Calendar.Views


view : Model -> Html Msg
view model =
    case model.route of
        HomeRoute ->
            homeView model.homeModel

        NotFoundRoute ->
            notFoundView

        CalendarRoute ->
            Calendar.Views.view model.calendarModel
                |> Html.map CalendarPageMsg


homeView : HomeModel -> Html Msg
homeView model =
    div
        []
        -- Welcome header
        [ div [] [ text "Welcome to the PPTQ App Test Landing Page!" ]

        -- Link directory
        , div
            []
            [ ul
                []
                [ li [] [ a [ href "#calendar" ] [ text "Calendar" ] ]
                ]
            ]
        ]


notFoundView : Html Msg
notFoundView =
    div
        []
        [ text "Sorry, the page you've requested doesn't appear to exist!" ]
