
import 'package:flutter/material.dart';

void main() {
  runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
  home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),

                ),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image:AssetImage("assets/college1.webp"),
                    )
                  ),
                  height: 400,
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Indian Institute of technology",
                      style: TextStyle(
                        backgroundColor: Colors.black12,
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: const [
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.grey,),
                    Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(" 4/5",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: const [
                    Icon(Icons.location_on),
                    Text("Jaipur, Rajasthan"),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.call,
                  color: Colors.orange,
                  size: 40,),
                  Icon(Icons.monetization_on_outlined,
                    color: Colors.orange,
                  size: 40,),
                  Icon(Icons.message,
                    color: Colors.orange,
                  size: 40,),
                  Icon(Icons.star_border,
                    color: Colors.orange,
                  size: 40,),
                ],
              ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text("DESCRIPTION",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      "The Indian Institute of Technology IIT is a group of educational\ninstitutes in India set up by the government to produce high quality\nscientists, engineers and technologists. "
                       ),
                  ],
                ),
              ),
              const SizedBox(
                height: 170,
              ),
              Material(
                borderOnForeground: true,
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(15),
                elevation: 10,
                child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: const Text(
                    'APPLY NOW',
                    style: TextStyle(fontSize: 28,
                    color: Colors.white,
                    ),

                  ),
                  onPressed: () {
                    print("APPLY BUTTON PRESSED");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
