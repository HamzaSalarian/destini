import 'package:flutter/material.dart';
import 'story.dart';
import 'story_brain.dart';

void main() {
  runApp(const Destini());
}

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Destini_page(),
    );
  }
}

class Destini_page extends StatefulWidget {
  const Destini_page({super.key});

  @override
  State<Destini_page> createState() => _Destini_pageState();
}

class _Destini_pageState extends State<Destini_page> {
  storyBrain newStory = storyBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    newStory.getStroyTitle(),
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      setState(() {
                        newStory.nextStory(1);
                      });
                    },
                    child: Text(
                      newStory.getChoice1(),
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Visibility(
                    visible: newStory.buttonShouldBeVisible(),
                    child: TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        setState(() {
                          newStory.nextStory(2);
                        });
                      },
                      child: Text(
                        newStory.getChoice2(),
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
