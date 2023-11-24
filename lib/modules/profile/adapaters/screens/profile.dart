import 'package:flutter/material.dart';
import 'package:practica/kernel/theme/colors_app.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String buttonText = '';
  String selectedIconText =
      ''; // Variable para almacenar el texto del icono seleccionado
  bool showGrid = false;

  // Estados para los colores de los iconos
  Color gridIconColor = Colors.black;
  Color videoIconColor = Colors.black;
  Color personIconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Rodrigoremen', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_box_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Stack(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 50.0,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 15.0,
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Rodrigoremen',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Posts', style: TextStyle(fontSize: 16)),
                              Text('123', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Followers', style: TextStyle(fontSize: 16)),
                              Text('456', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Following', style: TextStyle(fontSize: 16)),
                              Text('789', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/profile/edit');
                },
                child: const Text('Editar perfil'),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
                indent: 10,
                endIndent: 10,
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        buttonText = 'hola perro';
                        selectedIconText = buttonText;
                        showGrid = true;
                        // Cambiar el color del icono seleccionado y restablecer otros a negro
                        gridIconColor = ColorsApp.primaryColor;
                        videoIconColor = ColorsApp.successColor;
                        personIconColor = ColorsApp.successColor;
                      });
                    },
                    icon: Icon(Icons.grid_on, color: gridIconColor),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        buttonText = 'hola adacedi';
                        selectedIconText = buttonText;
                        showGrid = false;
                        // Cambiar el color del icono seleccionado y restablecer otros a negro
                        gridIconColor = ColorsApp.successColor;
                        videoIconColor = ColorsApp.primaryColor;
                        personIconColor = ColorsApp.successColor;
                      });
                    },
                    icon: Icon(Icons.video_collection, color: videoIconColor),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        buttonText = 'liz';
                        selectedIconText = buttonText;
                        showGrid = false;
                        // Cambiar el color del icono seleccionado y restablecer otros a negro
                        gridIconColor = ColorsApp.successColor;
                        videoIconColor = ColorsApp.successColor;
                        personIconColor = ColorsApp.primaryColor;
                      });
                    },
                    icon: Icon(Icons.person, color: personIconColor),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              if (showGrid)
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          'Elemento $index',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              const SizedBox(height: 10),
              Text(selectedIconText),
            ],
          ),
        ),
      ),
    );
  }
}

