abstract class Failure {
  const Failure();
}

class NoInternetConnectionFailure extends Failure {
  const NoInternetConnectionFailure();
}

class CacheFailure extends Failure {
  const CacheFailure();
}
