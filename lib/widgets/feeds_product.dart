import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class FeedProducts extends StatefulWidget {
  const FeedProducts({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<FeedProducts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 290,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Theme.of(context).backgroundColor,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                        minHeight: 100,
                        maxHeight: MediaQuery.of(context).size.height * 0.3),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                // Badge(
                //   toAnimate: true,
                //   shape: BadgeShape.square,
                //   badgeColor: Colors.pink,
                //   borderRadius:
                //       BorderRadius.only(bottomRight: Radius.circular(8)),
                //   badgeContent:
                //       Text('New', style: TextStyle(color: Colors.white)),
                // ),
                // badges.Badge(
                //   child: Container(
                //     height: 50,
                //     width: 50,
                //   ),
                //   badgeContent: Text(
                //     'New',
                //     style: TextStyle(
                //       color: Colors.white,
                //     ),
                //   ),
                // )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              margin: EdgeInsets.only(left: 5, bottom: 2, right: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Description',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '\$ 555.5',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity: 12left',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      Material(
                        child: InkWell(
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                          ),
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
