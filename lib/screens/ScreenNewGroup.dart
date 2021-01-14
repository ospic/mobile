import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/built_post.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class ScreenNewGroup extends StatefulWidget {
  ScreenNewGroup({Key key}) : super(key: key);

  @override
  _NewGroupState createState() => new _NewGroupState();
}

class _NewGroupState extends State<ScreenNewGroup> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: green1.withOpacity(0.9),
          title: Text('Create New Group'),
        ),
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Card(
              child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Create new group'),
                  subtitle: Text('******************'),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        cursorColor: green1,
                        keyboardType: TextInputType.text,
                        expands: false,
                        keyboardAppearance: Brightness.light,
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(),
                          icon:
                              Icon(MdiIcons.accountGroup, color: Colors.green),
                          labelText: 'Enter group name',
                          hintText: 'e.g. Cursor group',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter group name';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        cursorColor: green1,
                        keyboardType: TextInputType.text,
                        expands: false,
                        keyboardAppearance: Brightness.light,
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(),
                          icon: Icon(MdiIcons.numeric, color: Colors.green),
                          labelText: 'Enter group number',
                          hintText: 'e.g GRP8T5',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter group number';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        cursorColor: green1,
                        keyboardType: TextInputType.text,
                        expands: false,
                        keyboardAppearance: Brightness.light,
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(),
                          icon: Icon(MdiIcons.phoneCheck, color: Colors.green),
                          labelText: 'Enter group phone',
                          hintText: 'e.g +255 000 000 000',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter group phone';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        cursorColor: green1,
                        keyboardType: TextInputType.emailAddress,
                        expands: false,
                        keyboardAppearance: Brightness.light,
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(),
                          icon: Icon(MdiIcons.emailAlert, color: Colors.green),
                          labelText: 'Enter group email',
                          hintText: 'e.g groupemail@example.com',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter group email';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ButtonBar(
                          children: <Widget>[
                            RaisedButton(
                              color: green1,
                              textColor: Colors.white,
                              child: const Text('Submit'),
                              onPressed: () async {
                                final authPost = BuiltPost(
                                  (b) => b
                                    // id is null - it gets assigned in the backend
                                    ..name = 'New Title'
                                    ..age = 23,
                                );
                                if (_formKey.currentState.validate()) {
                                  // Process data.
                                  final response =
                                      await Provider.of<PostApiService>(context,listen: false).postPost(authPost);
                                  print(response.body);
                                }
                              },
                            ),
                            RaisedButton(
                              color: blue,
                              textColor: Colors.white,
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        )));
  }
}
