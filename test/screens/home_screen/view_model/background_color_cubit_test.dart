import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/screens/home_screen/view_model/background_color_cubit.dart';

void main() {
  group('ColorCubit', () {
    late BackgroundColorCubit colorCubit;

    setUp(() {
      colorCubit = BackgroundColorCubit();
    });

    tearDown(() {
      colorCubit.close();
    });

    test('initial state', () {
      expect(colorCubit.state, equals(BackgroundColorState()));
    });

    blocTest<BackgroundColorCubit, BackgroundColorState>(
      'emits new colors when generateColors is called',
      build: () => colorCubit,
      act: (bloc) => bloc.generateColors(),
      expect: () => [
        isNot(
          equals(
            BackgroundColorState(
              topColor: Colors.lightBlue,
              bottomColor: Colors.blue,
            ),
          ),
        ),
      ],
    );

    test('generate random colors', () {
      final randomColor = colorCubit.generateRandomColor();
      expect(randomColor, isA<Color>());
    });

    test('generate matching colors', () {
      final randomColor = colorCubit.generateRandomColor();
      final matchingColor = colorCubit.generateMatchingColor(randomColor);
      expect(matchingColor, isA<Color>());
    });

    blocTest<BackgroundColorCubit, BackgroundColorState>(
      'emits different colors on multiple generateColors calls',
      build: () => colorCubit,
      act: (bloc) async {
        await Future.delayed(const Duration(milliseconds: 500));
        bloc.generateColors();
        await Future.delayed(const Duration(milliseconds: 500));
        bloc.generateColors();
      },
      expect: () => [
        isNot(
          equals(
            BackgroundColorState(
              topColor: Colors.lightBlue,
              bottomColor: Colors.blue,
            ),
          ),
        ),
        isNot(
          equals(
            BackgroundColorState(
              topColor: Colors.lightBlue,
              bottomColor: Colors.blue,
            ),
          ),
        ),
      ],
    );

    blocTest<BackgroundColorCubit, BackgroundColorState>(
      'emits correct colors on generateColors calls',
      build: () => colorCubit,
      act: (bloc) => bloc.generateColors(),
      expect: () => [
        isNot(
          equals(
            BackgroundColorState(
              topColor: Colors.lightBlue,
              bottomColor: Colors.blue,
            ),
          ),
        ),
      ],
      verify: (bloc) {
        expect(bloc.state.topColor, isA<Color>());
        expect(bloc.state.bottomColor, isA<Color>());
      },
    );
  });
}
