import 'package:flutter/material.dart';
import 'package:vet_clinic_project/home_draft/story_content.dart';
import 'package:vet_clinic_project/home_page/home_page_data.dart';

class HomeDraftt extends StatefulWidget {
  const HomeDraftt({Key? key}) : super(key: key);

  @override
  _HomeDrafttState createState() => _HomeDrafttState();
}

class _HomeDrafttState extends State<HomeDraftt> {
  int currentPage = 0;
  List<Map<String, String>> storyData = [
    {
      "title": "Cat Story",
      "content":
          "is simply dummy text of the\nprinting and typesetting\nindustry. Lorem Ipsum has\nbeen the industry's standard\ndummy text ever since the\n1500s, when an unknown\nprinter took a galley.",
      "image": "images/story1.png",
    },
    {
      "title": "Tortoise Story",
      "content":
          "is simply dummy text of the\nprinting and typesetting\nindustry. Lorem Ipsum has\nbeen the industry's standard\ndummy text ever since the\n1500s, when an unknown\nprinter took a galley.",
      "image": "images/story2.png",
    },
    {
      "title": "Dog Story",
      "content":
          "is simply dummy text of the\nprinting and typesetting\nindustry. Lorem Ipsum has\nbeen the industry's standard\ndummy text ever since the\n1500s, when an unknown\nprinter took a galley.",
      "image": "images/story3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: getWorkHours(),
                  ),
                  Container(
                    child: getCat(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: getAppointment(),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: getConsultation(),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: getHealthRecord(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: storyData.length,
                itemBuilder: (context, index) => StoryContent(
                  text: storyData[index]['title'],
                  //text: storyData[index]['content'],
                  image: storyData[index]['image'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
