import 'package:flutter/material.dart';
import '../screen/quiz_screen.dart';
import '../screen/result_screen.dart';

import '../quiz.dart';

class QuestionTech extends StatefulWidget {
  static const routeName = 'question-general';

  @override
  _QuestionTechState createState() => _QuestionTechState();
}

List<Map<String, Object>> questions = [
  {
    "questionText":
        "In which decade was the American Institute of Electrical Engineers (AIEE) founded?",
    "answers": [
      {'text': '1850s', 'Score': 0},
      {'text': '1880s', 'Score': 10},
      {'text': '1930s', 'Score': 0},
      {'text': '1950s', 'Score': 0},
    ],
  },
  {
    "questionText":
        "What is part of a database that holds only one type of information?",
    "answers": [
      {'text': 'Report', 'Score': 0},
      {'text': 'Field', 'Score': 10},
      {'text': 'Record', 'Score': 0},
      {'text': 'File', 'Score': 0},
    ],
  },
  {
    "questionText": "'OS' computer abbreviation usually means ?",
    "answers": [
      {'text': 'Order of Significance', 'Score': 0},
      {'text': 'Open Software', 'Score': 0},
      {'text': 'Operating System', 'Score': 10},
      {'text': 'Optical Sensor', 'Score': 0},
    ],
  },
  {
    "questionText":
        "In which decade with the first transatlantic radio broadcast occur?",
    "answers": [
      {'text': '1850s', 'Score': 0},
      {'text': '1860s', 'Score': 0},
      {'text': '1870s', 'Score': 0},
      {'text': '1900s', 'Score': 10},
    ],
  },
  {
    "questionText": "'.MOV' extension refers usually to what kind of file?",
    "answers": [
      {'text': 'Image file', 'Score': 0},
      {'text': 'Animation/movie file', 'Score': 10},
      {'text': 'Audio file', 'Score': 0},
      {'text': 'MS Office document', 'Score': 0},
    ],
  },
  {
    "questionText": "In which decade was the SPICE simulator introduced?",
    "answers": [
      {'text': '1950s', 'Score': 0},
      {'text': '1960s', 'Score': 0},
      {'text': '1970s', 'Score': 10},
      {'text': '1980s', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Most modern TV's draw power even if turned off. The circuit the power is used in does what function?",
    "answers": [
      {'text': 'Sound', 'Score': 0},
      {'text': 'Remote control', 'Score': 10},
      {'text': 'Color balance', 'Score': 0},
      {'text': 'High voltage', 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which is a type of Electrically-Erasable Programmable Read-Only Memory?",
    "answers": [
      {'text': 'Flash', 'Score': 10},
      {'text': 'Flange', 'Score': 0},
      {'text': 'Fury', 'Score': 0},
      {'text': 'FRAM', 'Score': 0},
    ],
  },
  {
    "questionText": "The purpose of choke in tube light is ?",
    "answers": [
      {'text': 'To decrease the current', 'Score': 0},
      {'text': 'To increase the current', 'Score': 0},
      {'text': 'To decrease the voltage momentarily', 'Score': 0},
      {'text': 'To increase the voltage momentarily', 'Score': 10},
    ],
  },
  {
    "questionText": "'.MPG' extension refers usually to what kind of file?",
    "answers": [
      {'text': 'WordPerfect Document file', 'Score': 0},
      {'text': 'MS Office document', 'Score': 0},
      {'text': 'Animation/movie file', 'Score': 10},
      {'text': 'Image file', 'Score': 0},
    ],
  },
  {
    "questionText":
        "On July 12, 2000, Russia launched a rocket into space bearing the corporate logo of what company?",
    "answers": [
      {'text': "Intel", 'Score': 0},
      {'text': "Reebok", 'Score': 0},
      {'text': "Budweiser", 'Score': 0},
      {'text': "Pizza Hut", 'Score': 10},
    ],
  },
  {
    "questionText": "In the U.S., if it's not Daylight Saving Time, it's what?",
    "answers": [
      {'text': "Borrowed time", 'Score': 0},
      {'text': "Overtime", 'Score': 0},
      {'text': "Standard time", 'Score': 10},
      {'text': "Party time", 'Score': 0},
    ],
  },
  {
    "questionText": "Which part of the body are you most likely to \"stub\"?",
    "answers": [
      {'text': "Toe", 'Score': 10},
      {'text': "Knee", 'Score': 0},
      {'text': "Elbow", 'Score': 0},
      {'text': "Brain", 'Score': 0},
    ],
  },
  {
    "questionText":
        "Put your seat backs and tray tables into their full upright and locked position is usually heard where?",
    "answers": [
      {'text': "Grade school", 'Score': 0},
      {'text': "Planetarium", 'Score': 0},
      {'text': "Airplane", 'Score': 10},
      {'text': "Thanksgiving dinner", 'Score': 0},
    ],
  },
  {
    "questionText":
        "In U.S. personal ads, what do the letters ISO traditionally represent? ",
    "answers": [
      {'text': "I'm someone ordinary", 'Score': 0},
      {'text': "In search of", 'Score': 10},
      {'text': "I seek one", 'Score': 0},
      {'text': "It seems odd", 'Score': 0},
    ],
  },
  {
    "questionText":
        "A person who earns a Ph.D. is literally a certified doctor of what?",
    "answers": [
      {'text': "Photography", 'Score': 0},
      {'text': "Pharmacology", 'Score': 0},
      {'text': "Philosophy", 'Score': 10},
      {'text': "Psychology", 'Score': 0},
    ],
  },
  {
    "questionText":
        "British actor/comedian Rowan Atkinson plays what famous character?",
    "answers": [
      {'text': "Mr. Nut", 'Score': 0},
      {'text': "Mr. Bean", 'Score': 10},
      {'text': "Mr. Pea", 'Score': 0},
      {'text': "Mr. Sprout", 'Score': 0},
    ],
  },
  {
    "questionText":
        "What is the only Great Lake that lies wholly within the U.S.?",
    "answers": [
      {'text': "Lake Erie", 'Score': 0},
      {'text': "Lake Huron", 'Score': 0},
      {'text': "Lake Michigan", 'Score': 10},
      {'text': "Lake Superior", 'Score': 0},
    ],
  },
  {
    "questionText":
        "Roy Allen and Frank Wright founded a company that began producing what beverage in the 1920s?",
    "answers": [
      {'text': "Cocoa", 'Score': 0},
      {'text': "Root beer", 'Score': 10},
      {'text': "Coffee", 'Score': 0},
      {'text': "Whiskey", 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which two countries currently account for more than a third of Earth's population?",
    "answers": [
      {'text': "China and Russia", 'Score': 0},
      {'text': "India and China", 'Score': 10},
      {'text': "India and Pakistan", 'Score': 0},
      {'text': "China and Brazil", 'Score': 0},
    ],
  },
  {
    "questionText": "Go-Gurt, yogurt in a tube, is manufactured by what brand?",
    "answers": [
      {'text': "Dannon", 'Score': 0},
      {'text': "Breyer's", 'Score': 0},
      {'text': "Yoplait", 'Score': 10},
      {'text': "TCBY", 'Score': 0},
    ],
  },
  {
    "questionText": "Acadia National Park is located in what U.S. state?",
    "answers": [
      {'text': "Maine", 'Score': 10},
      {'text': "Michigan", 'Score': 0},
      {'text': "Arkansas", 'Score': 0},
      {'text': "Louisiana", 'Score': 0},
    ],
  },
  {
    "questionText":
        "The National Hockey League's trophy for league's leading goal scorer is named for what player?",
    "answers": [
      {'text': "Wayne Gretzky", 'Score': 0},
      {'text': "Maurice Richard", 'Score': 10},
      {'text': "Gordie Howe", 'Score': 0},
      {'text': "Mario Lemieux", 'Score': 0},
    ],
  },
  {
    "questionText":
        "The name of the German news magazine \"Der Spiegel\" means what in English?",
    "answers": [
      {'text': "The Observer", 'Score': 0},
      {'text': "The Mirror", 'Score': 10},
      {'text': "The Sun", 'Score': 0},
      {'text': "The Times", 'Score': 0},
    ],
  },
  {
    "questionText":
        "Reacting with virtually every other element, what is the most reactive chemical element?",
    "answers": [
      {'text': "Fluorine", 'Score': 10},
      {'text': "Oxygen", 'Score': 0},
      {'text': "Phosphorus", 'Score': 0},
      {'text': "Sodium", 'Score': 0},
    ],
  },
  {
    "questionText": "What taxonomic family do human beings belong to?",
    "answers": [
      {'text': "Chordata", 'Score': 0},
      {'text': "Mammalia", 'Score': 0},
      {'text': "Primate", 'Score': 0},
      {'text': "Hominidae", 'Score': 10},
    ],
  },
  {
    "questionText": "An albino gorilla usually has what color fur?",
    "answers": [
      {'text': "Brown", 'Score': 0},
      {'text': "Black", 'Score': 0},
      {'text': "White", 'Score': 10},
      {'text': "Golden", 'Score': 0},
    ],
  },
  {
    "questionText":
        "When you enter a situation without a definite plan of action, you are said to be \"playing it by\" what?",
    "answers": [
      {'text': "Fingertips", 'Score': 0},
      {'text': "Ear", 'Score': 10},
      {'text': "Nose", 'Score': 0},
      {'text': "Mouth", 'Score': 0},
    ],
  },
  {
    "questionText":
        "A serial story in which each installment ends at a point of suspense is called a what??",
    "answers": [
      {'text': "Ledge-hanger", 'Score': 0},
      {'text': "Rock-hanger", 'Score': 0},
      {'text': "Cliff-hanger", 'Score': 10},
      {'text': "Clothes hanger", 'Score': 0},
    ],
  },
  {
    "questionText": "What part of speech is the word \"and\"?",
    "answers": [
      {'text': "Verb", 'Score': 0},
      {'text': "Noun", 'Score': 0},
      {'text': "Preposition", 'Score': 0},
      {'text': "Conjunction", 'Score': 10},
    ],
  },
  {
    "questionText":
        "In basic education, how many of the \"Three R's\" actually begin with the letter R?",
    "answers": [
      {'text': "0", 'Score': 0},
      {'text': "1", 'Score': 10},
      {'text': "2", 'Score': 0},
      {'text': "3", 'Score': 0},
    ],
  },
  {
    "questionText": "U.S. battleships are traditionally named for what?",
    "answers": [
      {'text': "Presidents", 'Score': 0},
      {'text': "Constellations", 'Score': 0},
      {'text': "States", 'Score': 10},
      {'text': "War heroes", 'Score': 0},
    ],
  },
  {
    "questionText":
        "Athletic shoe maker Nike has its headquarters in what state?",
    "answers": [
      {'text': "New York", 'Score': 0},
      {'text': "Washington", 'Score': 0},
      {'text': "California", 'Score': 0},
      {'text': "Oregon", 'Score': 10},
    ],
  },
  {
    "questionText":
        "The Strait of Gibraltar connects the Atlantic Ocean and what sea?",
    "answers": [
      {'text': "Mediterranean", 'Score': 10},
      {'text': "Red", 'Score': 0},
      {'text': "North", 'Score': 0},
      {'text': "Black", 'Score': 0},
    ],
  },
  {
    "questionText":
        "A scientific barometer measures pressure in which of the following units?",
    "answers": [
      {'text': "Baroms", 'Score': 0},
      {'text': "Farads", 'Score': 0},
      {'text': "Angstroms", 'Score': 0},
      {'text': "Millibars", 'Score': 10},
    ],
  },
  {
    "questionText":
        "The active ingredient in antiperspirants is usually a salt of which element?",
    "answers": [
      {'text': "Sodium", 'Score': 0},
      {'text': "Cadmium", 'Score': 0},
      {'text': "Calcium", 'Score': 0},
      {'text': "Aluminum", 'Score': 10},
    ],
  },
  {
    "questionText": "What continent has the most countries?",
    "answers": [
      {'text': "Europe", 'Score': 0},
      {'text': "Asia", 'Score': 0},
      {'text': "Africa", 'Score': 10},
      {'text': "South America", 'Score': 0},
    ],
  },
  {
    "questionText":
        "The 1999 film \"10 Things I Hate About You\" was inspired by what Shakespeare play?",
    "answers": [
      {'text': "Measure for Measure", 'Score': 0},
      {'text': "Othello", 'Score': 0},
      {'text': "Love's Labour's Lost", 'Score': 0},
      {'text': "The Taming of the Shrew", 'Score': 10},
    ],
  },
  {
    "questionText":
        "What architect spent over 40 years building the Church of the Sagrada Familia in Barcelona?",
    "answers": [
      {'text': "Antonio Gaudi", 'Score': 10},
      {'text': "Mies van der Rohe", 'Score': 0},
      {'text': "Rafael Moneo", 'Score': 0},
      {'text': "Le Corbusier", 'Score': 0},
    ],
  },
  {
    "questionText":
        "What was the name of the first spacecraft to carry a human being into space? ",
    "answers": [
      {'text': "Soyuz 4", 'Score': 0},
      {'text': "Vostok 1", 'Score': 10},
      {'text': "Salyut 3", 'Score': 0},
      {'text': "Sputnik 10", 'Score': 0},
    ],
  },
  {
    "questionText":
        "One of the best preserved fossil formations in the world, the Burgess Shale is located where?",
    "answers": [
      {'text': "Canada", 'Score': 10},
      {'text': "United States", 'Score': 0},
      {'text': "England", 'Score': 0},
      {'text': "France", 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which of the following consumer goods is the Gerber Products Co. best known for?",
    "answers": [
      {'text': "Potato chips", 'Score': 0},
      {'text': "Fine wines", 'Score': 0},
      {'text': "Chewing gum", 'Score': 0},
      {'text': "Baby Food", 'Score': 10},
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
    "questionText": "By definition, what does a meteorologist predict?",
    "answers": [
      {'text': "Stock fluctuations", 'Score': 0},
      {'text': "Earthquakes", 'Score': 0},
      {'text': "Weather changes", 'Score': 10},
      {'text': "Meteors", 'Score': 0},
    ],
  },
  {
    "questionText":
        "The magazine launched in 2000 by Oprah Winfrey is titled what?",
    "answers": [
      {'text': "Q", 'Score': 0},
      {'text': "W", 'Score': 0},
      {'text': "X", 'Score': 0},
      {'text': "O", 'Score': 10},
    ],
  },
  {
    "questionText":
        "On a traditional round clock, what number is 180 degrees from the number 5?",
    "answers": [
      {'text': "2", 'Score': 0},
      {'text': "6", 'Score': 0},
      {'text': "9", 'Score': 0},
      {'text': "11", 'Score': 10},
    ],
  },
  {
    "questionText":
        "The comic strip character Garfield the cat hates what day of the week? ",
    "answers": [
      {'text': "Sunday", 'Score': 0},
      {'text': "Monday", 'Score': 10},
      {'text': "Thursday", 'Score': 0},
      {'text': "Friday", 'Score': 0},
    ],
  },
  {
    "questionText":
        "A renal transplant involves the replacement of what human organ?",
    "answers": [
      {'text': "Kidney", 'Score': 10},
      {'text': "Liver", 'Score': 0},
      {'text': "Pancreas", 'Score': 0},
      {'text': "Heart", 'Score': 0},
    ],
  },
  {
    "questionText": "In Greek mythology, who was the Muse of tragedy? ",
    "answers": [
      {'text': "Melpomene", 'Score': 10},
      {'text': "Polyhymnia", 'Score': 0},
      {'text': "Thalia", 'Score': 0},
      {'text': "Euterpe", 'Score': 0},
    ],
  },
  {
    "questionText":
        "In the 1993 movie \"Jurassic Park,\" DNA from what animal is used to fill gaps in recovered dinosaur DNA?",
    "answers": [
      {'text': "Frog", 'Score': 10},
      {'text': "Iguana", 'Score': 0},
      {'text': "Crocodile", 'Score': 0},
      {'text': "Turkey", 'Score': 0},
    ],
  },
  {
    "questionText": "Semiotics is the study of what?",
    "answers": [
      {'text': "Apes", 'Score': 0},
      {'text': "Word origins", 'Score': 0},
      {'text': "Signs and symbols", 'Score': 10},
      {'text': "Flags", 'Score': 0},
    ],
  },
  {
    "questionText":
        "What traditionally takes place on the first Monday in October?",
    "answers": [
      {'text': "New York City Marathon", 'Score': 0},
      {'text': "Columbus Day", 'Score': 0},
      {'text': "Supreme Court opening", 'Score': 10},
      {'text': "Canadian Thanksgiving", 'Score': 0},
    ],
  },
  {
    "questionText":
        "The horn of a rhinoceros is made up primarily of the same material as what?",
    "answers": [
      {'text': "Bone", 'Score': 0},
      {'text': "Ivory", 'Score': 0},
      {'text': "Cartilage", 'Score': 0},
      {'text': "Keratin", 'Score': 10},
    ],
  },
  {
    "questionText":
        "In 1927, who was named \"Time\" magazine's first Man of the Year?",
    "answers": [
      {'text': "Charlie Chaplin", 'Score': 0},
      {'text': "Al Jolson", 'Score': 0},
      {'text': "Babe Ruth", 'Score': 0},
      {'text': "Charles Lindbergh", 'Score': 10},
    ],
  },
  {
    "questionText":
        "By definition, a barrel holds how many gallons of crude oil?",
    "answers": [
      {'text': "36", 'Score': 0},
      {'text': "42", 'Score': 10},
      {'text': "48", 'Score': 0},
      {'text': "54", 'Score': 0},
    ],
  },
  {
    "questionText":
        "Called by Czar Nicholas II in 1899, the first \"International Peace Congress\" was held where? ",
    "answers": [
      {'text': "Yalta", 'Score': 0},
      {'text': "The Hague", 'Score': 10},
      {'text': "St. Petersburg", 'Score': 0},
      {'text': "Geneva", 'Score': 0},
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
        "What name is legally used to indicate a woman whose name is unknown?",
    "answers": [
      {'text': "Joan Doe", 'Score': 0},
      {'text': "Jane Doe", 'Score': 10},
      {'text': "Jean Doe", 'Score': 0},
      {'text': "Lotta Doe", 'Score': 0},
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
    "questionText":
        "For 10 years, Cape Canaveral was renamed for which American president?",
    "answers": [
      {'text': "Dwight D. Eisenhower", 'Score': 0},
      {'text': "John F. Kennedy", 'Score': 10},
      {'text': "Richard M. Nixon", 'Score': 0},
      {'text': "Lyndon B. Johnson", 'Score': 0},
    ],
  },
  {
    "questionText": "People who advocate war are commonly referred to as what?",
    "answers": [
      {'text': "Doves", 'Score': 0},
      {'text': "Hawks", 'Score': 10},
      {'text': "Rams", 'Score': 0},
      {'text': "Gorillas", 'Score': 0},
    ],
  },
  {
    "questionText":
        "In nautical terms, a fathom is equivalent to how many feet?",
    "answers": [
      {'text': "4", 'Score': 0},
      {'text': "6", 'Score': 10},
      {'text': "10", 'Score': 0},
      {'text': "20", 'Score': 0},
    ],
  },
  {
    "questionText":
        "Which of the following comedians was never a regular cast member of TV's \"Saturday Night Live\"?",
    "answers": [
      {'text': "Steve Martin", 'Score': 10},
      {'text': "Julia Louis-Dreyfus", 'Score': 0},
      {'text': "Martin Short", 'Score': 0},
      {'text': "Jim Belushi", 'Score': 0},
    ],
  },
  {
    "questionText":
        "What part of a goose or duck is fattened to produce \"foie gras\"?",
    "answers": [
      {'text': "Kidney", 'Score': 0},
      {'text': "Liver", 'Score': 10},
      {'text': "Stomach", 'Score': 0},
      {'text': "Tongue", 'Score': 0},
    ],
  },
  {
    "questionText":
        "What components of blood are responsible for blood clotting?",
    "answers": [
      {'text': "White blood cells", 'Score': 0},
      {'text': "Red blood cells", 'Score': 0},
      {'text': "Platelets", 'Score': 10},
      {'text': "Lymphocytes", 'Score': 0},
    ],
  },
  {
    "questionText":
        "In Ernest Hemingway's novella \"The Old Man and the Sea,\" what kind of creature does the title character hook?",
    "answers": [
      {'text': "Shark", 'Score': 0},
      {'text': "Marlin", 'Score': 10},
      {'text': "Tuna", 'Score': 0},
      {'text': "Whale", 'Score': 0},
    ],
  },
  {
    "questionText":
        "CREEP was an organization to aid the re-election of what incumbent U.S. president?",
    "answers": [
      {'text': "Richard Nixon", 'Score': 10},
      {'text': "Ronald Reagan", 'Score': 0},
      {'text': "George Bush", 'Score': 0},
      {'text': "Bill Clinton", 'Score': 0},
    ],
  },
  {
    "questionText": "What is a biretta?",
    "answers": [
      {'text': "Firearm", 'Score': 0},
      {'text': "Clerical cap", 'Score': 10},
      {'text': "Tropical bird", 'Score': 0},
      {'text': "Lumberjack's tool", 'Score': 0},
    ],
  },
  {
    "questionText":
        "The highest mountain in South America is located in what country?",
    "answers": [
      {'text': "Brazil", 'Score': 0},
      {'text': "Peru", 'Score': 0},
      {'text': "Ecuador", 'Score': 0},
      {'text': "Argentina", 'Score': 10},
    ],
  },
  {
    "questionText":
        "The shortest distance between two points lying on a curved or flat surface is what type of line?",
    "answers": [
      {'text': "Stochastic", 'Score': 0},
      {'text': "Isometric", 'Score': 0},
      {'text': "Discrete", 'Score': 0},
      {'text': "Geodesic", 'Score': 10},
    ],
  },
  {
    "questionText":
        "In 1893, what country was the first to grant women the right to vote?",
    "answers": [
      {'text': "Canada", 'Score': 0},
      {'text': "Sweden", 'Score': 0},
      {'text': "New Zealand", 'Score': 10},
      {'text': "Denmark", 'Score': 0},
    ],
  }
];

class _QuestionTechState extends State<QuestionTech> {
  int index = 0;
  int rightAnswer = 0;

  void answerQuestion(int score) {
    rightAnswer += score;
    setState(() {
      index++;
    });
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
                questions: questions,
                index: index)
            : Result(rightAnswer, 10),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      onWillPop: () => showAlertDialog(context),
    );
  }
}
