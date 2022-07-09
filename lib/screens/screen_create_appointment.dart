import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:group_button/group_button.dart';
import 'package:provider/provider.dart';


class ScreenCreateAppointment extends StatelessWidget {
  final _borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: _theme.appBarTheme.foregroundColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('Book appointment', style: _theme.textTheme.headline3,),
        iconTheme: _theme.iconTheme,
        backgroundColor: _theme.appBarTheme.backgroundColor,
      ),
      body: Card(
        margin: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_borderRadius)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 70.0,
              margin: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(_borderRadius),
                      topRight: Radius.circular(_borderRadius))),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.ac_unit, color: Colors.white,),
                ),
                title: Text(
                  'World Tour', style: TextStyle(color: Colors.white,),),
                subtitle: Text('Mid Valley Boulevard', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0)),

              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Date',),
                  SizedBox(height: 9.0,),
                  Text('Wed 23 January 2020', style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18.0),),
                  SizedBox(height: 15.0,),
                  Text('Booking Fee (Per pax)',),
                  SizedBox(height: 9.0,),
                  Text('MYR 30', style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18.0),)
                ],
              ),
            ),
            Divider(),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Select session'),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 0.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(5.0))

                        ),
                        child: GroupButton(
                          buttonWidth: MediaQuery
                              .of(context)
                              .size
                              .width / 3 - 21,
                          isRadio: true,
                          spacing: 5.0,
                          direction: Axis.horizontal,
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          onSelected: (index, isSelected) =>
                              print('$index button is selected'),
                          buttons: ["Morning", "Afternoon", "Evening"],
                          selectedShadow: <BoxShadow>[
                            BoxShadow(color: Colors.transparent)
                          ],
                          unselectedShadow: <BoxShadow>[
                            BoxShadow(color: Colors.transparent)
                          ],
                          crossGroupAlignment: CrossGroupAlignment.center,
                          selectedTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          unselectedTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Wrap(
                        spacing: 3.0,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 0.0),
                            height: 50.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 3 - 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,),
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10.0))),
                            child: Center(
                              child: Text('09:00-09:15', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,), textAlign: TextAlign
                                  .center,), widthFactor: 5.0 / 3,),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 0.0),
                            height: 50.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 3 - 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,),
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10.0))),
                            child: Center(
                              child: Text('09:00-09:15', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,), textAlign: TextAlign
                                  .center,), widthFactor: 5.0 / 3,),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 0.0),
                            height: 50.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 3 - 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,),
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10.0))),
                            child: Center(
                              child: Text('09:00-09:15', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,), textAlign: TextAlign
                                  .center,), widthFactor: 5.0 / 3,),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 0.0),
                            height: 50.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 3 - 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,),
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10.0))),
                            child: Center(child: Text(
                              '09:00-09:15 \n Selected', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,), textAlign: TextAlign
                                .center,), widthFactor: 5.0 / 3,),
                          ),
                        ],
                      )
                    ])
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: _theme.appBarTheme.foregroundColor,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))))
            ),
              
            onPressed: () async {
              _requestAppointmentSchedule(context);
            },
            child: Text(
                'Create appointment', style: TextStyle(color: Colors.white)),
          ),
        ),
        elevation: 0,
      ),
    );
  }

}
  Future<void> _requestAppointmentSchedule(BuildContext context) async {
    AppointmentRequest _appointmentRequest = AppointmentRequest.from('2021-07-10T18:13:25');
    AppointmentInfo _appointmentInfo;
    Future<Response<AppointmentInfo>> response = Provider.of<PostApiService>(context, listen: false).createAppointment(_appointmentRequest);
    response.then((value) => {
      if(value.isSuccessful){
        Navigator.pop(context),
         _appointmentInfo = value.body!
      }
    });

  }
