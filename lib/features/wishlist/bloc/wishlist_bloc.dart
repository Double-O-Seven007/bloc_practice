import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_practice/data/cart_items.dart';
import 'package:bloc_practice/data/wishlist_items.dart';
import 'package:bloc_practice/features/cart/bloc/cart_bloc.dart';
import 'package:bloc_practice/features/home/models/home_product_model.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitialState()) {
    on<WishlistIntialEvent>(wishlistIntialEvent);
    on<WishlistDeleteEvent>(wishlistDeleteEvent);
  }

  FutureOr<void> wishlistIntialEvent(
      WishlistIntialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> wishlistDeleteEvent(
      WishlistDeleteEvent event, Emitter<WishlistState> emit) {
    wishlistItems.remove(event.productModel);
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }
}
