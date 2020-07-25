import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/models/products.dart';
import 'package:ecommerceapp/ui/custom_widgets/custom_store_record.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F1F1),
      body: Column(
        children: <Widget>[

          ///
          ///
          /// Upper Part of screen having search bar and product samples suppliers
          customAppBar(),

          ///
          /// Lower Part i.e Scrollable Body
          ///
          scrollableBody(),
        ],
      ),

        ///
        /// Floating action button
        ///
        floatingActionButton: FloatingActionButton(
          onPressed:(){},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),side: BorderSide(color: Color(0xFFB8D9F7), width: 4.0)),
          child: IconButton(
            icon: Icon(Icons.camera_alt,color: Colors.white,),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        ///
        /// Bottom Navigation Bar
        ///
        bottomNavigationBar:Container(
          height: MediaQuery.of(context).size.height * 0.1,
          child: BottomAppBar(
            color: Colors.white,
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                BottomNavigationIcons(name: 'Home',icon: 'images/homepage/home_icon.png',onPressed: (){}),
                BottomNavigationIcons(name: 'Documents',icon: 'images/homepage/document_icon.png',onPressed: (){}),
                BottomNavigationIcons(name: 'Suppliers',icon: 'images/homepage/suppliers_icon.png',onPressed: (){}),
                BottomNavigationIcons(name: 'Profile',icon: 'images/homepage/profile_icon.png',onPressed: (){}),
              ],
            ),
          ),
        )
    );
  }


  /// Upper Part of screen having search bar and number of product samples suppliers
   customAppBar(){
    return Material(
      color: Colors.black,
      elevation: 5.0,
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0),bottomLeft: Radius.circular(30.0)),
      child: Column(
        children: <Widget>[
          Container(
            height: 130.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/homepage/appbar_background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 32.0),
              child: Row(
                children: <Widget>[
                  Image.asset('images/homepage/appbar_left_icon.png',),
                  SizedBox(width: 8.0,),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xFF3D81D9),
                          Color(0xFF31ABD6),
                        ]),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.white,fontSize: 14.0),
                            prefixIcon: Icon(Icons.search, color: Colors.white,),
                            suffixIcon: Image.asset('images/homepage/search_field_suffix.png',color: Colors.white,)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0,),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF31ABD6),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset('images/homepage/appbar_right_icon.png')
                  )
                ],
              ),
            ),
          ),

          Row(
            children: <Widget>[
              CustomStoreRecord(title: 'Products',number: '14',image: 'images/homepage/products_image.png',count: 0,),
              SizedBox(width: 0.1,),
              CustomStoreRecord(title: 'Samples',number: '04',image: 'images/homepage/samples_image.png',count: 1,),
              SizedBox(width: 0.1,),
              CustomStoreRecord(title: 'Suppliers',number: '01',image: 'images/homepage/suppliers_image.png',count: 2,),
            ],
          )
        ],
      ),
    );
  }

  /// Lower Part i.e Scrollable Body
  scrollableBody(){
    return Expanded(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(products[index].image,
                        width: 100,
                        height: 100,
                      ),),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(products[index].name,style: TextStyle(fontSize: 14.0),),
                              SizedBox(height: 5.0,),
                              Text(products[index].brand,style: TextStyle(color: Colors.grey,fontSize: 12.0),),
                            ],
                          ),
                          SizedBox(height: 25.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('\$${products[index].price}',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                              SizedBox(width:MediaQuery.of(context).size.width * 0.25,),
                              index % 2 ==0 ? Icon(Icons.cloud_done,color: blueColor,size: 15.0,) :
                              Icon(Icons.cloud_off,color: lightBlueColor,size: 15.0,),
                              SizedBox(width: 4.0,),
                              Text(products[index].date,style: index%2 == 0 ?
                              TextStyle(fontSize: 10.0,):
                              TextStyle(fontSize: 10.0, color: Colors.black45), ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}

/// Botttom Navigation Bar
class BottomNavigationIcons extends StatefulWidget {
  final String name;
  final String icon;
  final Function onPressed;
  BottomNavigationIcons({this.name,this.icon,this.onPressed});

  @override
  _BottomNavigationIconsState createState() => _BottomNavigationIconsState();
}

class _BottomNavigationIconsState extends State<BottomNavigationIcons> {

  bool activeColor = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            activeColor = activeColor == false ? true : false;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            activeColor == false ? Image.asset(widget.icon, height: 25, width: 25, color: Colors.black,):
            Image.asset(widget.icon, height: 25, width: 25, color: blueColor,),
            Text(widget.name, style: activeColor == false ? TextStyle(fontSize: 10.0): TextStyle(fontSize: 10.0,color: blueColor),)
          ],
        ),
      ),
    );
  }
}
