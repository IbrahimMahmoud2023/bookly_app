import 'package:bookely_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/view/wigdets/book_list_item.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}



