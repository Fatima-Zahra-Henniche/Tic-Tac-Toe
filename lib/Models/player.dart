import 'package:flutter/material.dart';
import 'package:tic_tac/Models/player2.dart';

import '../Presentation/Widgets/player_name.dart';

class Palyer extends StatefulWidget {
  const Palyer({super.key});

  @override
  State<Palyer> createState() => _PalyerState();
}

class _PalyerState extends State<Palyer> {
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
            child: Text('Enter X player\'s name:',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.lightBlueAccent)),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  player.Name1 = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                labelText: 'Player 1 Name',
                hintText: 'Enter Player 1 Name',
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
                        builder: (context) => Player2(player: player)),
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
