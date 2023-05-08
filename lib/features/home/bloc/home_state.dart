part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState{}

class HomeInitial extends HomeState {} 


// load gareko dekhaina
class HomeLoadingState extends HomeState{}

//fetch the data from the server when data is received  
class HomeLoadedSuccesState extends HomeState{}

// when error occurs
class HomeErrorState extends HomeState{}

//navigate garna chai actions state use garne
class HomeNavigateToWishlistPageActionState extends HomeActionState{}


class HomeNavigateToCartActionState extends HomeActionState{}

