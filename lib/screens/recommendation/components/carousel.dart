import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yogaon/components/classes/classes_components.dart';
import 'package:yogaon/components/classes/instructor_yoga_component.dart';
import 'package:yogaon/size_config.dart';

final List<Container> imgList = [
  Container(
    padding: EdgeInsets.all(getProportionalWidth(5)),
    child: ClassesComponent(),
  ),
  Container(
    padding: EdgeInsets.all(getProportionalWidth(5)),
    child: ClassesComponent(),
  ),
  Container(
    padding: EdgeInsets.all(getProportionalWidth(5)),
    child: ClassesComponent(),
  ),
];

// final List<Widget> imageSliders = imgList.map((item) => Container(
//   child: Container(
//     margin: EdgeInsets.all(5.0),
//     child: ClipRRect(
//         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//         child: Stack(
//           children: <Widget>[
//             Image.network(item, fit: BoxFit.cover, width: 1000.0),
//             Positioned(
//               bottom: 0.0,
//               left: 0.0,
//               right: 0.0,
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Color.fromARGB(200, 0, 0, 0),
//                       Color.fromARGB(0, 0, 0, 0)
//                     ],
//                     begin: Alignment.bottomCenter,
//                     end: Alignment.topCenter,
//                   ),
//                 ),
//                 padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                 child: Text(
//                   'No. ${imgList.indexOf(item)} image',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         )
//     ),
//   ),
// )).toList();

class CustomCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.7,
              height: getProportionateHeight(370),
              autoPlay: true,
              aspectRatio: 1.61,
              enlargeCenterPage: true,
            ),
            items: imgList,
          ),
        ],
      ),
    );
  }
}
