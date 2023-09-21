// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

sealed class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSuccessState extends HomeState {
  final List<ProductModel> products;
  HomeLoadedSuccessState({
    required this.products,
  });
}

class HomeErrorState extends HomeState {}

//Action States
class HomeNavigateToWishlistScreenActionState extends HomeActionState {}

class HomeNavigateCartScreenActionState extends HomeActionState {}

class HomeItemAddedToCartActionState extends HomeActionState {}

class HomeWishlistedItemActionState extends HomeActionState {}
