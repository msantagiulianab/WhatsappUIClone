import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    _scrollController = new ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Whatsapp UI Clone',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool InnerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: <Widget>[
                  Icon(Icons.search),
                  Container(
                    width: 20.0,
                  ),
                  Icon(Icons.more_vert),
                  Container(
                    width: 20.0,
                  ),
                ],
                pinned: true,
                floating: true,
                centerTitle: false,
                backgroundColor: Color(0xFF075e54),
                title: Text('Whatsapp UI'),
                bottom: TabBar(
                    indicatorWeight: 5.0,
                    indicatorColor: Colors.white,
                    controller: _tabController,
                    tabs: [
                      Tab(
                        child: Icon(Icons.photo_camera),
                      ),
                      Tab(
                        text: 'CHATS',
                      ),
                      Tab(
                        text: 'STATUS',
                      ),
                      Tab(
                        text: 'CALLS',
                      )
                    ]),
              )
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[Text('camera'), Chats(), Status(), Calls()],
          ),
        ),
      ),
    );
  }
}

class Chats extends StatefulWidget {
  ChatsState createState() => ChatsState();
}

class ChatsState extends State<Chats> {
  List<String> names = [
    'alpha',
    'beta',
    'gamma',
    'alpha',
    'beta',
    'gamma',
    'alpha',
    'beta',
    'gamma',
  ];

  List<String> text = [
    'hello',
    'hiii',
    'how are you?',
    'hello',
    'hiii',
    'how are you?',
    'hello',
    'hiii',
    'how are you?',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF25d366),
        child: Center(
          child: Icon(Icons.message),
        ),
        onPressed: null,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
                    ),
                    title: Text(names[index]),
                    subtitle: Text(text[index]),
                    trailing: Text('10:00'),
                  ),
                  Divider()
                ],
              );
            }),
      ),
    );
  }
}

class Status extends StatefulWidget {
  StatusState createState() => StatusState();
}

class StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF25d366),
        child: Icon(Icons.photo_camera),
        onPressed: null,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
            ),
            title: Text('My status'),
            subtitle: Text('Tap to add status update'),
          ),
          Container(
            color: Colors.grey[300],
            width: MediaQuery.of(context).size.width,
            height: 20.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Recent updates',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
            ),
            title: Text('Beta'),
            subtitle: Text('Latest update'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
            ),
            title: Text('Alpha'),
            subtitle: Text('Latest update'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
            ),
            title: Text('Jane'),
            subtitle: Text('Latest update'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
            ),
            title: Text('Herbert'),
            subtitle: Text('Latest update'),
          ),
        ],
      ),
    );
  }
}

class Calls extends StatefulWidget {
  CallsState createState() => CallsState();
}

class CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
          ),
          title: Text('Phillip'),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_upward,
                color: Colors.green,
              ),
              Text('Today, 13:45'),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Color(0xFF075e54),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
          ),
          title: Text('Annabel'),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_downward,
                color: Colors.red,
              ),
              Text('Today, 09:15'),
            ],
          ),
          trailing: Icon(
            Icons.videocam,
            color: Color(0xFF075e54),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
          ),
          title: Text('Robert'),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_downward,
                color: Colors.red,
              ),
              Text('Yesterday, 13:45'),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Color(0xFF075e54),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/10/07/15/27/wolf-2826741_960_720.jpg'),
          ),
          title: Text('Jack'),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_upward,
                color: Colors.green,
              ),
              Text('Yesterday, 07:30'),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Color(0xFF075e54),
          ),
        ),
      ],
    );
  }
}
