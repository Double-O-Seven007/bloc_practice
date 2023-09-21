part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistEvent {}

sealed class WishlistActionEvent extends WishlistEvent {}

class WishlistIntialEvent extends WishlistEvent {}

class WishlistSucccessEvent extends WishlistEvent {
  final List<ProductModel> wishlistItems;

  WishlistSucccessEvent({required this.wishlistItems});
}
