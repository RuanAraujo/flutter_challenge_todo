import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  final DocumentReference reference;
  String title;
  bool check;
  
  TodoModel({this.reference,this.title, this.check});

  factory TodoModel.fromDocuments(DocumentSnapshot doc){
    return TodoModel(reference: doc.reference, check: doc['checked'], title: doc['title']);
  }
}