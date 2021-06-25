import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/model/consultation.dart';
import 'package:flutter/material.dart';
typedef Null ItemSelectedCallback(int value);
class ConsultationWidget extends StatefulWidget {
  final Consultation cs;
  final ItemSelectedCallback onItemSelected;

  const ConsultationWidget(
    String s, {
    Key key,
    @required this.cs, this.onItemSelected,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ConsultationWidgetWidgetState();
}

class _ConsultationWidgetWidgetState extends State<ConsultationWidget> {

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
     child: Card(
       margin: EdgeInsets.all(1.8),
      shadowColor: Colors.transparent,
       elevation: 0.0,

        child: Padding(
          padding: EdgeInsets.all(5.0),
          child:  Container(
              height: 72,
              color: Color(0xffffffff),
              child: Row(
                  children: [
                Container(
                    color: Color(0x0),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: widget.cs.isAdmitted ?  Colors.red[700]: Colors.green[100],
                      child: widget.cs.isAdmitted ? Icon(MdiIcons.bed, color: Colors.white,): Text(
                        widget.cs.id.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FiraSans', color: widget.cs.isActive ? Colors.white : Colors.green),
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
                    ]),

              ])),
        ),

    ),
      onTap: (){
       widget.onItemSelected(widget.cs.id);
      },
    );
  }
}
