import 'package:flutter/material.dart';
import 'package:mailapp/model/email.dart';
import 'package:intl/intl.dart';

class BodyScreen extends StatelessWidget {
  final Email email;
  const BodyScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(email.from),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('From: ${email.subject}'),
                Text(DateFormat('yyyy-MM-dd HH:mm').format(email.dateTime)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(email.body),
          ),
        ],
      ),
      // Center(
      //     child: Container(
      //         height: 600,
      //         child: Center(
      //           child: Card(
      //             color: Colors.grey[350],
      //             shape: RoundedRectangleBorder(
      //                 side: BorderSide(color: Colors.white60, width: 1),
      //                 borderRadius: BorderRadius.circular(20)),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.fromLTRB(0, 10, 80, 0),
      //                   child: Column(
      //                     children: [
      //                       Text(
      //                         email.from,
      //                         style: TextStyle(
      //                             fontSize: 20, fontWeight: FontWeight.bold),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.fromLTRB(0, 10, 80, 0),
      //                   child: Column(
      //                     children: [
      //                       Text(
      //                         email.dateTime.toString(),
      //                         style: TextStyle(
      //                             fontSize: 20, fontWeight: FontWeight.w300),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.fromLTRB(0, 10, 80, 0),
      //                   child: Column(
      //                     children: [
      //                       Text(
      //                         email.subject,
      //                         style: TextStyle(fontSize: 20),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.fromLTRB(0, 10, 80, 0),
      //                   child: Column(
      //                     children: [
      //                       Text(
      //                         email.body,
      //                         style: TextStyle(fontSize: 20),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         )
      //         )
      //         )
    );
  }
}
