import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/logic/animal_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Color(0xff525252), Color(0xff3d72b4)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          title: const Center(
            child: Text(
              'Animals',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Consumer<AnimalProvider>(builder: (context, animal, __) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.network(
                    Provider.of<AnimalProvider>(context).currentAnimalUrl,
                    height: 400.0,
                    width: 400.0,
                    fit: BoxFit.cover,
                  ),
                );
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(90, 90)),
                          onPressed: () => {
                            Provider.of<AnimalProvider>(context, listen: false)
                                .setAnimal('dog')
                          },
                          child: const Text('Dog'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(90, 90)),
                          onPressed: () => {
                            Provider.of<AnimalProvider>(context, listen: false)
                                .setAnimal('cat')
                          },
                          child: const Text('Cat'),
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(90, 90)),
                          onPressed: () => {
                            Provider.of<AnimalProvider>(context, listen: false)
                                .setAnimal('racoon')
                          },
                          child: const Text('Racoon'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(90, 90)),
                          onPressed: () => {
                            Provider.of<AnimalProvider>(context, listen: false)
                                .setAnimal('monkey')
                          },
                          child: const Text('Monkey'),
                        ),
                      ],
                    )
                  ]),
                ],
              )
            ],
          ),
        ));
  }
}
