import 'package:flutter/material.dart';
import 'package:yummy/app/data/image_path.dart';

class SliderScreen extends StatelessWidget {
  List imageList = [
    {'image_path1' : ImagePath.homepage2},
    {'image_path1' : ImagePath.homepage2},
    {'image_path1' : ImagePath.homepage2},
    {'image_path1' : ImagePath.homepage2},
  ];

  final CarouselController  carouselController = CarouselController();
  int currentIndex =0;
   SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: (){
                  print(currentIndex);
                },
              //  child: CarouselSlider(items: items, options: options),
              )
            ],
          )
        ],
      ),

    );
  }
}
