part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

//clicked event
class HomeProductWishListButtonClickedEvent extends HomeEvent {}

class HomeProductCartButtonClickedEvent extends HomeEvent {}


// navigate event
class HomeProductWishListNavigateEvent extends HomeEvent {}

class HomeProductCartNavigateEvent extends HomeEvent {}
