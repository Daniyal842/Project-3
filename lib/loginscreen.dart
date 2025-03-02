import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  double totalprice=0;
  TextEditingController tolaPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
  TextEditingController mashaQuantityController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(Icons.refresh,color: Colors.black,),
        onPressed: (){
          totalprice=0;
          tolaPriceController.clear();
          tolaQuantityController.clear();
          mashaQuantityController.clear();
          setState(() {

          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.orange),
            ),
            child: TextFormField(
              controller: tolaPriceController,
              decoration: InputDecoration(
                border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.currency_bitcoin,
                    color: Colors.amber,
                  ),
                  hintText: 'Enter Tola Price',
                  hintStyle: TextStyle(color: Colors.amber)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.orange),
            ),
            child: TextFormField(
              controller: tolaQuantityController,
              decoration: InputDecoration(
                border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.currency_bitcoin,
                    color: Colors.amber,
                  ),
                  hintText: 'Enter Tola Quantity',
                  hintStyle: TextStyle(color: Colors.amber)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.orange),
            ),
            child: TextFormField(
              controller: mashaQuantityController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.currency_bitcoin,
                    color: Colors.amber,
                  ),
                  hintText: 'Enter Masha Quantity',
                  hintStyle: TextStyle(color: Colors.amber)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: (){
              double tolaprice,tolaquantity,mashaquantity,mashaprice,totalmashaprice;
              tolaprice=double.parse(tolaPriceController.text);
              tolaquantity=double.parse(tolaQuantityController.text);
              mashaquantity=double.parse(mashaQuantityController.text);
              mashaprice=tolaprice/12;
              totalmashaprice=mashaprice*mashaquantity;
              totalprice=(tolaprice*tolaquantity)+totalmashaprice;
              setState(() {

              });
            },
            child: Container(
              height: 45,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange,
              ),
              child: Center(
                  child: Text(
                "Calculate",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
              )),
            ),
          ),
          SizedBox(height: 20,),
          Text("Total Price = Rs.$totalprice",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
