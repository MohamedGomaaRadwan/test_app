import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/core/dependency_init.dart';
import 'package:test_app/screens/home_screen/view_model/background_color_cubit.dart';

/// The home screen widget with a changing background color.
///
/// This widget represents the home screen of the app. The background color of
/// the screen changes to a randomly generated color when the user taps on the
/// screen. The screen displays the text "Hello there" in the middle of the
/// screen.
class HomeScreen extends StatelessWidget {
  /// Creates a new HomeScreen instance with the given colors.
  HomeScreen({Key? key}) : super(key: key);
  final BackgroundColorCubit _colorCubit = getIt<BackgroundColorCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _colorCubit,
      child: Scaffold(
        body: GestureDetector(
          onTap: () => _colorCubit.generateColors(),
          child: BlocBuilder<BackgroundColorCubit, BackgroundColorState>(
            bloc: _colorCubit,
            builder: (context, state) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [state.topColor, state.bottomColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Hello there',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
