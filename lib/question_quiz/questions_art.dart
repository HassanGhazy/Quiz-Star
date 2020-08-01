import 'package:flutter/material.dart';
import '../screen/quiz_screen.dart';
import '../screen/result_screen.dart';

import '../quiz.dart';

class QuestionArt extends StatefulWidget {
  static const routeName = 'question-screen';

  final String id;
  final String title;

  QuestionArt({
    this.id,
    this.title,
  });

  @override
  _QuestionArtState createState() => _QuestionArtState();
}

List<Map<String, Object>> questions = [
  {
    "questionText":
        "Which actor's autobiography was called 'My Wicked, Wicked Ways'?",
    "answers": [
      {'text': 'Gary Cooper', 'Score': 0},
      {'text': 'Clark Gable', 'Score': 0},
      {'text': 'Errol Flynn', 'Score': 10},
      {'text': 'Leslie Howard', 'Score': 0},
    ]
  },
  {
    "questionText":
        "The writer Virginia Woolf was born on 25th January 1882. What was her real first name?",
    "answers": [
      {'text': 'Adeline', 'Score': 10},
      {'text': 'Anne', 'Score': 0},
      {'text': 'Angela', 'Score': 0},
      {'text': 'Aretha', 'Score': 0},
    ]
  },
  {
    "questionText":
        "The author who wrote 'Tales of the City' and 'The Night Listener' was 'Armistead' who?",
    "answers": [
      {'text': 'Maupin', 'Score': 10},
      {'text': 'Smith', 'Score': 0},
      {'text': 'Atwood', 'Score': 0},
      {'text': 'Fitzgerald', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Lieutenant Pinkerton and Cio Cio San are characters in the opera 'Madame Butterfly'. Who wrote it?",
    "answers": [
      {'text': 'Stravinsky', 'Score': 0},
      {'text': 'Puccini', 'Score': 10},
      {'text': 'Donizetti', 'Score': 0},
      {'text': 'Monteverdi', 'Score': 0},
    ],
  },
  {
    "questionText":
        "What was the surname of Alice who is remembered as the subject of Lewis Carroll's 'Alice In Wonderland' stories?",
    "answers": [
      {'text': 'Liburn', 'Score': 0},
      {'text': 'Lowell', 'Score': 0},
      {'text': 'Linton', 'Score': 0},
      {'text': 'Liddell', 'Score': 10},
    ],
  },
  {
    "questionText": "What 'A' wrote 'Ice Station Zebra'?",
    "answers": [
      {'text': 'A.J. Cronin', 'Score': 0},
      {'text': 'Alistair MacLean', 'Score': 10},
      {'text': 'Arthur Hailey', 'Score': 0},
      {'text': 'Arthur C Clarke', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which of the following was not written by actor and playwright Alan Bennett?",
    "answers": [
      {'text': 'The Writer In Disguise', 'Score': 0},
      {'text': 'Entertaining Mr Sloane', 'Score': 10},
      {'text': 'Kafka\'s Dick', 'Score': 0},
      {'text': 'A Private Function', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which Shakespeare play is the 1956 film 'Forbidden Planet' loosely based on?",
    "answers": [
      {'text': 'Othello', 'Score': 0},
      {'text': 'Romeo and Juliet', 'Score': 0},
      {'text': 'Henry V', 'Score': 0},
      {'text': 'The Tempest', 'Score': 10},
    ],
  },
  {
    "questionText":
        "In 2004, well-known baby photographer Anne Geddes collaborated with which Canadian songstress on a music and photographic project entitled 'Miracle'?",
    "answers": [
      {'text': 'Celine Dion', 'Score': 10},
      {'text': 'Alanis Morissette', 'Score': 0},
      {'text': 'K.D. Lang', 'Score': 0},
      {'text': 'Shania Twain', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which 1878 opera was alternatively entitled 'The Lass That Loved A Sailor'?",
    "answers": [
      {'text': 'H.M.S Pinafore', 'Score': 10},
      {'text': 'The Gondoliers', 'Score': 0},
      {'text': 'The Pirates of Penzance', 'Score': 0},
      {'text': 'Iolanthe', 'Score': 0},
    ],
  },
  {
    "questionText": "Who wrote the novel The Camomile Lawn?",
    "answers": [
      {'text': 'Fay Wheldon', 'Score': 0},
      {'text': 'Mary Wesley', 'Score': 10},
      {'text': 'Joanna Trollope', 'Score': 0},
      {'text': 'Monica Dickens', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Artists such as John Sloan, William Glackens and several others were collectively known as The what?",
    "answers": [
      {'text': 'Seven', 'Score': 0},
      {'text': 'Six', 'Score': 0},
      {'text': 'Eight', 'Score': 10},
      {'text': 'Nine', 'Score': 0},
    ],
  },
  {
    "questionText":
        "In which country was the children's author Roald Dahl born?",
    "answers": [
      {'text': 'Wales', 'Score': 10},
      {'text': 'Norway', 'Score': 0},
      {'text': 'Belgium', 'Score': 0},
      {'text': 'England', 'Score': 0},
    ],
  },
  {
    "questionText": "Which of these is the title of a novel by Joseph Conrad?",
    "answers": [
      {'text': 'Lazy Jim', 'Score': 0},
      {'text': 'Lucky Jim', 'Score': 0},
      {'text': 'Lonely Jim', 'Score': 0},
      {'text': 'Lord Jim', 'Score': 10},
    ],
  },
  {
    "questionText": "Spiderman (Peter Parker) works for which newspaper?",
    "answers": [
      {'text': 'Daily Bugle', 'Score': 10},
      {'text': 'Daily Planet', 'Score': 0},
      {'text': 'Daily Globe', 'Score': 0},
      {'text': 'Daily Trumpet', 'Score': 0},
    ],
  },
  {
    "questionText":
        "The Burial of the Dead', 'A Game of Chess', and 'What the Thunder Said' are parts of which poem by T.S. Eliot?",
    "answers": [
      {'text': 'Mandalay', 'Score': 0},
      {'text': 'Gunga Din', 'Score': 0},
      {'text': 'Seashore', 'Score': 0},
      {'text': 'The Waste Land', 'Score': 10},
    ],
  },
  {
    "questionText":
        "Which fictional pirate had the nicknames 'Barbecue' and 'The Sea Cook'?",
    "answers": [
      {'text': 'Captain Pugwash', 'Score': 0},
      {'text': 'Captain Hook', 'Score': 0},
      {'text': 'Smee', 'Score': 0},
      {'text': 'Long John Silver', 'Score': 10},
    ],
  },
  {
    "questionText":
        "What was the title of the famous WH Auden poem used in the 1994 film 'Four Weddings and A Funeral'?",
    "answers": [
      {'text': 'A Body of Words', 'Score': 0},
      {'text': 'The Wreck', 'Score': 0},
      {'text': 'Funeral Blues', 'Score': 10},
      {'text': 'In Memoriam', 'Score': 0},
    ],
  },
  {
    "questionText": "Who wrote the 1904 novel 'The Sea Wolf'?",
    "answers": [
      {'text': 'Josef Conrad', 'Score': 0},
      {'text': 'Jack London', 'Score': 10},
      {'text': 'Herman Melville', 'Score': 0},
      {'text': 'Wilkie Collins', 'Score': 0},
    ],
  },
  {
    "questionText":
        "What epic poem written in England tells the story of a Scandinavian hero?",
    "answers": [
      {'text': 'The Golden Legend', 'Score': 0},
      {'text': 'The Canterbury Tales', 'Score': 0},
      {'text': 'The Divine Comedy', 'Score': 0},
      {'text': 'Beowulf', 'Score': 10},
    ],
  },
];
List<Map<String, Object>> questionshuffle;

class _QuestionArtState extends State<QuestionArt> {
  @override
  void initState() {
    super.initState();
    questionshuffle = questions..shuffle();
  }

  Widget buildAppbar(String title, IconData icon) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Colors.amber),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 10),
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

  int index = 0;
  int rightAnswer = 0;

  void answerQuestion(int score) {
    rightAnswer += score;
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    String categoryTitle = routeArgs['title'];
    IconData categoryIcon = routeArgs['icon'];

    return Scaffold(
      appBar: (index < 10) ? buildAppbar(categoryTitle, categoryIcon) : null,
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
