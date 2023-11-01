abstract class NewsState {}

class NewsInitialStates extends NewsState {}

class NewsBottomNavStates extends NewsState {}

class NewsGetBusinessSuccessStates extends NewsState {}

class NewsGetBusinessLoadingStates extends NewsState {}

class NewsGetBusinessErrorStates extends NewsState {
  final String error;

  NewsGetBusinessErrorStates(this.error);
}
