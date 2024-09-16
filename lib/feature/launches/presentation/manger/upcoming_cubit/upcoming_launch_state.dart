part of 'upcoming_launch_cubit.dart';

@immutable
sealed class UpcomingLaunchState {}

final class UpcomingLaunchInitial extends UpcomingLaunchState {}

final class UpcomingLaunchLaoding extends UpcomingLaunchState {}

final class UpcomingLaunchSuccess extends UpcomingLaunchState {
  final List launches;

  UpcomingLaunchSuccess({required this.launches});
}

final class UpcomingLaunchFailure extends UpcomingLaunchState {
  final String errorMessage;

  UpcomingLaunchFailure({required this.errorMessage});
}
