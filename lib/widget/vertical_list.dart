import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/model/series.dart';
import 'package:movie_app/screens/detail_screen.dart';

class VerticalList extends StatelessWidget {
  final int index;
  VerticalList(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
                    children: <Widget> [
                      GestureDetector(
                        onTap: () {
                        Navigator.of(context).pushNamed(DetailsScreen.routeName, arguments: {
                          'id': bestSeriesList[index].id,
                          'title':bestSeriesList[index].title,
                          'imageUrl':bestSeriesList[index].imageUrl,
                          'description':bestSeriesList[index].description,
                          'rating':bestSeriesList[index].rating,
                          'year':bestSeriesList[index].year,
                          'episode':bestSeriesList[index].episode,
                        },
                        );
                      },
                        child: Card(
                          elevation: 5,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5)
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(bestSeriesList[index].imageUrl)
                                  )
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget> [
                                    Text(
                                      bestSeriesList[index].title,
                                      style: TextStyle(
                                        fontSize:16, 
                                        fontWeight: FontWeight.bold, 
                                      )
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      width:240,
                                      child: Text(
                                        bestSeriesList[index].description))
                                  ],
                                )
                              ),
                            ]
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                    ],
                    );
  }
}