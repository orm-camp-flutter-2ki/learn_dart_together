import 'dart:convert';

import 'package:csv/csv.dart';

// class ToCsv {
//   // we will declare the list of headers that we want
//   static const List<String> rowHeader = ["Name","Address","Phone"];
//
//   void generateCSV(){
//
//     // here we will make a 2D array to handle a row
//     List<List<dynamic>> rows = [];
//     //First add entire row header into our first row
//     rows.add(rowHeader);
//     //Now lets add 5 data rows
//     for(int i=0;i<5;i++){
//       //everytime loop executes we need to add new row
//       List<dynamic> dataRow=[];
//       dataRow.add("NAME :$i");
//       dataRow.add("ADDRESS :$i");
//       dataRow.add("PHONE:$i");
//       //lastly add dataRow to our 2d list
//       rows.add(dataRow);
//     }
//
// //now convert our 2d array into the csvlist using the plugin of csv
//     String csv = const ListToCsvConverter().convert(rows);
// //this csv variable holds entire csv data
// //Now Convert or encode this csv string into utf8
//     final bytes = utf8.encode(csv);
// //NOTE THAT HERE WE USED HTML PACKAGE
//     final blob = html.Blob([bytes]);
// //It will create downloadable object
//     final url = html.Url.createObjectUrlFromBlob(blob);
// //It will create anchor to download the file
//     final anchor = html.document.createElement('a')  as    html.AnchorElement..href = url..style.display = 'none'         ..download = 'yourcsvname.csv';
// //finally add the csv anchor to body
//     html.document.body?.children.add(anchor);
// // Cause download by calling this function
//     anchor.click();
// //revoke the object
//     html.Url.revokeObjectUrl(url);
//
//   }
// }