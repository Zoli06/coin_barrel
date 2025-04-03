// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hu locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'hu';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "address": MessageLookupByLibrary.simpleMessage("Cím"),
    "email": MessageLookupByLibrary.simpleMessage("E-mail"),
    "login": MessageLookupByLibrary.simpleMessage("Bejelentkezés"),
    "loginWelcome": MessageLookupByLibrary.simpleMessage("Üdv újra"),
    "next": MessageLookupByLibrary.simpleMessage("Következő"),
    "password": MessageLookupByLibrary.simpleMessage("Jelszó"),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("Telefonszám"),
    "productDescription": MessageLookupByLibrary.simpleMessage(
      "A Coin Barrel egy új generációs banki alkalmazás, tele mesterséges intelligencia funkciókkal (nem).",
    ),
    "productName": MessageLookupByLibrary.simpleMessage("Coin Barrel"),
    "register": MessageLookupByLibrary.simpleMessage("Regisztráció"),
    "registerWelcome": MessageLookupByLibrary.simpleMessage(
      "Hozzon létre egy fiókot",
    ),
    "username": MessageLookupByLibrary.simpleMessage("Felhasználónév"),
  };
}
