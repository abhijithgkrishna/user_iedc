part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required List<dynamic> data,
      required List<dynamic> categories,
      required List<dynamic> venues}) = _HomeState;

  factory HomeState.initial() => HomeState(
        data: [],
        categories: [],
        venues: [],
      );
}
