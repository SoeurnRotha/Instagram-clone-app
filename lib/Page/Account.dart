import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Tab/Tab1.dart';
import 'package:untitled1/Tab/Tab2.dart';
import 'package:untitled1/Tab/Tab3.dart';
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _buildAppbar,
        body: Container(
          child: _buildAccount,
        ),
      ),
    );
  }
  get _buildAppbar=>AppBar(
    title: Text("Your Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
    backgroundColor: Colors.white,
    actions: [
      IconButton(
        icon: ImageIcon(AssetImage("images/icon/story.png"),color: Colors.black,),
        onPressed: (){

        },
      ),
      IconButton(
        icon: ImageIcon(AssetImage("images/icon/mess.png"),color: Colors.black,),
        onPressed: (){

        },
      ),
    ],
  );
  get _buildAccount=> Container(
    alignment: Alignment.center,
    child: ListView(
      children: [
        _buildHeaderFormAccount,
        _buildBoxTool,
        _buildStoryHightts,
         _buildTabar,
         _buildTabView,
      ],

    ),
  );
  get _buildHeaderFormAccount=> Container(
    height: 200,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildImageOfAccount(),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1,000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Posts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("22K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Follows",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1M",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Follwing",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
        )

      ],
    ),
  );
  _buildImageOfAccount(){
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue,Colors.red]
              )
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10,top: 10),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    spreadRadius: 5
                )
              ],
              image: DecorationImage(
                  image: AssetImage("images/01.jpg"),
                  fit: BoxFit.cover
              )
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 105,left: 20),
            child: Text("Name",style: TextStyle(fontSize: 15),))
      ],
    );
  }
  get _buildBoxTool{
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            child: Container(
              alignment: Alignment.center,
                child: Text("Edit profile",style: TextStyle(color: Colors.black),)),
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[100],
              fixedSize: Size(100, 50),
            ),
          ),
          ElevatedButton(
            child: Container(
                alignment: Alignment.center,
                child: Text("Ad tools",style: TextStyle(color: Colors.black),)),
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[100],
              fixedSize: Size(100, 50),
            ),
          ),
          ElevatedButton(
            child: Container(
                alignment: Alignment.center,
                child: Text("Insights",style: TextStyle(color: Colors.black),)),
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[100],
              fixedSize: Size(100, 50),
            ),
          )
        ],
      ),
    );
  }
  get _buildStoryHightts{
    return Container(
      height: 160,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 8),
            child: Container(
              alignment: Alignment.topLeft,
                child: Text("Story highlights",style: TextStyle(fontWeight: FontWeight.bold),)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 8),
            child: Container(
              alignment: Alignment.topLeft,
                child: Text("Keep your favorite stories on your profile")),
          ),
          SizedBox(height: 10,),
          _buildAddHighLights,
        ],
      ),
    );
  }
  get _buildAddHighLights{
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Icon(Icons.add,size: 40,),
              ),
              SizedBox(width: 10,),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1
                      )
                    ]
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1
                      )
                    ]
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1
                      )
                    ]
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1
                      )
                    ]
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1
                      )
                    ]
                ),
              ),

            ],
          ),
      ),
    );
  }
  get _buildTabar{
    return TabBar(
        tabs: [
          Tab(icon: Icon(Icons.add_to_photos_outlined,color: Colors.black,)),
          Tab(icon: Icon(Icons.play_arrow,color: Colors.black,)),
          Tab(icon: Icon(Icons.account_box,color: Colors.black,)),
        ],
      );
  }
  get _buildTabView{
    return Container(
      width: double.infinity,
      height: 500,
      child: TabBarView(
        children: [
          Tab1(),
          Tab2(),
          Tab3()
        ],
      ),
    );
  }
}
