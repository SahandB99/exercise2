import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  }

  class _HomeState extends State<Home>{
    double _red = 20;
    double _green = 20;
    double _blue = 20;

    double textSize = 20;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Icon',style: TextStyle(fontSize: textSize),),
          actions: <Widget> [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle),
              child: IconButton(
                onPressed: (){
                  setState(() {
                    textSize -=50;         
                  });
                },
                icon: Icon(Icons.remove),
                iconSize: 5.0,
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 100;
                  });
                }, 
                icon: Text('S'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 300;
                  });
                }, 
                icon: Text('M'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 500;
                  });
                }, 
                icon: Text('L'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize +=50;         
                  });
                }, 
                icon: Icon(Icons.add), 
                iconSize: 8.0),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              CheckboxListTile(
                value: false, 
                onChanged: (bool? value){
                
                },
                title: Text('Allow resize?'),
              ),
              CheckboxListTile(
                value: false, 
                onChanged: (bool? value){
                
                },
                title: Text('Allow change primer color?'),
              ),
            ],
          ),
        ),
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Icon(Icons.alarm,size: 300, color: Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1)),
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _red,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _red = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: (){
                    setState(() {
                      _red = 255;
                      _green = 0;
                      _blue = 0;               
                    });
                    
                  },
                  child: Text(_red.round().toString()),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _green,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _green = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: (){
                    setState(() {
                      _red = 0;
                      _green = 255;
                      _blue = 0;               
                    });
                   },
                  child: Text(_green.round().toString()),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _blue,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _blue = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: (){
                    setState(() {
                      _red = 0;
                      _green = 0;
                      _blue = 255;               
                    });
                  },
                  child: Text(_blue.round().toString()),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  }

  class _HomeState extends State<Home>{
    double _red = 20;
    double _green = 20;
    double _blue = 20;

    double textSize = 20;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Icon',style: TextStyle(fontSize: textSize),),
          actions: <Widget> [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle),
              child: IconButton(
                onPressed: (){
                  setState(() {
                    textSize -=50;         
                  });
                },
                icon: Icon(Icons.remove),
                iconSize: 5.0,
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 100;
                  });
                }, 
                icon: Text('S'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 300;
                  });
                }, 
                icon: Text('M'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 500;
                  });
                }, 
                icon: Text('L'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize +=50;         
                  });
                }, 
                icon: Icon(Icons.add), 
                iconSize: 8.0),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              CheckboxListTile(
                value: false, 
                onChanged: (bool? value){
                
                },
                title: Text('Allow resize?'),
              ),
              CheckboxListTile(
                value: false, 
                onChanged: (bool? value){
                
                },
                title: Text('Allow change primer color?'),
              ),
            ],
          ),
        ),
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Icon(Icons.alarm,size: 300, color: Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1)),
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _red,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _red = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: (){
                    setState(() {
                      _red = 255;
                      _green = 0;
                      _blue = 0;               
                    });
                    
                  },
                  child: Text(_red.round().toString()),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _green,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _green = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: (){
                    setState(() {
                      _red = 0;
                      _green = 255;
                      _blue = 0;               
                    });
                   },
                  child: Text(_green.round().toString()),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _blue,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _blue = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: (){
                    setState(() {
                      _red = 0;
                      _green = 0;
                      _blue = 255;               
                    });
                  },
                  child: Text(_blue.round().toString()),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  }

  class _HomeState extends State<Home>{
    double _red = 20;
    double _green = 20;
    double _blue = 20;

    double textSize = 20;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Icon',style: TextStyle(fontSize: textSize),),
          actions: <Widget> [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle),
              child: IconButton(
                onPressed: (){
                  setState(() {
                    textSize -=50;         
                  });
                },
                icon: Icon(Icons.remove),
                iconSize: 5.0,
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 100;
                  });
                }, 
                icon: Text('S'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 300;
                  });
                }, 
                icon: Text('M'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 500;
                  });
                }, 
                icon: Text('L'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize +=50;         
                  });
                }, 
                icon: Icon(Icons.add), 
                iconSize: 8.0),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              CheckboxListTile(
                value: false, 
                onChanged: (bool? value){
                
                },
                title: Text('Allow resize?'),
              ),
              CheckboxListTile(
                value: false, 
                onChanged: (bool? value){
                
                },
                title: Text('Allow change primer color?'),
              ),
            ],
          ),
        ),
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Icon(Icons.alarm,size: 300, color: Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1)),
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _red,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _red = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: (){
                    setState(() {
                      _red = 255;
                      _green = 0;
                      _blue = 0;               
                    });
                    
                  },
                  child: Text(_red.round().toString()),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _green,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _green = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: (){
                    setState(() {
                      _red = 0;
                      _green = 255;
                      _blue = 0;               
                    });
                   },
                  child: Text(_green.round().toString()),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _blue,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _blue = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: (){
                    setState(() {
                      _red = 0;
                      _green = 0;
                      _blue = 255;               
                    });
                  },
                  child: Text(_blue.round().toString()),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  }

  class _HomeState extends State<Home>{
    double _red = 20;
    double _green = 20;
    double _blue = 20;

    double textSize = 20;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Icon',style: TextStyle(fontSize: textSize),),
          actions: <Widget> [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle),
              child: IconButton(
                onPressed: (){
                  setState(() {
                    textSize -=50;         
                  });
                },
                icon: Icon(Icons.remove),
                iconSize: 5.0,
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 100;
                  });
                }, 
                icon: Text('S'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 300;
                  });
                }, 
                icon: Text('M'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize = 500;
                  });
                }, 
                icon: Text('L'),
                
              ),
            ),
            SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    textSize +=50;         
                  });
                }, 
                icon: Icon(Icons.add), 
                iconSize: 8.0),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              CheckboxListTile(
                value: false, 
                onChanged: (bool? value){
                
                },
                title: Text('Allow resize?'),
              ),
              CheckboxListTile(
                value: false, 
                onChanged: (bool? value){
                
                },
                title: Text('Allow change primer color?'),
              ),
            ],
          ),
        ),
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Icon(Icons.alarm,size: 300, color: Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1)),
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _red,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _red = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: (){
                    setState(() {
                      _red = 255;
                      _green = 0;
                      _blue = 0;               
                    });
                    
                  },
                  child: Text(_red.round().toString()),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _green,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _green = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: (){
                    setState(() {
                      _red = 0;
                      _green = 255;
                      _blue = 0;               
                    });
                   },
                  child: Text(_green.round().toString()),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    max: 255,
                    min: 0,
                    value: _blue,
                    divisions: 100,
                    onChanged: (double value){
                      setState(() {
                        _blue = value;
                      });
                    },
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: (){
                    setState(() {
                      _red = 0;
                      _green = 0;
                      _blue = 255;               
                    });
                  },
                  child: Text(_blue.round().toString()),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
