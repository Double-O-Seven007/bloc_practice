// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeIntialEvent extends HomeEvent {}

class HomeWishListClickedEvent extends HomeEvent {
  final ProductModel clickedProduct;
  HomeWishListClickedEvent({
    required this.clickedProduct,
  });
}

class HomeCartClickedEvent extends HomeEvent {
  final ProductModel clickedProduct;
  HomeCartClickedEvent({
    required this.clickedProduct,
  });
}

class HomeWishlistNavigationButtonEvent extends HomeEvent {}

class HomeCartNavigationButtonEvent extends HomeEvent {}
