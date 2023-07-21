import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'background_color_cubit.freezed.dart';

/// A class representing a state management
@injectable
class BackgroundColorCubit extends Cubit<BackgroundColorState> {
  /// Constructs a [BackgroundColorCubit]
  /// instance with the colors initial values.
  BackgroundColorCubit() : super(BackgroundColorState());

  /// Changes the screen color to a randomly generated color.
  void generateColors() {
    final Color topColor = generateRandomColor();
    final Color bottomColor = generateMatchingColor(topColor);
    emit(state.copyWith(topColor: topColor, bottomColor: bottomColor));
  }

  /// Changes the screen color to a randomly generated color.
  ///
  /// This method generates a random color using the [Random] class and emits
  /// the new color state to all listeners.
  @visibleForTesting
  Color generateRandomColor() {
    final Random random = Random();
    final double hue = random.nextDouble() * 360.0;
    final double saturation = 0.5 + random.nextDouble() * 0.5;
    final double lightness = 0.5 + random.nextDouble() * 0.2;

    return HSLColor.fromAHSL(1.0, hue, saturation, lightness).toColor();
  }

  /// Changes the screen color to a matching color based on the current color.
  ///
  /// This method uses the [HSLColor] class to generate a matching color by
  /// increasing the hue of the current color by 30 degrees. The new color
  /// is then emitted to all listeners.
  @visibleForTesting
  Color generateMatchingColor(Color baseColor) {
    final HSLColor hslColor = HSLColor.fromColor(baseColor);
    final double hue = (hslColor.hue + 30.0) % 360.0;

    return hslColor.withHue(hue).toColor();
  }
}

/// The state representing the screen color.
///
/// This class holds the current color of the screen, which consists of two
/// colors: [topColor] and [bottomColor]. The [topColor] represents the color
/// at the top of the screen, while the [bottomColor] represents the color at
/// the bottom of the screen. Both colors are used to create a gradient
/// background for the screen.
@freezed
class BackgroundColorState with _$BackgroundColorState {
  /// Creates a [BackgroundColorState] with the specified
  /// [topColor] and [bottomColor].
  factory BackgroundColorState({
    @Default(Colors.lightBlue) Color topColor,
    @Default(Colors.blue) Color bottomColor,
    String? errorMessage,
  }) = _BackgroundColorState;
}
