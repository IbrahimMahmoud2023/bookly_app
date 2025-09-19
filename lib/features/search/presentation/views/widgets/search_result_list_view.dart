import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/widgets/custom_circle_prograss_indicator.dart';
import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../../../home/presentation/manager/search_books_cubit/search_book_cubit.dart';
import '../../../../home/presentation/view/wigdets/book_list_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if(state is SearchBookSuccess){
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        }else if(state is SearchBookFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return CustomCircleProgressIndicator();
        }

      },
    );
  }
}
