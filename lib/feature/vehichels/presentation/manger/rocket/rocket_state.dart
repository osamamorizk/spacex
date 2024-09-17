part of 'rocket_cubit.dart';

@immutable
sealed class RocketState {}

final class RocketInitial extends RocketState {}

final class RocketLoading extends RocketState {}

final class RocketSuccess extends RocketState {
  final List<RocketModel> rocketsList;

  RocketSuccess({required this.rocketsList});
}

final class RocketFailure extends RocketState {
  final String errorMessage;

  RocketFailure({required this.errorMessage});
}
