
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
  Html.beginnerProgram { model = counter, view = view, update = update }

-- Model

type alias Model = Int

counter : Model
counter =
  0

-- UPDATE


type Msg = Increment | Decrement | Reset

update : Msg -> Model -> Model
update msg counter =
  case msg of
    Increment ->
      counter + 1

    Decrement ->
      counter - 1

    Reset ->
      counter - counter

-- VIEW

view : Model -> Html Msg
view counter =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString counter) ]
    , button [ onClick Increment ] [ text "+"]
    , div [] [
        button [ onClick Reset ] [ text "reset"]
      ]
    ]

