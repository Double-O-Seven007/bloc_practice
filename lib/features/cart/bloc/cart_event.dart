part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class CartInitialEvent extends CartEvent {}

class CartDeleteEvent extends CartEvent {
  final ProductModel productModel;

  CartDeleteEvent({required this.productModel});
}
