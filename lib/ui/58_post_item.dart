import 'package:flutter/material.dart';

import '../model/58_post_model.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(post.id),
          Container(
            width: (MediaQuery.of(context).size.width - 40) * 7 / 8,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                post.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text(post.body),
            ]),
          )
        ],
      ),
    );
  }
}
