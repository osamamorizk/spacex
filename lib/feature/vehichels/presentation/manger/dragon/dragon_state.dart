part of 'dragon_cubit.dart';

@immutable
sealed class DragonState {}

final class DragonInitial extends DragonState {}

final class DragonLoading extends DragonState {}

final class DragonSuccess extends DragonState {
  final List<DragonModel> dragonList;

  DragonSuccess({required this.dragonList});
}

final class DragonFailure extends DragonState {
  final String errorMessage;

  DragonFailure({required this.errorMessage});
}
