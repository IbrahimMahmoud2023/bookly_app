import 'package:bookely_app/features/home/presentation/view/wigdets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 24),
          child: Column(
              children: [
                CustomBookDetailsAppBar(),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.22),
                  child: CustomBookImage(),
                ),
              ]
          ),
        )
    );
  }

}


