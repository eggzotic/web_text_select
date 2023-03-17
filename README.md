# web_text_select

Combines SelectionArea and CustomText

## Getting Started

This demo project addresses an issue mostly relevant to Flutter for web:

Scenario - your web app needs to allow the user to select (& subsequently copy etc.) text from the app
- Solution: SelectionArea(...)

However this introduces an undesirable side-effect of *all text* changing the mouse pointer to the I-beam, aka text-selection-cursor - yes even when that text is inside a button(!)

- Solution: CustomText + TextDefinition + concrete-subclass of TextMatcher and mousecursor override...

This is all illustrated in this demo app. Look closely as you mouse-over various parts - especially the buttons.

Richard Shepherd
2023-03-17
