import 'package:flutter/material.dart';

void main() => runApp(MyApp());
var conn = new SqlConnection("SERVER=localhost;Database=TechReg;Trusted_connection=yes");
await conn.open();

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOFTEC 2022 Application',
      home: LoginTabsScreen(),
    );
  }
}

class LoginTabsScreen extends StatefulWidget {
  @override
  LoginTabsScreenState createState() => LoginTabsScreenState();
}

class LoginTabsScreenState extends State<LoginTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('SOFTEC 2022'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.login),
                text: 'login',
              ),
              Tab(
                icon: Icon(Icons.app_registration),
                text: 'registeration',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            LoginPage(),
            RegisterationPage(),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return ParticipantTabsScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Text(
            'SOFTEC LOGO HERE',
            textAlign: TextAlign.center,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.lightBlue,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: TextField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
            ),
            Container(
              color: Colors.lightBlue,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: TextField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: ElevatedButton(
                onPressed: () => selectScreen(context),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(),
        Container(),
      ],
    );
  }
}

class RegisterationPage extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return ParticipantTabsScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Text(
            'SOFTEC LOGO HERE',
            textAlign: TextAlign.center,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.lightBlue,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: TextField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
            ),
            Container(
              color: Colors.lightBlue,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: TextField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            Container(
              color: Colors.lightBlue,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: TextField(
                decoration: InputDecoration(labelText: 'Confirm Password'),
              ),
            ),
            Container(
              color: Colors.lightBlue,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: TextField(
                decoration:
                    InputDecoration(labelText: 'Date of Birth (DD/MM/YYYY)'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: ElevatedButton(
                onPressed: () => selectScreen(context),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HomePageParticipant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Participant home page here'),
    );
  }
}

class PromosTabParticipant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('BIG PROMO HERE'),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(width: 5),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(7),
                child: Text('small PROMO HERE'),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(width: 1),
                ),
              ),
              Container(
                padding: EdgeInsets.all(7),
                child: Text('small PROMO HERE'),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(width: 1),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class tab3Participant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('tab3');
  }
}

class HomePageManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('homepage'),
    );
  }
}

class HomePageSponsor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('homepage'),
    );
  }
}

class ParticipantTabsScreen extends StatefulWidget {
  @override
  ParticipantTabsScreenState createState() => ParticipantTabsScreenState();
}

class ParticipantTabsScreenState extends State<ParticipantTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('SOFTEC 2022'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: 'Home Page',
              ),
              Tab(
                icon: Icon(Icons.app_registration),
                text: 'tab 2',
              ),
              Tab(
                icon: Icon(Icons.analytics),
                text: 'tab 3',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomePageParticipant(),
            PromosTabParticipant(),
            tab3Participant(),
          ],
        ),
      ),
    );
  }
}
