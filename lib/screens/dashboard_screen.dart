import 'package:flutter/material.dart';
import 'package:movie_app/model/series.dart';
import 'package:movie_app/widget/horizontal_list.dart';
import 'package:movie_app/widget/top_rated_list.dart';
import 'package:movie_app/widget/vertical_list.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Film App'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          )
      ]),
      body: SingleChildScrollView(
        
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recommended', 
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
                ),
            ),
              Container(
                // padding: const EdgeInsets.all(10),
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal ,
                  itemCount: seriesList.length,
                  itemBuilder: (ctx, i) => HorizontalList(i),
    
                )
              ),
              SizedBox(height: 30),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best of 2022', 
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  FlatButton(          
                    child: Text('View All'),
                    onPressed: () {},
                    ),
                ],
                ),
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: bestSeriesList.length,
                itemBuilder: (ctx, i) => VerticalList(i),
                
              ),
            ),
            SizedBox(height:30), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Top Rated Series', 
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  FlatButton(          
                    child: Text('View All'),
                    onPressed: () {},
                    ),
                ],
                ),
            ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal ,
                  itemCount: topRatedSeriesList.length,
                  itemBuilder: (ctx, i) => TopRatedList(i),
                  
                )
              ),          
          ],
        ),
      ),
    );
  }
}