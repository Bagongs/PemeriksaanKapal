import 'dart:async';

import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = 'localhost:8080', user = 'root', db = 'ship';
  static int port = 3360;

  Future<MySqlConnection> getConnection() async {
    var setting = new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      db: db,
      password: "",
    );
    return await MySqlConnection.connect(setting);
  }
}
