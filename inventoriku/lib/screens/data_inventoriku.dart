import 'package:flutter/material.dart';
import 'package:inventoriku/main.dart';
import 'package:inventoriku/screens/inventoriku_form.dart';
import 'package:inventoriku/widgets/left_drawer.dart';
import 'package:inventoriku/widgets/globals.dart' as globals;

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataState();
}

class _DataState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Barang'),
      ),
      drawer: const LeftDrawer(),
      body: Center(
          child: ListView.builder(
            itemCount: globals.semuaObj.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(5.0),
                    shadowColor: Colors.blueGrey,
                    child: ListTile(
                      title: Text(globals.semuaObj[index].name),
                      subtitle: Text(globals.semuaObj[index].description),
                      trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Jumlah : ${globals.semuaObj[index].amount}")
                          ]),
                    )),
              );
            }),
          )),
    );
  }
}