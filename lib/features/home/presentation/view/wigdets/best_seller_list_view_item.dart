import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/style.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


