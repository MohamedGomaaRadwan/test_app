import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_app/core/dependency_init.dart';
import 'package:test_app/screens/home_screen/view/home_screen.dart';
import 'package:test_app/screens/home_screen/view_model/background_color_cubit.dart';

import 'home_screen_test.mocks.dart';

@GenerateMocks([
  BackgroundColorCubit,
])
void main() {
  late BackgroundColorCubit _backgroundColorCubit;

  setUp(() {
    _backgroundColorCubit = MockBackgroundColorCubit();
    getIt.registerFactory<BackgroundColorCubit>(() => _backgroundColorCubit);
    when(_backgroundColorCubit.stream).thenAnswer((_) => const Stream.empty());
  });

  testGoldens('HomeScreen should build init state', (tester) async {
    when(_backgroundColorCubit.state).thenReturn(BackgroundColorState());

    await tester.pumpWidget(
      MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );

    await multiScreenGolden(
      tester,
      'home_screen_init',
      customPump: (tester) async => tester.pump(),
      devices: [Device.iphone11],
    );
  });

  testGoldens('HomeScreen should change colors on tap', (tester) async {
    when(_backgroundColorCubit.state).thenReturn(
      BackgroundColorState(
        bottomColor: Colors.red,
        topColor: Colors.black,
      ),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );

    await multiScreenGolden(
      tester,
      'home_screen_color_changed',
      customPump: (tester) async => tester.pump(),
      devices: [Device.iphone11],
    );
    await tester.tap(find.byType(GestureDetector));
    await tester.pumpAndSettle();
    verify(_backgroundColorCubit.generateColors()).called(1);
  });
}
