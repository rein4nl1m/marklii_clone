import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;

  void changeTab(index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.lime[600],
              expandedHeight: 123,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Oi, Reinan!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                titlePadding: EdgeInsets.only(left: 16, bottom: 16),
              ),
            ),
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: "Markliiers perto de você",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 21,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "\nBlumenau, SC",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.lime[600],
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Markii"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            title: Text("Lista"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            title: Text("Despensa"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            title: Text("Consumo"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Perfil"),
          ),
        ],
        onTap: changeTab,
      ),
    );
  }
}
