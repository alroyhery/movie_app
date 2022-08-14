// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:movie_app/widget/horizontal_list.dart';


class DetailsScreen extends StatelessWidget {
  static const routeName = '/series-details';
  @override
  Widget build(BuildContext context) {
    final routeArgs =  ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    final image = routeArgs['imageUrl'];
    final description = routeArgs['description'];
    final rating = routeArgs['rating'];
    final year = routeArgs['year'];
    final eps = routeArgs['episode'];
    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      appBar: AppBar(
        // title: Text('Series Details'),
        backgroundColor: Color(0xfff4f4f4),
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Center(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          '$image',
                          )
                      )
                     ),
                  ),
                ),
                ),
                const FavoriteButton(),
              ],
            ),
            SizedBox(height: 20),
            Text(
              '$title',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.6,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Card(
                  elevation: 5,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10, 
                      horizontal: 20
                    ),
                    child: Column(
                      children: <Widget> [
                        Icon(
                          Icons.timer,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$eps',
                          style: TextStyle(
                            fontSize:14,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10, 
                      horizontal: 20
                    ),
                    child: Column(
                      children: <Widget> [
                        Icon(
                          Icons.calendar_today,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$year',
                          style: TextStyle(
                            fontSize:14,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10, 
                      horizontal: 20
                    ),
                    child: Column(
                      children: <Widget> [
                        Icon(
                          Icons.star,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(height: 10),
                        Text(
                           '$rating',
                          style: TextStyle(
                            fontSize:14,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              '$description',
              style: TextStyle(
                fontSize: 18,
                height: 1.5
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.play_circle_outline,
                  ),
                  Text(
                    'Watch Trailer',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: RaisedButton(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              onPressed: () {},
              color: Colors.yellowAccent,
              textColor: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.play_circle_outline,
                  ),
                  Container(
                    height: 5,
                    width: 5,
                  ),
                  Text(
                    'Watch Now',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);
 
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}
 
class _FavoriteButtonState extends State<FavoriteButton> {
 bool isSelected = false;
 
  @override
  Widget build(BuildContext context) {
    return IconButton(
                    onPressed: () {
                      isSelected = true;
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Added to favorite")));
                    },
                    icon: isSelected
                        ? const Icon(
                      Icons.star,
                      color: Colors.black,
                    )
                        : const Icon(
                      Icons.star_border_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 35,
                  );
  }
}