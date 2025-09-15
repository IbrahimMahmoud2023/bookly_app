import 'package:bookely_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';
import '../../../../home/presentation/view/wigdets/book_list_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 24 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomSearchTextField(),
          const SizedBox(height: 16),
          Text('Search Result',style: Styles.textStyle18),
          const SizedBox(height: 16),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
