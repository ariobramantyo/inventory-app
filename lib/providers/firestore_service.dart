import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:inventory_app/models/inventory.dart';

class FirestoreService {
  static Future<void> addInventory(Inventory inventory) async {
    await FirebaseFirestore.instance
        .collection('inventories')
        .add(inventory.toJson());
  }

  static Future<void> deleteInvetory(String id) async {
    await FirebaseFirestore.instance.collection('inventories').doc(id).delete();
  }

  static Future<void> editInventory(Inventory inventory, String id) async {
    await FirebaseFirestore.instance
        .collection('inventories')
        .doc(id)
        .update(inventory.toJson());
  }
}
