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
    final String consultant = widget.cs.staffName==null? '': 'Consultant name '+widget.cs.staffName;
    return Card(
        child: Column(children: [
      Container(
          height: 72,
          color: Color(0xffffffff),
          child: Row(children: [
            Container(
                color: Color(0x0),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: widget.cs.isActive ?  Colors.green.shade800: Colors.green[100],
                  child: Text(
                    widget.cs.id.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(widget.cs.fromDate,
                      style: TextStyle(fontSize: 16, color: Color(0xff000000))),
                  Text(widget.cs.patientName,
                      style: TextStyle(fontSize: 14, color: Color(0xff000000)))
                ])
          ])),
      Container(
          color: Color(0xffffffff),
          padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 16),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
                'This consultation was from '+widget.cs.fromDate +' to date  '+widget.cs.toDate +'. $consultant' ,
                style: TextStyle(fontSize: 14, color: Color(0xff000000))),
            Container(height: 4, color: Color(0xffffffff)),
            Row(children: [
              MaterialButton(

                  padding:
                      EdgeInsets.only(left: 0, right: 8, bottom: 0, top: 0),
                  child: Text('Action 1',
                      style: TextStyle(color: Color(0xff9c27b0)))),
              MaterialButton(
                  child: Text('Action 2',
                      style: TextStyle(color: Color(0xff9c27b0))))
            ])
          ]))
    ]));
  }
}
