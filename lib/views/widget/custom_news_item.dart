import 'package:flutter/material.dart';

class CustomNewsItem extends StatelessWidget {
  const CustomNewsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16,bottom: 16,top: 16),
      child: Row(
        children: [
          Container(
            width: 132,
            height: 132,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://thumbs.dreamstime.com/b/news-woodn-dice-depicting-letters-bundle-small-newspapers-leaning-left-dice-34802664.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 132,
              padding: const EdgeInsets.only(left: 6, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      'Head Line Head Line Head Line Head Line Head Line Head Line Head Line Head Line Head Line',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: Text(
                      textAlign: TextAlign.left,
                      'Published at',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
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
