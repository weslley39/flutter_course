import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text('Are you sure?'),
              content: Text('This action can not be undone'),
              actions: <Widget>[
                FlatButton(
                    child: Text('Discard'),
                    onPressed: () => Navigator.pop(context)),
                FlatButton(
                    child: Text('Continue'),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context, true);
                    }),
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(this.imageUrl),
              Container(padding: EdgeInsets.all(10.0), child: Text(this.title)),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text('Delete'),
                      onPressed: () => _showWarningDialog(context)))
            ]));
  }
}
