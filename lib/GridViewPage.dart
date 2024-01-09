import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ShapeModel.dart';

class GridViewPage extends StatefulWidget {
  @override
  State<GridViewPage> createState() {
    return GridViewState();
  }
}

class GridViewState extends State<GridViewPage> {
  List<ShapeModel> shape = [
    ShapeModel(imagename: 'assets/images/circle.png', show: false, name: 'Circle'),
    ShapeModel(imagename: 'assets/images/star.png', show: false, name: 'Star'),
    ShapeModel(imagename: 'assets/images/triangle.png', show: false, name: 'Triangle'),
    ShapeModel(imagename: 'assets/images/Square.png', show: false, name: 'Square'),
    ShapeModel(imagename: 'assets/images/pentagonal.png', show: false, name: 'Pentagonal'),
    ShapeModel(imagename: 'assets/images/rectangular.png', show: false, name: 'Rectangular'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text('Shape Image and Name'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 14.0, // spacing between rows
          crossAxisSpacing: 12.0, // spacing between columns
        ),
        padding: EdgeInsets.all(10.0), // padding around the grid
        itemCount: shape.length, // total number of items
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                shape[index].show = !shape[index].show!;
              });
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(shape[index].imagename!),
                  ),
                  SizedBox(height: 12.0),
                  if (shape[index].show!)
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        shape[index].name!,
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );

        },
      ),
    );
  }
}