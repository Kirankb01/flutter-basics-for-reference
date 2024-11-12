import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: HomePage(),
      title: 'Flutter Demo',
    );
  }
}




class HomePage extends StatefulWidget{
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController=TextEditingController();
  String _displayText='Text will be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.black54,
      // ),

      body:SafeArea(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // width: double.infinity,
                // height: double.infinity,
                color: Colors.amberAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Welcome To Reality',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 25,

                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed:(){
                            print('Text button clicked');
                          }, child: const Text('Click Me')),
                          ElevatedButton(onPressed:(){
                            print('Text button clicked');
                          }, child: const Text('Click Me')),
                          IconButton(onPressed: (){
                            print('Text button clicked');
                          }, icon: Icon(Icons.add_call))
                        ]
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      color: Colors.yellow[100],
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextField(
                              controller: _textController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Type Something',
                              ),
                            ),
                            ElevatedButton(onPressed: (){
                              setState(() {
                                _displayText=_textController.text;
                              });
                            }, child: const Text('Click Me')),
                             Text(_displayText),
                          ]
                      ),
                    ),
                  ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                // width: double.infinity,
                // height: double.infinity,
                color: Colors.lightGreenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Welcome To Reality',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed:(){
                            print('Text button clicked');
                          }, child: const Text('Click Me')),
                          ElevatedButton(onPressed:(){
                            print('Text button clicked');
                          }, child: const Text('Click Me')),
                          IconButton(onPressed: (){
                            print('Text button clicked');
                          }, icon: Icon(Icons.add_call))
                        ]
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}


