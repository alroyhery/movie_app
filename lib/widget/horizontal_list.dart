import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/model/series.dart';
import 'package:movie_app/screens/detail_screen.dart';


class HorizontalList extends StatelessWidget {

  final int index;
  HorizontalList(this.index);


  @override
  Widget build(BuildContext context) {
    return Container(
                    padding: const EdgeInsets.all(10),
                    width: 160,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(DetailsScreen.routeName, arguments: {
                          'id': seriesList[index].id,
                          'title':seriesList[index].title,
                          'imageUrl':seriesList[index].imageUrl,
                          'description':seriesList[index].description,
                          'rating':seriesList[index].rating,
                          'year':seriesList[index].year,
                          'episode':seriesList[index].episode,
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
                                    seriesList[index].imageUrl
                                  ),
                                 )
                                )
                            ),
                          ),
                          SizedBox(height:10,),
                          Text(
                            seriesList[index].title,
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