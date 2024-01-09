import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShapeModel.dart';

class Shapes extends StatefulWidget{
  @override
  State<Shapes> createState() {
return ShapesState();
  }

}
class ShapesState extends State<Shapes>{

  // Map<String, bool> selectedImages = {
  //   'Circle': false,
  //   'Star': false,
  //   'Triangle': false,
  //   'Square': false,
  //   'Pentagonal': false,
  //   'Rectangular': false,
  // };
  int index=0;

  List<ShapeModel> shape = [
    ShapeModel(imagename: 'Circle', show: false),
    ShapeModel(imagename: 'Star', show: false),
    ShapeModel(imagename: 'Triangle', show: false),
    ShapeModel(imagename: 'Square', show: false),
    ShapeModel(imagename: 'Pentagonal', show: false),
    ShapeModel(imagename: 'Rectangle', show: false),
  ];

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text('Shape Image and Name'),
      ),
      //************************************************************************************************
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      children: [
                        Image.asset('assets/images/circle.png',),
                        SizedBox(height: 8.0),
                        if (shape[0].show == true)
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Circle',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                         shape[0].show = !shape[0].show!;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      children: [
                        Image.asset('assets/images/star.png',),
                        SizedBox(height: 8.0),
                        if (shape[1].show == true)
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Star',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        shape[1].show = !shape[1].show!;
                      });
                    },
                  ),
                ),
              ),            ],
          ),
          //************************************************************************************************
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      children: [
                        Image.asset('assets/images/triangle.png',),
                        SizedBox(height: 8.0),
                        if (shape[2].show == true)
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Triangle',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        shape[2].show = !shape[2].show!;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      children: [
                        Image.asset('assets/images/Square.png',),
                        SizedBox(height: 8.0),
                        if (shape[3].show == true)
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Square',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        shape[3].show = !shape[3].show!;
                      });
                    },
                  ),
                ),
              ),            ],
          ),
          //************************************************************************************************
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      children: [
                        Image.asset('assets/images/pentagonal.png',),
                        SizedBox(height: 8.0),
                        if (shape[4].show == true)
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              ' Pentagonal',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        shape[4].show = !shape[4].show!;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      children: [
                        Image.asset('assets/images/rectangular.png',),
                        SizedBox(height: 8.0),
                        if (shape[5].show == true)
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Rectangular',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        shape[5].show = !shape[5].show!;
                      });
                    },
                  ),
                ),
              ),            ],
          ),
        ],
      ),
    );
  }
}