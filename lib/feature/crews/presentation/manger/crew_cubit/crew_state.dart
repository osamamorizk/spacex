part of 'crew_cubit.dart';

@immutable
sealed class CrewState {}

final class CrewInitial extends CrewState {}

final class CrewLoading extends CrewState {}

final class CrewSuceess extends CrewState {
  final List<CrewModel> crewsList;

  CrewSuceess({required this.crewsList});
}

final class CrewFailure extends CrewState {
  final String errorMessage;

  CrewFailure({required this.errorMessage});
}
