import 'package:bloc_practice/features/wishlist/bloc/wishlist_bloc.dart';
import 'package:bloc_practice/features/wishlist/widgets/wishlist_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final WishlistBloc wishlistBloc = WishlistBloc();
  @override
  void initState() {
    wishlistBloc.add(WishlistIntialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WishlistBloc, WishlistState>(
      bloc: wishlistBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      listenWhen: (previous, current) => current is WishlistActionState,
      buildWhen: (previous, current) => current is! WishlistActionState,
      builder: (context, state) {
        switch (state.runtimeType) {
          case WishlistSuccessState:
            final successState = state as WishlistSuccessState;
            return Scaffold(
              appBar: AppBar(
                title: const Text('Wishlist Screen'),
              ),
              body: ListView.builder(
                itemCount: successState.wishlistItems.length,
                itemBuilder: (context, index) {
                  return WishlistTileWidget(
                    productModel: successState.wishlistItems[index],
                    wishlistBloc: wishlistBloc,
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
