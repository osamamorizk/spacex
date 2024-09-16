part of 'past_launch_cubit.dart';

sealed class PastLaunchState {}

final class PastLaunchInitial extends PastLaunchState {}

final class PastLaunchLaoding extends PastLaunchState {}

final class PastLaunchSuccess extends PastLaunchState {
  final List launches;

  PastLaunchSuccess({required this.launches});
}

final class PastLaunchFailure extends PastLaunchState {
  final String errorMessage;

  PastLaunchFailure({required this.errorMessage});
}
