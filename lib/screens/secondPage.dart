import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../globals/globals.dart';


class secondpage extends StatefulWidget {
  secondpage({Key? key, required this.insideSliderIndex}) : super(key: key);
  int insideSliderIndex = 0;
  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.opaqueSeparator,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(
          "Carousel Slider",
          style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Center(
          child: CarouselSlider.builder(
            itemCount: 6,
            options: CarouselOptions(height: 500, autoPlay: true),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 250,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  details[widget.insideSliderIndex]
                                  [itemIndex]["image"],
                                ))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(details[widget.insideSliderIndex][itemIndex]
                      ["name"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                    ],
                  ),
                ),
          ),
        ),
      ),
    );
  }
}