import 'package:flutter/material.dart';
void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa Layout'),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade100, 
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Layout Superior',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.red, width: 2), 
                    borderRadius: BorderRadius.circular(12), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), 
                        blurRadius: 10, 
                        offset: const Offset(4, 4), 
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Meu Aplicativo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 1, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ),
          Container(
            height: 50, 
            color: Colors.white, 
            alignment: Alignment.center,
            child: const Text(
              'Layout Inferior',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
