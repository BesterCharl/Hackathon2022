import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final CollectionReference parkingSpaceCollection =
      FirebaseFirestore.instance.collection('parking_spaces');
}
