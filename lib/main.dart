import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              //child:Image.asset('asset/images/messi.png'),
              // color: Colors.green,
              // padding: EdgeInsets.all(8),
              // color: Colors.green,
              // padding: EdgeInsets.all(8),
              // padding: EdgeInsets.symmetric(
              //   vertical: 8,
              //   horizontal: 4
              // padding: EdgeInsets.only(bottom:8),
              margin: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 8),
              //child:Text('Simple')
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black, width: 4),
                  // borderRadius: BorderRadius.only(
                  //    topLeft:Radius.circular(16),
                  //  bottomRight:Radius.circular(16)
                  // ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('asset/images/messi.png'),
                      fit: BoxFit.cover,
                      opacity: 1),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 8,
                        offset: Offset(0, 3)),
                    BoxShadow(
                      color: Colors.green.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 8,
                      offset: Offset(0, 6),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text('sdhffj'),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                      barrierColor: Colors.black54,
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          title: Text('Our custom dialog'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('samplr text'),
                              Text('Sample test'),
                              Text('Sample test'),
                              Text('Sample test'),
                            ],
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("cancle")),
                            TextButton(onPressed: () {}, child: Text('Okey')),
                          ],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.grey,
                        );
                      });
                },

                child: Text('Dialog')),
            SizedBox(height: 16,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                onPressed: (){

              showModalBottomSheet(
                backgroundColor: Colors.white,
                  context: context,
                  barrierColor: Colors.black54,
                  //enableDrag: false,
                  // isDismissible: false,


                  builder: (ctx){
                return SizedBox(
                  height: 300,
                  width:double.infinity,
                  child:Column(
                    children: [
                      Padding(
                          padding:EdgeInsets.all(20),
                        child: Text("Title"),
                      ),
                      Divider(),
                      Padding(
                        padding:EdgeInsets.all(20),
                        child: Text("Title"),
                      ),
                      Divider(),
                      Column(
                        children: [],
                      )

                    ],
                  ),

                );

              });
            }, child:Text('Show button Sheet'))

          ],
        ),
      ),
    );
  }
}
