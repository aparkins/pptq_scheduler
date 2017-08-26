module Updates exposing (..)

import Routing exposing (init)
import Types exposing (Model, Msg(..))
import Calendar.Updates


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnLocationChange location ->
            init location

        CalendarPageMsg calendarMsg ->
            let
                ( mod, cmd ) =
                    Calendar.Updates.update calendarMsg model.calendarModel
            in
                ( { model | calendarModel = mod }
                , Cmd.map CalendarPageMsg cmd
                )
