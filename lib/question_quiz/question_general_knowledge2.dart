import 'package:flutter/material.dart';
import '../screen/quiz_screen.dart';
import '../screen/result_screen.dart';

import '../quiz.dart';

class QuestionGeneralKnowledge extends StatefulWidget {
  static const routeName = 'question-tech';

  @override
  _QuestionGeneralKnowledgeState createState() =>
      _QuestionGeneralKnowledgeState();
}

List<Map<String, Object>> questions = [
  {
    "questionText":
        "Which civil rights activist was famous for refusing to give up her seat on a bus?",
    "answers": [
      {'text': 'Dorothy Day', 'Score': 0},
      {'text': 'Rosa Parks', 'Score': 10},
      {'text': 'Jane Fonda', 'Score': 0},
      {'text': 'Emma Willard', 'Score': 0},
    ],
  },
  {
    "questionText": "Which of these letters is not a vowel ?",
    "answers": [
      {'text': 'O', 'Score': 0},
      {'text': 'W', 'Score': 10},
      {'text': 'A', 'Score': 0},
      {'text': 'I', 'Score': 0},
    ],
  },
  {
    "questionText": "Who was the original \"King\" of rock n' roll?",
    "answers": [
      {'text': 'Steven Tyler', 'Score': 0},
      {'text': 'Michael Jackson', 'Score': 0},
      {'text': 'Mick Jagger', 'Score': 0},
      {'text': 'Elvis Presley', 'Score': 10},
    ],
  },
  {
    "questionText":
        "Agent 007, featured in many movies dating back to 1962, is known as _______ Bond?",
    "answers": [
      {'text': 'John', 'Score': 0},
      {'text': 'Benedict', 'Score': 0},
      {'text': 'James', 'Score': 10},
      {'text': 'Elizier', 'Score': 0},
    ],
  },
  {
    "questionText":
        "What flightless bird went extinct in the 1660s and has a reputation for stupidity?",
    "answers": [
      {'text': 'The dodo bird.', 'Score': 10},
      {'text': 'The Labrador duck.', 'Score': 0},
      {'text': 'The laughing owl.', 'Score': 0},
      {'text': 'The passenger pigeon.', 'Score': 0},
    ],
  },
  {
    "questionText":
        "What plant is traditionally the primary ingredient in wine?",
    "answers": [
      {'text': 'Agave', 'Score': 0},
      {'text': 'Grape', 'Score': 10},
      {'text': 'Peach', 'Score': 0},
      {'text': 'Plum', 'Score': 0},
    ],
  },
  {
    "questionText":
        "The human brain communicates with the rest of the body through networks of what?",
    "answers": [
      {'text': 'Tendons', 'Score': 0},
      {'text': 'Nerves', 'Score': 10},
      {'text': 'Muscles', 'Score': 0},
      {'text': 'Lipids', 'Score': 0},
    ],
  },
  {
    "questionText":
        "The poster for which film from the 1950s features three skipping characters, all dressed in bright yellow raincoats and swinging umbrellas?",
    "answers": [
      {'text': '\"Singin\' in the Rain\"', 'Score': 10},
      {'text': '"Sunset Boulevard"', 'Score': 0},
      {'text': '"Vertigo"', 'Score': 0},
      {'text': '"A Streetcar Named Desire"', 'Score': 0},
    ],
  },
  {
    "questionText":
        "What chemical is added to U.S. water supplies in the hopes of improving dental health?",
    "answers": [
      {'text': 'Chlorine', 'Score': 0},
      {'text': 'Fluoride', 'Score': 10},
      {'text': 'Bromine', 'Score': 0},
      {'text': 'Hydrogen', 'Score': 0},
    ],
  },
  {
    "questionText":
        "The famous \"I want YOU for the U.S. Army\" poster from WWI features an image of whom?",
    "answers": [
      {'text': 'Abraham Lincoln', 'Score': 0},
      {'text': 'Uncle Sam', 'Score': 10},
      {'text': 'George Washington', 'Score': 0},
      {'text': 'An unnamed soldier', 'Score': 0},
    ],
  },
  {
    "questionText": "Which of these was not one of Snow White's seven dwarfs?",
    "answers": [
      {'text': 'Dopey', 'Score': 0},
      {'text': 'Sappy', 'Score': 10},
      {'text': 'Sneezy', 'Score': 0},
      {'text': 'Grumpy', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Newton is said to have been inspired by what to describe the theory of gravity?",
    "answers": [
      {'text': 'Ladder', 'Score': 0},
      {'text': 'Hailstone', 'Score': 0},
      {'text': 'Apple', 'Score': 10},
      {'text': 'Rock', 'Score': 0},
    ],
  },
  {
    "questionText": "What is the head of the Roman Catholic Church called?",
    "answers": [
      {'text': 'Master', 'Score': 0},
      {'text': 'Cardinal', 'Score': 0},
      {'text': 'Preacher', 'Score': 0},
      {'text': 'Pope', 'Score': 10},
    ],
  },
  {
    "questionText":
        "Which U.S. president is thought to have taught himself how to read and write?",
    "answers": [
      {'text': 'Woodrow Wilson', 'Score': 0},
      {'text': 'Abraham Lincoln', 'Score': 10},
      {'text': 'Theodore Roosevelt', 'Score': 0},
      {'text': 'John Adams', 'Score': 0},
    ],
  },
  {
    "questionText": "Which English king was famous for beheading his wives?",
    "answers": [
      {'text': 'King Henry VIII', 'Score': 10},
      {'text': 'King Edward I', 'Score': 0},
      {'text': 'King James III', 'Score': 0},
      {'text': 'King Alfred the Great', 'Score': 0},
    ],
  },
  {
    "questionText":
        "According to the Big Bang Theory, how did the universe begin?",
    "answers": [
      {'text': 'A rain storm.', 'Score': 0},
      {'text': 'An explosion.', 'Score': 10},
      {'text': 'A slow, calm expansion.', 'Score': 0},
      {'text': 'A meteor shower.', 'Score': 0},
    ],
  },
  {
    "questionText":
        "In the \"Iliad,\" Greek forces besiege the people of what kingdom?",
    "answers": [
      {'text': 'Persia', 'Score': 0},
      {'text': 'Troy', 'Score': 10},
      {'text': 'Babylon', 'Score': 0},
      {'text': 'Paris', 'Score': 0},
    ],
  },
  {
    "questionText": "Which American town was famous for its witch trials?",
    "answers": [
      {'text': 'Nashville, TN', 'Score': 0},
      {'text': 'Charleston, SC', 'Score': 0},
      {'text': 'Salem, MA', 'Score': 10},
      {'text': 'Portland, OR', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Yellowstone National Park is in which of the following states?",
    "answers": [
      {'text': 'California', 'Score': 0},
      {'text': 'Ohio', 'Score': 0},
      {'text': 'Wyoming', 'Score': 10},
      {'text': 'Georgia', 'Score': 0},
    ],
  },
  {
    "questionText": "Which of the following is not an island in Hawaii?",
    "answers": [
      {'text': 'Maui', 'Score': 0},
      {'text': 'Oahu', 'Score': 0},
      {'text': 'Kauai', 'Score': 0},
      {'text': 'Mauna Loa', 'Score': 10},
    ],
  },
  {
    "questionText": "Which of these foods was invented in Australia?",
    "answers": [
      {'text': 'Vegemite', 'Score': 10},
      {'text': 'Pizza', 'Score': 0},
      {'text': 'Hot dogs', 'Score': 0},
      {'text': 'Croissant', 'Score': 0},
    ],
  },
  {
    "questionText":
        "What famous comic strip, written by Bill Watterson, centered around a young boy and his stuffed tiger?",
    "answers": [
      {'text': '"Garfield"', 'Score': 0},
      {'text': '"Get Fuzzy"', 'Score': 0},
      {'text': '"Calvin and Hobbes"', 'Score': 10},
      {'text': '"Lio"', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Digestion typically releases what chemical that makes you happy?",
    "answers": [
      {'text': 'Serotonin', 'Score': 10},
      {'text': 'Melatonin', 'Score': 0},
      {'text': 'Ghrelin', 'Score': 0},
      {'text': 'Aldosterone', 'Score': 0},
    ],
  },
  {
    "questionText":
        "In the Harry Potter series, Harry must battle which evil wizard?",
    "answers": [
      {'text': 'Voldemort', 'Score': 10},
      {'text': 'Grindelwald', 'Score': 0},
      {'text': 'Dumbledore', 'Score': 0},
      {'text': 'Sirius Black', 'Score': 0},
    ],
  },
  {
    "questionText":
        "All known elements are organized in something called what?",
    "answers": [
      {'text': 'Index of Elements', 'Score': 0},
      {'text': 'Handbook of Chemistry', 'Score': 0},
      {'text': 'Periodic Table', 'Score': 10},
      {'text': 'None of the above', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Who authored \"The Lord of the Rings,\" \"The Hobbit,\" and the many other books which take place in Middle Earth?",
    "answers": [
      {'text': 'C. S. Lewis', 'Score': 0},
      {'text': 'J. R. R. Tolkien', 'Score': 10},
      {'text': 'George Orwell', 'Score': 0},
      {'text': 'George Lucas', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which star doesn't appear to move through the sky over the course of a year?",
    "answers": [
      {'text': 'North Star (Polaris)', 'Score': 10},
      {'text': 'The sun', 'Score': 0},
      {'text': 'Proxima Centauri', 'Score': 0},
      {'text': 'Betelgeuse', 'Score': 0},
    ],
  },
  {
    "questionText": "What animal feeds almost exclusively on bamboo?",
    "answers": [
      {'text': 'Orangutans', 'Score': 0},
      {'text': 'Koalas', 'Score': 0},
      {'text': 'Kangaroos', 'Score': 0},
      {'text': 'Pandas', 'Score': 10},
    ],
  },
  {
    "questionText": "Why was the Boston Tea Party so named?",
    "answers": [
      {
        'text': 'American revolutionaries threw tea off British ships.',
        'Score': 10
      },
      {
        'text': 'British colonials threw a massive tea party in Boston.',
        'Score': 0
      },
      {
        'text': 'The drawn-out battle was sparked over an argument during tea.',
        'Score': 0
      },
      {'text': 'All of the above.', 'Score': 0},
    ],
  },
  {
    "questionText": "Where is Mount Kilimanjaro?",
    "answers": [
      {'text': 'Argentina', 'Score': 0},
      {'text': 'Tanzania', 'Score': 10},
      {'text': 'Russia', 'Score': 0},
      {'text': 'Japan', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which language is spoken by the most people on the continent of Africa?",
    "answers": [
      {'text': 'Arabic', 'Score': 0},
      {'text': 'English', 'Score': 10},
      {'text': 'Spanish', 'Score': 0},
      {'text': 'French', 'Score': 0},
    ],
  },
  {
    "questionText":
        "The cardinal is the official bird of which of the following states?",
    "answers": [
      {'text': 'Ohio', 'Score': 0},
      {'text': 'North Carolina', 'Score': 0},
      {'text': 'Illinois', 'Score': 0},
      {'text': 'All of the above', 'Score': 10},
    ],
  },
  {
    "questionText": "What is the Taj Mahal?",
    "answers": [
      {'text': 'A large business center.', 'Score': 0},
      {'text': 'A monument to learning.', 'Score': 0},
      {'text': 'A mausoleum.', 'Score': 10},
      {'text': 'A royal palace.', 'Score': 0},
    ],
  },
  {
    "questionText": "Where do penguins live?",
    "answers": [
      {'text': 'Greenland', 'Score': 0},
      {'text': 'Nova Scotia', 'Score': 0},
      {'text': 'Antarctica only', 'Score': 0},
      {'text': 'Various locales in the Southern Hemisphere', 'Score': 10},
    ],
  },
  {
    "questionText":
        "Which of the following foods is properly considered a nut - not a legume or a seed?",
    "answers": [
      {'text': 'Cashew', 'Score': 0},
      {'text': 'Hazelnut', 'Score': 10},
      {'text': 'Pistachio', 'Score': 0},
      {'text': 'Peanut', 'Score': 0},
    ],
  },
];

class _QuestionGeneralKnowledgeState extends State<QuestionGeneralKnowledge> {
  int index = 0;
  int rightAnswer = 0;

  void answerQuestion(int score) {
    rightAnswer += score;
    setState(() {
      index++;
    });
  }

  List<Map<String, Object>> questionshuffle;

  @override
  void initState() {
    super.initState();
    questionshuffle = questions..shuffle();
  }

  @override
  Widget build(BuildContext context) {
    Widget buildAppbar(String title, IconData icon) {
      return AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(icon, color: Colors.amber),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            Text(title),
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  QuizScreen.routeName, (Route<dynamic> route) => false)),
        ],
      );
    }

    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    String categoryTitle = routeArgs['title'] as String;
    IconData categoryIcon = routeArgs['icon'];

    return Scaffold(
      appBar: buildAppbar(categoryTitle, categoryIcon),
      body: (index < 10)
          ? Quiz(
              answerQuestion: answerQuestion,
              questions: questionshuffle,
              index: index)
          : Result(rightAnswer, 10),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
