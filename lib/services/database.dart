import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String pid;
  DatabaseService(this.pid);

  final CollectionReference parkingSpaceCollection =
      FirebaseFirestore.instance.collection('parking_spaces');

  Future updateParkingData(String coordinates, String state) async {
    return await parkingSpaceCollection
        .doc(pid)
        .set({'coordinates': coordinates, 'state': state});
  }
}
