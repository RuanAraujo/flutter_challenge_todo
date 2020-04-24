
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_challenge/app/modules/home/interfaces/itodo_repository.dart';
import 'package:flutter_challenge/app/modules/home/models/todo_model.dart';

class TodoRepository implements ITodoRepository {

  final Firestore firestore;

  TodoRepository(this.firestore);

  @override
  Stream<List<TodoModel>> getTodos() {
    return firestore.collection("todo").snapshots().map(
      (query) {
        return query.documents.map(
          (doc) {
            return TodoModel.fromDocuments(doc);
          }
        );
      }
    );
  }
  
}