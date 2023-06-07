import 'package:flutter/material.dart';
import '../Presentation/Pages/Homepage.dart';
import '../Presentation/Widgets/player_name.dart';

class Player2 extends StatefulWidget {
  final Playerr player;

  const Player2({Key? key, required this.player}) : super(key: key);

  @override
  State<Player2> createState() => _Player2State();
}

class _Player2State extends State<Player2> {
  Playerr player = Playerr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player\'s name'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 65,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('Enter O player\'s name:',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.lightGreenAccent)),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  player.Name2 = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                labelText: 'Player 2 Name',
                hintText: 'Enter Player 2 Name',
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                        player1Name: widget.player.Name1,
                        player2Name: player.Name2,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Done',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                )),
          ),
        ],
      ),
    );
  }
}
