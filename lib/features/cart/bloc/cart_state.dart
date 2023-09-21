part of 'cart_bloc.dart';

@immutable
sealed class CartState {}

sealed class CartActionState extends CartState {}

final class CartInitialState extends CartState {}

final class CartSuccessState extends CartState {
  final List<ProductModel> itemsInCart;

  CartSuccessState({required this.itemsInCart});
}
