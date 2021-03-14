import 'package:mobile/model/consultation.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ConsultationWidget extends StatefulWidget {

  final Consultation cs;

  const ConsultationWidget(
      String s, {
        Key key,
        @required this.cs,


      }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ConsultationWidgetWidgetState();
}


class _ConsultationWidgetWidgetState extends State<ConsultationWidget> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);


  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;demo


          return new Column(children: <Widget>[
            new Expanded(
              child: ListTile(
                dense: true,
                leading: Text("From: ", style: TextStyle(fontWeight: FontWeight.bold),),
                title: Text(widget.cs.fromDate),
              ),
            ),
            new Expanded(
              child: ListTile(
                dense: true,
                leading: Text("To:", style: TextStyle(fontWeight: FontWeight.bold),),
                title: Text(widget.cs.toDate),
              ),
            ),

          ]);
  }
}
