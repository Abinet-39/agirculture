import 'package:agriculture/app/app_constants.dart';
import 'package:agriculture/ui/views/detail/chart_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'detail_viewmodel.dart';

class DetailView extends StatelessWidget {
  const DetailView({required this.index, Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewModel>.reactive(
      viewModelBuilder: () => DetailViewModel(),
      builder: (
        BuildContext context,
        DetailViewModel model,
        Widget? child,
      ) {
        return Scaffold(
            body: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: index,
                  child: Image.asset(
                    'assets/images/$index.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                PRODUCT_NAMES[index],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 300,
                      child: VerticalBarLabelChart(
                        model.createSampleData(index),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Day',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ));
      },
    );
  }
}
