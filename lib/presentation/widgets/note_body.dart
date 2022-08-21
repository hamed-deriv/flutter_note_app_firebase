import 'package:flutter/material.dart';
import 'package:flutter_note_app_firebase/presentation/app_style.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class NoteBody extends StatelessWidget {
  const NoteBody({required this.document, Key? key}) : super(key: key);

  final QueryDocumentSnapshot<Object> document;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(document['title'], style: AppStyle.titleStyle),
          const SizedBox(height: 8),
          Text(document['content'], style: AppStyle.contentStyle),
          const SizedBox(height: 8),
          Text(
            DateTime.fromMillisecondsSinceEpoch(document['date'])
                .toLocal()
                .toString(),
            style: AppStyle.dateStyle,
          ),
        ],
      );
}
