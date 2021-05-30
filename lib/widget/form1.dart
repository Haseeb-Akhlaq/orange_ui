import 'package:flutter/material.dart';

class Form1 extends StatefulWidget {
  @override
  _Form1State createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  String _chosenValue = 'Android';
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
        accentColor: Colors.black,
        unselectedWidgetColor: Colors.black,
      ),
      child: ExpansionTile(
        // trailing: Icon(
        //   isExpanded ? Icons.arrow_drop_up_sharp : Icons.arrow_drop_down,
        //   size: 35,
        //   color: Colors.grey,
        // ),
        initiallyExpanded: isExpanded,
        childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
        title: Text(
          'Info Nasabah',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name Pemhon',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Status Pernikahan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.all(0),
                childrenPadding: EdgeInsets.all(0).copyWith(top: 0),
                title: Text(
                  'Pilih ststus',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                            border: Border(
                              top: BorderSide(
                                width: 1.5,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          child: Text(
                            'Single',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          child: Text(
                            'MeniKah',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          child: Text(
                            'Duda/Janda',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
        onExpansionChanged: (isExpanded) => () {
          print('adssad');
        },
      ),
    );
  }
}
