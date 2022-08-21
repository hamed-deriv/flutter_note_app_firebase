import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:flutter_note_app_firebase/presentation/app_style.dart';
import 'package:flutter_note_app_firebase/presentation/pages/note_page.dart';
import 'package:flutter_note_app_firebase/presentation/widgets/note_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppStyle.primaryColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppStyle.primaryColor,
          title: const Text('Fire Notes'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Your recent notes',
              style: AppStyle.titleStyle.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: StreamBuilder<QuerySnapshot<Object>>(
                stream:
                    FirebaseFirestore.instance.collection('notes').snapshots(),
                builder: (
                  BuildContext context,
                  AsyncSnapshot<QuerySnapshot<Object>> snapshot,
                ) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasData) {
                    if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
                      return Center(
                        child: Text(
                          'No notes found!',
                          style:
                              AppStyle.titleStyle.copyWith(color: Colors.white),
                        ),
                      );
                    }

                    return GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: snapshot.data!.docs
                          .map<Widget>(
                            (QueryDocumentSnapshot<Object> note) => NoteCard(
                              document: note,
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      NotePage(document: note),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    );
                  }

                  return Text(snapshot.error.toString());
                },
              ),
            )
          ],
        ),
      );
}
