import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/model/series.dart';
import 'package:movie_app/screens/detail_screen.dart';


class TopRatedList extends StatelessWidget {

  final int index;
  TopRatedList(this.index);


  @override
  Widget build(BuildContext context) {
    return Container(
                    padding: const EdgeInsets.all(10),
                    width: 160,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(DetailsScreen.routeName, arguments: {
                          'id': topRatedSeriesList[index].id,
                          'title':topRatedSeriesList[index].title,
                          'imageUrl':topRatedSeriesList[index].imageUrl,
                          'description':topRatedSeriesList[index].description,
                          'rating':topRatedSeriesList[index].rating,
                          'year':topRatedSeriesList[index].year,
                          'episode':topRatedSeriesList[index].episode,
                        },
                        );
                      },
                    child: Column(
                      children: <Widget> [
                        Card(
                          elevation: 10,
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(5),
                               image: DecorationImage(
                                fit:BoxFit.cover,
                                image:NetworkImage(
                                  topRatedSeriesList[index].imageUrl
                                ),
                               )
                              )
                          ),
                        ),
                        SizedBox(height:10,),
                        Text(
                          topRatedSeriesList[index].title,
                          style:TextStyle(
                            fontSize:16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                      ),
                    ),
                  );
  }
}