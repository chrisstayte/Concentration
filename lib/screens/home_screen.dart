import 'package:concentration/global/global.dart';
import 'package:concentration/models/game_stat.dart';
import 'package:concentration/providers/game_stats_provider.dart';
import 'package:concentration/screens/new_game_screen.dart';
import 'package:concentration/screens/stats_screen.dart';
import 'package:concentration/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27.0),
        child: Container(
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Concentration',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Global.colors.darkIconColor),
                  ),
                  Text(
                    'a game of memory',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Global.colors.darkIconColor),
                  ),
                  const SizedBox(
                    height: 127,
                  ),
                  MainButton(
                    title: 'New Game',
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/newGame',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MainButton(
                    title: 'Stats',
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/stats',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MainButton(
                    title: 'Credits',
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/credits',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
