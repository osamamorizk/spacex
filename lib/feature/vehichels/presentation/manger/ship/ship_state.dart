part of 'ship_cubit.dart';

@immutable
sealed class ShipState {}

final class ShipInitial extends ShipState {}

final class ShipLoading extends ShipState {}

final class ShipSuccess extends ShipState {
  final List<ShipModel> shipsList;

  ShipSuccess({required this.shipsList});
}

final class ShipFailure extends ShipState {
  final String errorMessage;

  ShipFailure({required this.errorMessage});
}
