part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistState {}

sealed class WishlistActionState extends WishlistState {}

final class WishlistInitialState extends WishlistState {}

class WishlistSuccessState extends WishlistState {
  final List<ProductModel> wishlistItems;

  WishlistSuccessState({required this.wishlistItems});
}
