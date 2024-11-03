import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'Menu lateral',
    theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: HomePage(),
    );
}
}

class HomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('Página de inicio'),

    ),
      // Añadimos el Drawer aquí
    drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
            // Encabezado del drawer
            DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.cyan,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.blue),
                ),
                SizedBox(height: 10),
                Text(
                    'Armando Jersain Ibarra Escalera',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    ),
                ),
                Text(
                    'aibarra7@ucol.mx',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    ),
                ),
                ],
            ),
            ),
            // Elementos del menú
            ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () {
                // Acción para la página de inicio
                Navigator.pop(context); // Cierra el drawer
            },
            ),
            ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuración'),
            onTap: () {
                // Navegar a la página de configuración
                Navigator.pop(context);
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
                );
            },
            ),
            ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            onTap: () {
                // Navegar a la página de perfil
                Navigator.pop(context);
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
                );
            },
            ),
            Divider(), // Línea separadora
            ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
                // Navegar a la página de perfil
                Navigator.pop(context);
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogoutPage()),
                );
            },
            ),
        ],
        ),
    ),
    body: Center(
        child: Text('Pagina de inicio'),
    ),
    );
}
}

// Páginas de ejemplo para navegación
class SettingsPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('Configuración'),
    ),
    body: Center(
        child: Text('Página de Configuración'),
    ),
    );
}
}

class ProfilePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('Perfil'),
    ),
    body: Center(
        child: Text('Página de Perfil'),
    ),
    );
}
}

class LogoutPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('Logout'),
    ),
    body: Center(
        child: Text('Página de Logout'),
    ),
    );
}
}