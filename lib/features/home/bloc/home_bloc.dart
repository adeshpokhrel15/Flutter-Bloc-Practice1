import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishListButtonClickedEvent>(homeProductWishListButtonClickedEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
    on<HomeProductWishListNavigateEvent>(homeProductWishListNavigateEvent);
    on<HomeProductCartNavigateEvent>(homeProductCartNavigateEvent);
  }

  FutureOr<void> homeProductWishListButtonClickedEvent(HomeProductWishListButtonClickedEvent event, Emitter<HomeState> emit) {
    print("======== wish list clicked =========");
  }

  FutureOr<void> homeProductCartButtonClickedEvent(HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
    print("======= cart clicked =======");
  }

  FutureOr<void> homeProductCartNavigateEvent(HomeProductCartNavigateEvent event, Emitter<HomeState> emit) {
    print("=======cart navigate=======");
    emit(HomeNavigateToCartActionState());
  }

  FutureOr<void> homeProductWishListNavigateEvent(HomeProductWishListNavigateEvent event, Emitter<HomeState> emit) {
    print("=======wishlist navigate=======");
    emit(HomeNavigateToWishlistPageActionState());
  }
}
