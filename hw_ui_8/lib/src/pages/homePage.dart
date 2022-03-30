import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final t = [
    {
      'title': '5 cheap eats ',
      'catalog': 'Travel',
      'img_u': 'user3.webp',
      'img': 'lll.webp',
      'description':
          'The definition of a description is a statement that gives details about someone or something. An example of description is a story about the places visited on a family trip.',
    },
    {
      'title': 'Soft',
      'catalog': 'Unversity',
      'img_u': 'profile.png',
      'img': 'bar.jpg',
      'description':
          'The definition of a description is a statement that gives details about someone or something. An example of description is a story about the places visited on a family trip.',
    },
    {
      'title': 'Medium',
      'catalog': 'Travel',
      'img_u': 'user2.jpg',
      'img': 'unnamed.png',
      'description':
          'The definition of a description is a statement that gives details about someone or something. An example of description is a story about the places visited on a family trip.',
    },
    {
      'title': 'Hard',
      'catalog': 'Travel',
      'img_u': 'profile.png',
      'img': 'img_2.jpg',
      'description':
          'An example of description is a story about the places visited on a family trip.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text('Cleveland'),
        actions: [
          Icon(
            Icons.more_vert,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('ADD ENTRY'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h,
              width: w,
              child: ListView.builder(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                itemBuilder: (context, index) => Container(
                  height: h * 0.53,
                  margin: EdgeInsets.only(
                    right: 10,
                    left: 10,
                    bottom: 20,
                  ),
                  // padding: EdgeInsets.symmetric(
                  //   horizontal: 10,
                  // ),

                  child: SizedBox(
                    width: 20,
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  topRight: Radius.circular(4)),
                              // child: CachedNetworkImage(
                              //   imageUrl: t[index]['img'],
                              //   fit: BoxFit.fill,
                              //   progressIndicatorBuilder:
                              //       (context, url, downloadProgress) => Center(
                              //     child: CircularProgressIndicator(
                              //         value: downloadProgress.progress),
                              //   ),
                              //   errorWidget: (context, url, error) =>
                              //       Icon(Icons.error),
                              // ),
                              child: Image.asset(
                                'img/${t[index]["img"]}',
                                fit: BoxFit.cover,
                                height: 200,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${t[index]["catalog"]}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '${t[index]["title"]}',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('img/${t[index]["img_u"]}'),
                                )
                                // Image.asset(
                                //   'img/user2.jpg',
                                //   height: 50,
                                //   width: 50,
                                // ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: Text(
                              '${t[index]["description"]}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: SizedBox(
                                  height: 20,
                                  width: 25,
                                  child: Divider(
                                    color: Colors.red[500],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  right: 8,
                                ),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.deepPurpleAccent),
                                      textStyle: MaterialStateProperty.all(
                                          TextStyle(fontSize: 30))),
                                  onPressed: () {},
                                  child: Text(
                                    'VIEW ENTER',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'LEARN MOOR',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: SizedBox(
                                  width: w * 0.2,
                                  child: Divider(
                                    color: Colors.red[300],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  decoration: BoxDecoration(
                      // color: t[index]['color'] as Color,
                      //color: Colors.green,
                      borderRadius: BorderRadius.circular(6)),
                ),
                itemCount: t.length,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                primary: false,
                shrinkWrap: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
