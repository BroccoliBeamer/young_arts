import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final dynamic errorMessage;
  final StackTrace? stackTrace;

  const Failure({this.errorMessage, this.stackTrace});
  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class RemoteConfigFailure extends Failure {
  const RemoteConfigFailure({String? super.errorMessage, super.stackTrace});
  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class CacheFailure extends Failure {
  const CacheFailure({String? super.errorMessage, super.stackTrace});
  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class ApiFailure extends Failure {
  const ApiFailure({super.errorMessage, super.stackTrace});
  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class SubscriptionFailure extends Failure {
  const SubscriptionFailure({super.errorMessage, super.stackTrace});
  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class GeoLocationFailure extends Failure {
  const GeoLocationFailure({super.errorMessage, super.stackTrace});
  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class TextToSpeechFailure extends Failure {
  const TextToSpeechFailure({super.errorMessage, super.stackTrace});
}

class StreamChatFailure extends Failure {
  const StreamChatFailure({super.errorMessage, super.stackTrace});

  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class WatchFailure extends Failure {
  const WatchFailure({super.errorMessage, super.stackTrace});

  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class NotificationFailure extends Failure {
  const NotificationFailure({super.errorMessage, super.stackTrace});

  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class DeepLinkFailure extends Failure {
  const DeepLinkFailure({super.errorMessage, super.stackTrace});

  @override
  List<Object?> get props => [errorMessage, stackTrace];
}
