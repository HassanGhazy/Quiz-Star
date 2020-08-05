import 'package:flutter/material.dart';

import '../screen/quiz_screen.dart';
import '../screen/result_screen.dart';

import '../quiz.dart';

class QuestionSciance extends StatefulWidget {
  static const routeName = 'question-sciance';

  @override
  _QuestionScianceState createState() => _QuestionScianceState();
}

List<Map<String, Object>> questions = [
  {
    "questionText": "What does the letter 'S' stand for in 'NASA'?",
    "answers": [
      {'text': "Space", 'Score': 10},
      {'text': "Science", 'Score': 0},
      {'text': "Star", 'Score': 0},
      {'text': "Society", 'Score': 0},
    ],
  },
  {
    "questionText":
        "The humerus, paired radius, and ulna come together to form what joint?",
    "answers": [
      {'text': "Knee", 'Score': 0},
      {'text': "Elbow", 'Score': 10},
      {'text': "Sholder", 'Score': 0},
      {'text': "Ankle", 'Score': 0},
    ],
  },
  {
    "questionText": "Bamboo plants can grow how many cm per day?",
    "answers": [
      {'text': '90cm', 'Score': 10},
      {'text': '10cm', 'Score': 0},
      {'text': '170cm', 'Score': 0},
      {'text': '30cm', 'Score': 0},
    ],
  },
  {
    "questionText": "What is the most common blood group in Europe?",
    "answers": [
      {'text': "A+", 'Score': 10},
      {'text': "O-", 'Score': 0},
      {'text': "A-", 'Score': 0},
      {'text': "B+", 'Score': 0},
    ],
  },
  {
    "questionText": "What does a nidoligist study?",
    "answers": [
      {'text': "Clouds", 'Score': 0},
      {'text': "Caves", 'Score': 0},
      {'text': "Bird Nests", 'Score': 10},
      {'text': "Waves", 'Score': 0},
    ],
  },
  {
    "questionText": "What is an olm?",
    "answers": [
      {'text': "A baby dragon", 'Score': 0},
      {'text': "A unit of electrical resistance", 'Score': 10},
      {'text': "An aquatic salamander", 'Score': 0},
      {'text': "All Of The Above", 'Score': 0},
    ],
  },
  {
    "questionText":
        "In which of these household appliances would you find a lint screen?",
    "answers": [
      {'text': "Dishwasher", 'Score': 0},
      {'text': "Microwave oven", 'Score': 0},
      {'text': "Clothes dryer", 'Score': 10},
      {'text': "Trash compactor", 'Score': 0},
    ],
  },
  {
    "questionText": "What are the three primary colors?",
    "answers": [
      {'text': "Red, green, blue", 'Score': 10},
      {'text': "Magenta, pink, cyan", 'Score': 0},
      {'text': "Yellow, salmon, brown", 'Score': 0},
      {'text': "White, grey, black", 'Score': 0},
    ],
  },
  {
    "questionText": "In aviation, what does UFO stand for?",
    "answers": [
      {'text': "Unified Flying Object", 'Score': 0},
      {'text': "Unitary Flinging Obsession", 'Score': 0},
      {'text': "United Flag Opposition", 'Score': 0},
      {'text': "Unidentified Flying Object", 'Score': 10},
    ],
  },
  {
    "questionText": "What kind of animal traditionally lives in a sty?",
    "answers": [
      {'text': "Cow", 'Score': 0},
      {'text': "Pig", 'Score': 10},
      {'text': "Fox", 'Score': 0},
      {'text': "Teenager", 'Score': 0},
    ],
  },
  {
    "questionText":
        "The EPA urges people to produce less waste by engaging in efforts to reduce, reuse and what?",
    "answers": [
      {'text': "Recycle", 'Score': 10},
      {'text': "Rewrap", 'Score': 0},
      {'text': "Repossess", 'Score': 0},
      {'text': "Retire", 'Score': 0},
    ],
  },
  {
    "questionText": "Which month has only 28 days (unless it's a leap year)?",
    "answers": [
      {'text': "March", 'Score': 0},
      {'text': "September", 'Score': 0},
      {'text': "June", 'Score': 0},
      {'text': "Feburary", 'Score': 10},
    ],
  },
  {
    "questionText":
        "The numbers 111, 222, 333, 444, 555, 666, 777, 888 and 999 are all multiples of what number?",
    "answers": [
      {'text': '47', 'Score': 0},
      {'text': '37', 'Score': 10},
      {'text': '57', 'Score': 0},
      {'text': '67', 'Score': 0},
    ],
  },
  {
    "questionText": "What are fulgurites?",
    "answers": [
      {
        'text': 'Glass formed in sand, silica or soil by lightning strikes',
        'Score': 10
      },
      {'text': 'Parasites found mostly in cows and sheep', 'Score': 0},
      {'text': 'People who want to ban censorship altogether', 'Score': 0},
      {
        'text': 'People who want to prevent the use of modern machinery',
        'Score': 0,
      }
    ]
  },
  {
    "questionText":
        "When alum (potassium aluminium sulphate) is used in dyeing, it is a what?",
    "answers": [
      {'text': 'Thinner', 'Score': 0},
      {'text': 'Darkening agent', 'Score': 0},
      {'text': 'Mordant', 'Score': 10},
      {'text': 'Softener', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which of these animals is known for making a laughing sound?",
    "answers": [
      {'text': 'Giraffe', 'Score': 0},
      {'text': 'Rat', 'Score': 0},
      {'text': 'Hyena', 'Score': 10},
      {'text': 'Lion', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Joseph Marie Jacquard invented the punch card in 1801 as a means of automating what process?",
    "answers": [
      {'text': 'Weaving in patterns', 'Score': 10},
      {'text': 'Addressing envelopes', 'Score': 0},
      {'text': 'Sorting debtors\' records', 'Score': 0},
      {'text': 'Prison administration', 'Score': 0},
    ],
  },
  {
    "questionText":
        "In botany, what is the word for the scar left on a tree or plant after a leaf falls?",
    "answers": [
      {'text': 'Cicely', 'Score': 0},
      {'text': 'Cicada', 'Score': 0},
      {'text': 'Cibber', 'Score': 0},
      {'text': 'Cicatrix', 'Score': 10},
    ],
  },
  {
    "questionText": "What does a frenulum do in the human body?",
    "answers": [
      {'text': 'Erects the hairs as a reaction to cold', 'Score': 0},
      {
        'text': 'Helps to anchor or restrict movement of a mobile organ',
        'Score': 10
      },
      {'text': 'Separates the nostrils', 'Score': 0},
      {'text': 'Regulates the production of saliva', 'Score': 0},
    ],
  },
];

class _QuestionScianceState extends State<QuestionSciance> {
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

  showAlertDialog(BuildContext context) {
    // set up the buttons

    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).maybePop();
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Yes"),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(QuizScreen.routeName);
        Navigator.pushNamedAndRemoveUntil(
            context, "/newRouteName", (r) => false);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Text("Are you sure you want complete this quiz? "),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            Text(title),
          ],
        ),
        automaticallyImplyLeading: false,
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
    return WillPopScope(
      child: Scaffold(
        appBar: (index < 10) ? buildAppbar(categoryTitle, categoryIcon) : null,
        body: (index < 10)
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questionshuffle,
                index: index)
            : Result(rightAnswer, 10),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      onWillPop: () => showAlertDialog(context),
    );
  }
}
