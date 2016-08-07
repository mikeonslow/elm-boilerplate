module Main exposing (..)

import Html exposing (..)
import Html.App as Html
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http


{--Remove commented imports as needed --}
-- import Json.Decode as Json
-- import Json.Decode.Pipeline exposing (decode, required, optional)
-- import Task
-- MODEL


type alias Model =
    { props : List String }


init : ( Model, Cmd Msg )
init =
    ( Model []
    , Cmd.none
    )



-- UPDATE


type Msg
    = FetchSucceed Model
    | FetchFail Http.Error


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        FetchSucceed model ->
            ( model, Cmd.none )

        FetchFail _ ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div [] [ text "Hello Boilerplate" ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
