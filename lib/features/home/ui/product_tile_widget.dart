// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_project_practice/features/home/model/home_product_data_model.dart';
import 'package:flutter/material.dart';

import '../bloc/home_bloc.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductDataModel productData;
  final HomeBloc homeBloc;
  const ProductTileWidget({
    Key? key,
    required this.productData,
    required this.homeBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(productData.image))),
            ),
            const SizedBox(height: 20),
            Text(productData.name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(productData.description),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${productData.price}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          homeBloc.add(HomeProductWishListButtonClickedEvent(
                            productData,
                          ));
                        },
                        icon: const Icon(Icons.favorite_border)),
                    IconButton(
                        onPressed: () {
                          homeBloc.add(
                              HomeProductCartButtonClickedEvent(productData));
                        },
                        icon: const Icon(Icons.shopping_bag_outlined)),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
