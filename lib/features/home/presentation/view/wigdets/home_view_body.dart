import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'feature_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListViewItem(),
          const SizedBox(height: 50),
          Text('Best Seller', style: Styles.textStyle18),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
