import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';
import 'feature_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CustomAppBar(),
          FeaturedBooksListViewItem()
        ]
    );
  }
}


