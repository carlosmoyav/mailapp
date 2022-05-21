import 'package:mailapp/model/email.dart';
import 'package:mailapp/screens/body_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemEmail extends StatefulWidget {
  Email email;
  ItemEmail({required this.email, Key? key}) : super(key: key);

  @override
  State<ItemEmail> createState() => _ItemEmailState();
}

class _ItemEmailState extends State<ItemEmail> {
  bool _leido = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BodyScreen(email: widget.email),
          ),
        );
        setState(() {
          _leido = true;
        });
      },
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.10,
          //color: leido ? Colors.white : Colors.blue,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        color: _leido ? Colors.transparent : Colors.pink,
                        shape: BoxShape.circle),
                  )
                ],
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(DateFormat('yyyy-MM-dd').format(widget.email.dateTime)),
              Text(widget.email.from,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(widget.email.subject),
            ]),
          ])),
    );
  }
}
