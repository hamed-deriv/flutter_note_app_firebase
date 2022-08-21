import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:flutter_note_app_firebase/presentation/widgets/note_body.dart';

class NotePage extends StatelessWidget {
  const NotePage({required this.document, Key? key}) : super(key: key);

  final QueryDocumentSnapshot<Object> document;

  @override
  Widget build(BuildContext context) =>
      Scaffold(body: NoteBody(document: document));
}
