// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistEvent {}

sealed class WishlistActionEvent extends WishlistEvent {}

class WishlistIntialEvent extends WishlistEvent {}

class WishlistDeleteEvent extends WishlistEvent {
  final ProductModel productModel;

  WishlistDeleteEvent({required this.productModel});
}

class WishlistSucccessEvent extends WishlistEvent {
  final List<ProductModel> wishlistItems;

  WishlistSucccessEvent({required this.wishlistItems});
}
