# TestApp Project

Welcome to the **TestApp** Flutter project! This project demonstrates how to manage the screen color using a `ColorCubit` and displays the changing colors on the home screen with the help of the `HomeScreen` widget.

## Getting Started

To get started with the project, follow these simple steps:

1. **Flutter Installation**: Make sure you have Flutter installed on your machine. If not, you can follow the official guide to [install Flutter](https://flutter.dev/docs/get-started/install).
2. **Dependencies**: Run `flutter pub get` to fetch all the project dependencies. Run `flutter pub run build_runner build --delete-conflicting-outputs` By running this command, you ensure that your codebase is up-to-date with the latest changes and that any code generation-related issues are resolved. This step ensures you have all the required packages installed.
3. **Run the App**: Connect your device or emulator and run the app using the command `flutter run`. The app should launch on your device, displaying the home screen with a changing background color.

## ColorCubit

The `ColorCubit` is a state management class responsible for managing the screen color.
It utilizes the `flutter_bloc` package to handle state changes efficiently.
The cubit generates random colors and updates the state with the new colors. 
You can find the `ColorCubit` implementation in `color_cubit.dart`.

## HomeScreen

The `HomeScreen` widget represents the main screen of the app.
It demonstrates how to use the `ColorCubit` to change the background color when the user taps on the screen.
The screen displays the text "Hello there" in the center,
and the background color animates smoothly to the new random color.
You can find the `HomeScreen` widget implementation in `home_screen.dart`.

## Testing

We believe in the importance of testing to ensure the stability and correctness of our app.
The project includes the following tests:

- **Unit Tests**: The `ColorCubit` is thoroughly tested with unit tests to verify its logic for generating random and matching colors.
- You can run the unit tests using the command `flutter test`.

- **Widget Tests**: The `HomeScreen` is tested using widget tests to verify its UI behavior and appearance.
- The tests ensure that the screen color changes correctly when the user taps on it. 
- You can run the widget tests using the command `flutter test --name="home_screen"`.


