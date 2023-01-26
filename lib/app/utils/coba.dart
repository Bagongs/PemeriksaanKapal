import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ship_certification/app/utils/mysql.dart';

class Coba extends StatefulWidget {
  Coba({Key? key}) : super(key: key);

  @override
  State<Coba> createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  var db = new Mysql();

  var nama_kapal = '';

  void _getCustomer() {
    db.getConnection().then((conn) {
      String sql = 'selelct nama_kapal from ship.s_kontruksi where id = 7';
      conn.query(sql).then((results) {
        for (var row in results) {
          setState(() {
            nama_kapal = row[0];
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("nama kapal :"), Text("$nama_kapal")],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getCustomer,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
