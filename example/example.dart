import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delicious Ghanaian Meals"),
      ),
      body: Container(
        margin: EdgeInsets.all(
          8,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: 300,
              child: StoryView(
                controller: controller,
                storyItems: [
                  StoryItem.text(
                    title: "Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
                    backgroundColor: Colors.orange,
                    roundedTop: true,
                  ),
                  // StoryItem.inlineImage(
                  //   NetworkImage(
                  //       "https://image.ibb.co/gCZFbx/Banku-and-tilapia.jpg"),
                  //   caption: Text(
                  //     "Banku & Tilapia. The food to keep you charged whole day.\n#1 Local food.",
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       backgroundColor: Colors.black54,
                  //       fontSize: 17,
                  //     ),
                  //   ),
                  // ),
                  StoryItem.inlineImage(
                    url: "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
                    controller: controller,
                    caption: Text(
                      "Omotuo & Nkatekwan; You will love this meal if taken as supper.",
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  StoryItem.inlineImage(
                    url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
                    controller: controller,
                    caption: Text(
                      "Hektas, sektas and skatad",
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
                onStoryShow: (s) {
                  print("Showing a story");
                },
                onComplete: () {
                  print("Completed a cycle");
                },
                progressPosition: ProgressPosition.bottom,
                repeat: false,
                inline: true,
              ),
            ),
            Material(
              child: InkWell(
                //onTap: () {
                //  Navigator.of(context).push(
                //      MaterialPageRoute(builder: (context) => MoreStories()));
                //},
                child: Container(
                  decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "View more stories",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
