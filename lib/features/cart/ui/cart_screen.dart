import 'package:bloc_practice/features/cart/bloc/cart_bloc.dart';
import 'package:bloc_practice/features/cart/ui/widgets/cart_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final CartBloc cartBloc = CartBloc();
  @override
  void initState() {
    cartBloc.add(CartInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      bloc: cartBloc,
      listenWhen: (previous, current) => current is CartActionState,
      buildWhen: (previous, current) => current is! CartActionState,
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.runtimeType) {
          case CartSuccessState:
            final CartSuccessState successState = state as CartSuccessState;
            return Scaffold(
              appBar: AppBar(
                title: const Text('Cart Screen'),
              ),
              body: ListView.builder(
                itemCount: successState.itemsInCart.length,
                itemBuilder: (context, index) {
                  return CartTileWidget(
                    productModel: successState.itemsInCart[index],
                    cartBloc: cartBloc,
                  );
                },
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
