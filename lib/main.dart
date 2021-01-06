import 'dart:convert';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';
import 'package:flutter/material.dart';

import 'api/responses.dart';
import 'api/api.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Future _login() async {
    var dati = await Api.votiGiornalieri();
    return dati;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'openargo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Voti'),
        ),
        body: Center(
          child: FutureBuilder(
            future: _login(),
            builder: (ctx, snapshot) {
              if (snapshot.hasData) {
                // return StickList(snapshot.data);
                return SingleChildScrollView(
                  child: Text(
                      JsonEncoder.withIndent('     ').convert(snapshot.data)),
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return Text('loading');
              }
            },
          ),
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}

// class StickList extends StatelessWidget {
//   List<DatiVoti> voti;

//   StickList(this.voti);

//   @override
//   Widget build(BuildContext context) {
//     return StickyGroupedListView<DatiVoti, int>(
//       elements: voti,
//       order: StickyGroupedListOrder.ASC,
//       groupBy: (element) => element.prgMateria,
//       // groupComparator: (DateTime value1, DateTime value2) =>
//       //     value2.compareTo(value1),
//       // itemComparator: (element1, element2) =>
//       //     element1.datGiorno.compareTo(element2.datGiorno),
//       floatingHeader: true,
//       groupSeparatorBuilder: (element) => Container(
//         height: 50,
//         child: Align(
//           alignment: Alignment.center,
//           child: Container(
//             width: 200,
//             decoration: BoxDecoration(
//               color: Colors.blue[300],
//               border: Border.all(
//                 color: Colors.blue[300],
//               ),
//               borderRadius: BorderRadius.all(Radius.circular(10.0)),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 // '${element.datGiorno.day}. ${element.datGiorno.month}, ${element.datGiorno.year}',
//                 element.desMateria,
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         ),
//       ),
//       itemBuilder: (_, element) {
//         return Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(6.0),
//           ),
//           elevation: 8.0,
//           margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//           child: Container(
//             child: ListTile(
//               contentPadding:
//                   EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//               leading: Text(element.decValore.toString()),
//               title: Text(element.desCommento),
//               trailing: Text('${element.datGiorno.year}'),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
