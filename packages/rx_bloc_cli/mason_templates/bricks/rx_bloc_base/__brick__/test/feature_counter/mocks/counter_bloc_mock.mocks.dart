// Mocks generated by Mockito 5.0.10 from annotations
// in test_app/test/feature_counter/mocks/counter_bloc_mock.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:{{project_name}}/feature_counter/blocs/counter_bloc.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeCounterBlocEvents extends _i1.Fake implements _i2.CounterBlocEvents {
}

class _FakeCounterBlocStates extends _i1.Fake implements _i2.CounterBlocStates {
}

/// A class which mocks [CounterBlocEvents].
///
/// See the documentation for Mockito's code generation for more information.
class MockCounterBlocEvents extends _i1.Mock implements _i2.CounterBlocEvents {
  MockCounterBlocEvents() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void increment() => super.noSuchMethod(Invocation.method(#increment, []),
      returnValueForMissingStub: null);
  @override
  void decrement() => super.noSuchMethod(Invocation.method(#decrement, []),
      returnValueForMissingStub: null);
  @override
  void reload() => super.noSuchMethod(Invocation.method(#reload, []),
      returnValueForMissingStub: null);
}

/// A class which mocks [CounterBlocStates].
///
/// See the documentation for Mockito's code generation for more information.
class MockCounterBlocStates extends _i1.Mock implements _i2.CounterBlocStates {
  MockCounterBlocStates() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<bool> get isLoading =>
      (super.noSuchMethod(Invocation.getter(#isLoading),
          returnValue: Stream<bool>.empty()) as _i3.Stream<bool>);
  @override
  _i3.Stream<String> get errors =>
      (super.noSuchMethod(Invocation.getter(#errors),
          returnValue: Stream<String>.empty()) as _i3.Stream<String>);
  @override
  _i3.Stream<int> get count => (super.noSuchMethod(Invocation.getter(#count),
      returnValue: Stream<int>.empty()) as _i3.Stream<int>);
}

/// A class which mocks [CounterBlocType].
///
/// See the documentation for Mockito's code generation for more information.
class MockCounterBlocType extends _i1.Mock implements _i2.CounterBlocType {
  MockCounterBlocType() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.CounterBlocEvents get events =>
      (super.noSuchMethod(Invocation.getter(#events),
          returnValue: _FakeCounterBlocEvents()) as _i2.CounterBlocEvents);
  @override
  _i2.CounterBlocStates get states =>
      (super.noSuchMethod(Invocation.getter(#states),
          returnValue: _FakeCounterBlocStates()) as _i2.CounterBlocStates);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
}
