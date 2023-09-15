import 'package:bloc_practice/features/cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = CartBloc();
    return BlocConsumer<CartBloc, CartState>(
      bloc: cartBloc,
      // listenWhen: (previous, current) => current is CartBlocAtionState,
      // buildWhen: (previous, current) => current is !CartBlocActionState,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart Screen'),
          ),
        );
      },
    );
  }
}
