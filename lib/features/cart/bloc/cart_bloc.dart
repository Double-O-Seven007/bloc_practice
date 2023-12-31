import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_practice/data/cart_items.dart';
import 'package:bloc_practice/features/home/models/home_product_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitialState()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartDeleteEvent>(cartDeleteEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(
      CartSuccessState(itemsInCart: cartItems),
    );
  }

  FutureOr<void> cartDeleteEvent(
      CartDeleteEvent event, Emitter<CartState> emit) {
    cartItems.remove(event.productModel);
    emit(CartSuccessState(itemsInCart: cartItems));
  }
}
