// Mocks generated by Mockito 5.4.2 from annotations
// in test_app/test/screens/home_screen/view/home_screen_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i3;

import 'package:flutter_bloc/flutter_bloc.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:test_app/screens/home_screen/view_model/background_color_cubit.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeBackgroundColorState_0 extends _i1.SmartFake
    implements _i2.BackgroundColorState {
  _FakeBackgroundColorState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeColor_1 extends _i1.SmartFake implements _i3.Color {
  _FakeColor_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [BackgroundColorCubit].
///
/// See the documentation for Mockito's code generation for more information.
class MockBackgroundColorCubit extends _i1.Mock
    implements _i2.BackgroundColorCubit {
  MockBackgroundColorCubit() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.BackgroundColorState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeBackgroundColorState_0(
          this,
          Invocation.getter(#state),
        ),
      ) as _i2.BackgroundColorState);
  @override
  _i4.Stream<_i2.BackgroundColorState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i4.Stream<_i2.BackgroundColorState>.empty(),
      ) as _i4.Stream<_i2.BackgroundColorState>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void generateColors() => super.noSuchMethod(
        Invocation.method(
          #generateColors,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.Color generateRandomColor() => (super.noSuchMethod(
        Invocation.method(
          #generateRandomColor,
          [],
        ),
        returnValue: _FakeColor_1(
          this,
          Invocation.method(
            #generateRandomColor,
            [],
          ),
        ),
      ) as _i3.Color);
  @override
  _i3.Color generateMatchingColor(_i3.Color? color) => (super.noSuchMethod(
        Invocation.method(
          #generateMatchingColor,
          [color],
        ),
        returnValue: _FakeColor_1(
          this,
          Invocation.method(
            #generateMatchingColor,
            [color],
          ),
        ),
      ) as _i3.Color);
  @override
  void emit(_i2.BackgroundColorState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onChange(_i5.Change<_i2.BackgroundColorState>? change) =>
      super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}