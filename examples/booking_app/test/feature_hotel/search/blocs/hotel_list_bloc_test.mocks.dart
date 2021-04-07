// Mocks generated by Mockito 5.0.3 from annotations
// in booking_app/test/feature_hotel/search/blocs/hotel_list_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:booking_app/base/common_blocs/coordinator_bloc.dart' as _i4;
import 'package:booking_app/base/repositories/paginated_hotels_repository.dart'
    as _i5;
import 'package:favorites_advanced_base/src/models/hotel.dart' as _i3;
import 'package:favorites_advanced_base/src/models/hotel_search_filters.dart'
    as _i7;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rx_bloc_list/src/models/paginated_list.dart' as _i2;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakePaginatedList<E> extends _i1.Fake implements _i2.PaginatedList<E> {}

class _FakeHotel extends _i1.Fake implements _i3.Hotel {}

class _FakeCoordinatorEvents extends _i1.Fake implements _i4.CoordinatorEvents {
}

class _FakeCoordinatorStates extends _i1.Fake implements _i4.CoordinatorStates {
}

/// A class which mocks [PaginatedHotelsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPaginatedHotelsRepository extends _i1.Mock
    implements _i5.PaginatedHotelsRepository {
  MockPaginatedHotelsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.PaginatedList<_i3.Hotel>> getFavoriteHotelsPaginated(
          {int? pageSize, int? page}) =>
      (super.noSuchMethod(
              Invocation.method(#getFavoriteHotelsPaginated, [],
                  {#pageSize: pageSize, #page: page}),
              returnValue: Future.value(_FakePaginatedList<_i3.Hotel>()))
          as _i6.Future<_i2.PaginatedList<_i3.Hotel>>);
  @override
  _i6.Future<_i2.PaginatedList<_i3.Hotel>> getHotelsPaginated(
          {_i7.HotelSearchFilters? filters, int? pageSize, int? page}) =>
      (super.noSuchMethod(
              Invocation.method(#getHotelsPaginated, [],
                  {#filters: filters, #pageSize: pageSize, #page: page}),
              returnValue: Future.value(_FakePaginatedList<_i3.Hotel>()))
          as _i6.Future<_i2.PaginatedList<_i3.Hotel>>);
  @override
  _i6.Future<List<_i3.Hotel>> getFavoriteHotels() => (super.noSuchMethod(
      Invocation.method(#getFavoriteHotels, []),
      returnValue: Future.value(<_i3.Hotel>[])) as _i6.Future<List<_i3.Hotel>>);
  @override
  _i6.Future<List<_i3.Hotel>> getHotels({_i7.HotelSearchFilters? filters}) =>
      (super.noSuchMethod(
              Invocation.method(#getHotels, [], {#filters: filters}),
              returnValue: Future.value(<_i3.Hotel>[]))
          as _i6.Future<List<_i3.Hotel>>);
  @override
  _i6.Future<_i3.Hotel> favoriteHotel(_i3.Hotel? hotel, {bool? isFavorite}) =>
      (super.noSuchMethod(
          Invocation.method(#favoriteHotel, [hotel], {#isFavorite: isFavorite}),
          returnValue: Future.value(_FakeHotel())) as _i6.Future<_i3.Hotel>);
  @override
  _i6.Future<List<_i3.Hotel>> fetchFullEntities(List<String>? ids,
          {bool? allProps = false}) =>
      (super.noSuchMethod(
          Invocation.method(#fetchFullEntities, [ids], {#allProps: allProps}),
          returnValue:
              Future.value(<_i3.Hotel>[])) as _i6.Future<List<_i3.Hotel>>);
}

/// A class which mocks [CoordinatorBlocType].
///
/// See the documentation for Mockito's code generation for more information.
class MockCoordinatorBlocType extends _i1.Mock
    implements _i4.CoordinatorBlocType {
  MockCoordinatorBlocType() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.CoordinatorEvents get events =>
      (super.noSuchMethod(Invocation.getter(#events),
          returnValue: _FakeCoordinatorEvents()) as _i4.CoordinatorEvents);
  @override
  _i4.CoordinatorStates get states =>
      (super.noSuchMethod(Invocation.getter(#states),
          returnValue: _FakeCoordinatorStates()) as _i4.CoordinatorStates);
}

/// A class which mocks [CoordinatorEvents].
///
/// See the documentation for Mockito's code generation for more information.
class MockCoordinatorEvents extends _i1.Mock implements _i4.CoordinatorEvents {
  MockCoordinatorEvents() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void hotelUpdated(_i3.Hotel? hotel) =>
      super.noSuchMethod(Invocation.method(#hotelUpdated, [hotel]),
          returnValueForMissingStub: null);
  @override
  void hotelsWithExtraDetailsFetched(List<_i3.Hotel>? hotels) => super
      .noSuchMethod(Invocation.method(#hotelsWithExtraDetailsFetched, [hotels]),
          returnValueForMissingStub: null);
}

/// A class which mocks [CoordinatorStates].
///
/// See the documentation for Mockito's code generation for more information.
class MockCoordinatorStates extends _i1.Mock implements _i4.CoordinatorStates {
  MockCoordinatorStates() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Stream<_i3.Hotel> get onHotelUpdated =>
      (super.noSuchMethod(Invocation.getter(#onHotelUpdated),
          returnValue: Stream<_i3.Hotel>.empty()) as _i6.Stream<_i3.Hotel>);
  @override
  _i6.Stream<List<_i3.Hotel>> get onFetchedHotelsWithExtraDetails =>
      (super.noSuchMethod(Invocation.getter(#onFetchedHotelsWithExtraDetails),
              returnValue: Stream<List<_i3.Hotel>>.empty())
          as _i6.Stream<List<_i3.Hotel>>);
  @override
  _i6.Stream<List<_i3.Hotel>> get onHotelsUpdated =>
      (super.noSuchMethod(Invocation.getter(#onHotelsUpdated),
              returnValue: Stream<List<_i3.Hotel>>.empty())
          as _i6.Stream<List<_i3.Hotel>>);
}
