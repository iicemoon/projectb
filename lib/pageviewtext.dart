import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pageview extends StatefulWidget {
  const pageview({super.key});

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  final controler = PageController(initialPage: 1);
  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("textview"),
          actions: [
            IconButton(
                onPressed: () => controler.previousPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut),
                icon: Icon(Icons.arrow_back_ios_new)),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(
                  onPressed: () => controler.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut),
                  icon: Icon(Icons.arrow_forward_ios)),
            )
          ],
        ),
        body: PageView(
          onPageChanged: (index) {
            print("page${index + 1}");
          },
          controller: controler,
          children: [
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
            )
          ],
        ));
  }
}
