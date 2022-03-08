import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лабораторная работа №3',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Общежития КубГАУ'),
      ),
      body: Center(
        child: Column(
          children: [
            Row( //картинка
               children: <Widget>[
                 SizedBox(
                     child: Image.network('http://photos.wikimapia.org/p/00/02/47/09/58_big.jpg', fit: BoxFit.fill, width: 400-7.3, height: 300,),
                 ),
               ],
            ),
            Row( //
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,// общежитие + адрес
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(padding: EdgeInsets.fromLTRB(25, 30, 10, 0),
                        child: Text('Общежитие №20', style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w600), ),
                      ),

                      Padding(padding: EdgeInsets.fromLTRB(25, 5, 10, 0),
                        child: Text('Краснодар, ул. Калинина, 13', style: TextStyle(color: Colors.grey, fontSize: 16),),
                      ),
                    ],
                  ),
                  Column( // лайк
                      children: [
                        Row(
                          children: const <Widget> [
                            Padding(padding: EdgeInsets.fromLTRB(55, 25, 0, 0),
                              child: Icon(Icons.favorite, color: Colors.red),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: Text('27', style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),)
                            ),

                            //Icon(Icons.favorite, color: Colors.red),
                            //Text('27', style: TextStyle(color: Colors.grey, fontSize: 16),)
                          ],
                        )
                      ],
                  ),
                ],
            ),
            Row(

            ),
          ],
        ),
      )
    );
  }
}

/*
*         child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[

          ],
        ),
* */


//const Image(image: NetworkImage(
//'https://sun6-20.userapi.com/s/v1/if2/5KzWOm7-zuFbvIsFRwKpM6sl2YLZ1VhRFVL0OK1BQjEHZIqp0PYjKQ2hk9eJ36POQUwlGwXQ47KOTT0OyW-xiQ9y.'
//'jpg?size=200x200&quality=96&crop=286,118,761,761&ava=1',),),