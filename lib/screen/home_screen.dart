import 'package:flutter/material.dart';
import 'package:qrcode_project/screen/components/build_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 39, 76),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.white,),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      const AssetImage('assets/images/profil.jpg'),
                  backgroundColor: Colors.amber.shade400,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hallo Bagas',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 20,color: Colors.white
                  ),
                ),
                Text(
                  'QR S&G',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Expanded untuk GridView
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  BuildButton(
                    icon: Icons.qr_code_2_sharp,
                    label: 'Create',
                    iconColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    onTap: () {
                      Navigator.pushNamed(context, '/create');
                    },
                  ),
                  BuildButton(
                    icon: Icons.qr_code_scanner_sharp,
                    label: 'Scan',
                    iconColor: Colors.white.withOpacity(0.9),
                    backgroundColor: Colors.red.withOpacity(0.5),
                    onTap: () {
                      Navigator.pushNamed(context, "/scan");
                    },
                  ),
                  BuildButton(
                    icon: Icons.send,
                    label: 'Send',
                    iconColor: Colors.white.withOpacity(0.9),
                    backgroundColor: Colors.green.withOpacity(0.5),
                    onTap: () {},
                  ),
                  BuildButton(
                    icon: Icons.print_rounded,
                    label: 'Print',
                    iconColor: Colors.white.withOpacity(0.9),
                    backgroundColor: Colors.purple.withOpacity(0.5),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
