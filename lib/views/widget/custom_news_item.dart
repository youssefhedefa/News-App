import 'package:flutter/material.dart';

class CustomNewsItem extends StatelessWidget {
  const CustomNewsItem({Key? key, required this.item}) : super(key: key);

  final Map<dynamic,dynamic> item;
  @override
  Widget build(BuildContext context) {
     if(item['urlToImage'] == null)
     {
       item['urlToImage'] = 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png';
     }
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16,bottom: 16,top: 16),
      child: Row(
        children: [
          Container(
            width: 132,
            height: 132,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(
                  item['urlToImage']
                ),
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
                children: [
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      '${item['title']}',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left: 120),
                    child: Text(
                      textAlign: TextAlign.left,
                      '${item['publishedAt']}',
                      style: const TextStyle(
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
