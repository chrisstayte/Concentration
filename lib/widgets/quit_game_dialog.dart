import 'package:auto_size_text/auto_size_text.dart';
import 'package:concentration/global/global.dart';
import 'package:flutter/material.dart';

class QuitGameDialog extends StatelessWidget {
  const QuitGameDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250,
        height: 165,
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 135,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Global.colors.lightIconColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    child: AutoSizeText(
                      'Are you sure you want to quit?',
                      minFontSize: 22,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Global.colors.darkIconColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 25,
              child: GestureDetector(
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/', (_) => false),
                child: Container(
                  width: 75,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Global.colors.lightIconColorDarker),
                  child: const Center(
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 150,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 75,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Global.colors.lightIconColorDarker),
                  child: const Center(
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        'No',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
