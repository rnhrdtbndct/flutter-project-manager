
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDB {
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final Stream<QuerySnapshot> usersStream =
      FirebaseFirestore.instance.collection('members').snapshots();
}
