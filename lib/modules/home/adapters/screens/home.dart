import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (var i = 0; i < 9; i++)
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 30.0,
                        ),
                      ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30.0,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text('Rodrigoremen',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('ola ya se flutter',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.messenger_outline,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.send, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                            icon: Icon(Icons.bookmark_border),
                            onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('Esta es una descripción de la imagen ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  )),
              Divider(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30.0,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text('Rodrigoremen',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('ola ya se flutter',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.messenger_outline,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.send, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                            icon: Icon(Icons.bookmark_border),
                            onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('Esta es una descripción de la imagen ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  )),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30.0,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text('Rodrigoremen',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('ola ya se flutter',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.messenger_outline,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.send, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                            icon: Icon(Icons.bookmark_border),
                            onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('Esta es una descripción de la imagen ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
