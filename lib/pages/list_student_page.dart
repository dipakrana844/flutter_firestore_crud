import 'package:flutter/material.dart';

class ListStudentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddStudentPage();
}

class _AddStudentPage extends State<ListStudentPage> {
  deleteUser(id) {
    print("User deleted $id");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            1: FixedColumnWidth(140),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [
              TableCell(
                  child: Container(
                color: Colors.greenAccent,
                child: const Center(
                  child: Text(
                    'Name',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ))
            ]),
            TableRow(children: [
              const TableCell(
                child: Center(
                  child: Text(
                    'Dipak',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              const TableCell(
                child: Center(
                  child: Text(
                    'a@a.a',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              TableCell(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: UpdateStatePage(),
                          ))
                    },
                    icon: Icon(
                      Icons.edit,
                      color: Colors.orange,
                    ),
                  ),
                  IconButton(
                    onPressed: () => {deleteUser(1)},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  )
                ],
              ))
            ])
          ],
        ),
      ),
    );
  }
}
