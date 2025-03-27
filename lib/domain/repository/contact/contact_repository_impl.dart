import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_boilerplate/domain/entity/contact/contact_param.dart';
import 'package:flutter_boilerplate/domain/repository/contact/contact_repository.dart';

class ContactRepositoryImpl extends ContactRepository {
  @override
  Future<bool> send(ContactParam params) async {
    try {
      CollectionReference contactMeReference =
          FirebaseFirestore.instance.collection('contact_me');

      await contactMeReference.add(params.toMap());

      return true;
    } catch (e) {
      return false;
    }
  }
}
