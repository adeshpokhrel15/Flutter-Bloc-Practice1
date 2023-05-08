import 'package:bloc_project_practice/features/cart/cart_ui.dart';
import 'package:bloc_project_practice/features/home/bloc/home_bloc.dart';
import 'package:bloc_project_practice/features/wishlist/wishlist_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc homebloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc:homebloc,
      listenWhen: (context,current){
        return current is HomeActionState;
      },
      buildWhen: (context,current){
        return current is !HomeActionState;
      },
      listener: (context,state) {
        if(state is HomeNavigateToCartActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartPage()));
        } 
        else if (state is HomeNavigateToWishlistPageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const WishListPage()));
        }
      },
      builder: (context,state) {
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("Adesh Pasal"),
          actions: [
            IconButton(
              onPressed: () {
                homebloc.add(HomeProductWishListNavigateEvent());
              },
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {
                homebloc.add(HomeProductCartNavigateEvent());
              },
              icon: const Icon(Icons.shopping_bag_outlined),
            ),
          ],
        ),
        
        
      );
      }
      
    );
  }
}