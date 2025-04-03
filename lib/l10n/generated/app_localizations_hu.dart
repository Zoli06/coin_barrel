// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class SHu extends S {
  SHu([String locale = 'hu']) : super(locale);

  @override
  String get productName => 'Coin Barrel';

  @override
  String get productDescription => 'A Coin Barrel egy új generációs banki alkalmazás, tele mesterséges intelligencia funkciókkal (nem).';

  @override
  String get loginWelcome => 'Üdv újra';

  @override
  String get registerWelcome => 'Hozzon létre egy fiókot';

  @override
  String get login => 'Bejelentkezés';

  @override
  String get register => 'Regisztráció';

  @override
  String get username => 'Felhasználónév';

  @override
  String get email => 'E-mail';

  @override
  String get password => 'Jelszó';

  @override
  String get phoneNumber => 'Telefonszám';

  @override
  String get address => 'Cím';

  @override
  String get next => 'Következő';
}
