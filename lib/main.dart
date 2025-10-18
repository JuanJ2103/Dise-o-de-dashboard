import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MySimpleLayout()));
}

class MySimpleLayout extends StatelessWidget {
  const MySimpleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FlutterLogo(size: 40),
                Text('Diseño de dashboard', style: TextStyle(fontSize: 20)),
                Icon(Icons.settings),
              ],
            ),
            const SizedBox(height: 24),

           
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: const Text('Tarjeta 1', style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: const Text('Tarjeta 2', style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: const Text('Tarjeta 3', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

          
            Container(
              height: 100,
              color: Colors.deepPurple,
              alignment: Alignment.center,
              child: const Text('Sección 1', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text('Sección 2', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
