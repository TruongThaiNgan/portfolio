import 'package:flutter_boilerplate/domain/entity/contact/contact_param.dart';

abstract class ContactRepository {
  Future<bool> send(ContactParam params);
}
