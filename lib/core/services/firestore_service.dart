import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_time/core/errors/custom_exception.dart';

class FirestoreService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addUser(
      {required String path,
      required Map<String, dynamic> data,
      String? documentID}) async {
    try {
      if (documentID != null) {
        await firestore.collection(path).doc(documentID).set(data);
      } else {
        throw CustomException(
            message:
                "Document ID (uId) is required for user document creation.");
      }
    } on FirebaseException catch (e) {
      log("FirestoreService.AddUser: ${e.toString()}. and e.code is: ${e.code}.");
      if (e.code == 'permission-denied') {
        throw CustomException(
            message: "You do not have permission to access the database.");
      } else {
        throw CustomException(
            message:
                "Something went wrong when adding the user to the database");
      }
    }
  }

  Future<dynamic> getUser({required String path, required String uId}) async {
    try {
      if (uId.isNotEmpty) {
        final result = await firestore.collection(path).doc(uId).get();
        if (!result.exists) {
          // Handle missing document
          return null;
        }

        return result.data();
      }
    } on FirebaseException catch (e) {
      log("FirestoreService.getUser: ${e.toString()}. and the e.code is: ${e.code}.");
      throw CustomException(
          message:
              "An error occurred while retrieving user data from the database.");
    }
  }
}
