import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  TextEditingController c1 = TextEditingController();
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Input Ejemplo"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          actions: [IconButton(onPressed: (){}, icon:Icon(Icons.person))],
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: c1,
                decoration: InputDecoration(
                  labelText: "Nombre",
                  hintText: "Nombre",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  )
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  print(c1.text);
                }, 
                child: Text("Guardar")
                ),
                ),
            ],
          ),
        )
      ),
    );
  }
}
