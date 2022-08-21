import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:flutter_note_app_firebase/presentation/app_style.dart';
import 'package:flutter_note_app_firebase/presentation/widgets/note_body.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    required this.document,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final QueryDocumentSnapshot<Object> document;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppStyle.cardsColors[document['color_id']],
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: NoteBody(document: document),
        ),
        onTap: onTap?.call(),
      );
}
