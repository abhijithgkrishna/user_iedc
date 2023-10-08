part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState{
  const factory HomeState({
    required List<dynamic> data,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(data: []);
}
