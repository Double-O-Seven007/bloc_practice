import 'package:bloc_practice/features/cart/bloc/cart_bloc.dart';
import 'package:bloc_practice/features/home/bloc/home_bloc.dart';
import 'package:bloc_practice/features/home/models/home_product_model.dart';
import 'package:flutter/material.dart';

class CartTileWidget extends StatelessWidget {
  final CartBloc cartBloc;
  final ProductModel productModel;
  const CartTileWidget({
    super.key,
    required this.productModel,
    required this.cartBloc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                // width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(productModel.imageURL),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                productModel.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                productModel.description,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '\$ ${productModel.price}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // homeBloc.add(
                          //   HomeWishListClickedEvent(
                          //     clickedProduct: productModel,
                          //   ),
                          // );
                        },
                        icon: const Icon(
                          Icons.favorite_border,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // homeBloc.add(
                          //   HomeCartClickedEvent(clickedProduct: productModel),
                          // );
                        },
                        icon: const Icon(Icons.shopping_cart_outlined),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
