import 'package:flutter/material.dart';

import 'Store ListView/Post.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
Post _post = Post();
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body: Container(
        child: _buildListViewForHomePage,
      ),
    );
  }
  get _buildAppbar=> AppBar(
    backgroundColor: Colors.white,
    title: Text("Instargram",style: TextStyle(fontFamily: "f1",color: Colors.black),),
    actions: [
      IconButton(
        icon: ImageIcon(AssetImage("images/icon/mess.png"),color: Colors.black,),
        onPressed: (){

        },
      )
    ],
  );
  get _buildListViewForHomePage =>
      ListView(
        children: [
          Container(
            height: 110,
            child: _buildStory(),
          ),
          Divider(
            color: Colors.black,
          ),
          //post
          _buildPostList("images/story/chea.jpg","images/story/chea.jpg","Chea"),
          _buildPostList("images/story/rotha.jpg","images/story/rotha.jpg","Rotha"),
          _buildPostList("images/story/02.jpg","images/story/02.jpg","Your name"),
          _buildPostList("images/story/03.jpg","images/story/03.jpg","Your name"),
          _buildPostList("images/story/04.jpg","images/story/04.jpg","Your name"),
          _buildPostList("images/story/05.jpg","images/story/05.jpg","Your name"),
          _boxAddfriend,
          _buildPostList("images/story/06.jpg","images/story/06.jpg","Chan Rith"),
          _buildPostList("images/story/07.jpg","images/story/07.jpg","Chea"),
          _buildPostList("images/story/08.jpg","images/story/08.jpg","Your name"),
          _buildPostList("images/story/09.jpg","images/story/09.jpg","Your name"),
          _buildPostList("images/story/010.jpg","images/story/010.jpg","Your name"),
          _buildPostList("images/story/02.jpg","images/story/02.jpg","Your name"),
        ],
      );

  get _StoryListView {
    return ListView(
      children: [
        Container(
          height: 100,
          color: Colors.red,
          child: _buildStory(),
        )
      ],
    );
  }

  _buildImage(String img, String name) {
    return Stack(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.purple, Colors.amberAccent]
              ),
              shape: BoxShape.circle
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.only(left: 10, top: 10),
          decoration: BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    spreadRadius: 4
                )
              ]
          ),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.bottomCenter,
          child: Text(name, style: TextStyle(fontSize: 15,),),
        )

      ],
    );
  }

  _buildStory() =>
      ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildImage("images/01.jpg", "name"),
          SizedBox(width: 15,),
          _buildImage("images/story/rotha.jpg", "Rotha"),
          SizedBox(width: 10,),
          _buildImage("images/story/chea.jpg", "Your name"),
          SizedBox(width: 10,),
          _buildImage("images/story/02.jpg", "Your name"),
          SizedBox(width: 10,),
          _buildImage("images/story/03.jpg", "Your name"),
          SizedBox(width: 10,),
          _buildImage("images/story/04.jpg", "Your name"),
          SizedBox(width: 10,),
          _buildImage("images/story/05.jpg", "Your name"),
        ],
      );
  _buildPostList(String imageProfile,String ima,String title){
    return Container(
      width: 550,
      child: Column(
        children: [
          Container(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(imageProfile),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 170),
                      child: Text(title,style: TextStyle(fontSize: 16),)),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: (){

                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ima),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                IconButton(
                  icon: ImageIcon(AssetImage("images/icon/heart.png")),
                  onPressed: (){

                  },
                ),
                IconButton(
                  icon: ImageIcon(AssetImage("images/icon/chat.png"),size: 35,),
                  onPressed: (){

                  },
                ),
                IconButton(
                  icon: ImageIcon(AssetImage("images/icon/send.png")),
                  onPressed: (){

                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  get _boxAddfriend{
    return Container(
      height: 300,
      color: Colors.grey[200],
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Suggested for you",style: TextStyle(fontSize: 16),),
                Text("See All",style: TextStyle(color: Colors.blue,fontSize: 16),)
              ],
            ),
          ),
          Container(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        _boxProfile("images/story/02.jpg"),
                        Text("Your name"),
                        _boxFollw(),
                      ],
                    ),
                  ),

                  SizedBox(width: 10,),
                  Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        _boxProfile("images/story/03.jpg"),
                        Text("Your name"),
                        _boxFollw(),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        _boxProfile("images/story/04.jpg"),
                        Text("Your name"),
                        _boxFollw(),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        _boxProfile("images/story/05.jpg"),
                        Text("Your name"),
                        _boxFollw(),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        _boxProfile("images/story/chea.jpg"),
                        Text("Your name"),
                        _boxFollw(),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        _boxProfile("images/story/rotha.jpg"),
                        Text("Your name"),
                        _boxFollw(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
  _boxProfile(String images){
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(images),
              fit: BoxFit.cover
          )
      ),
    );
  }
  _boxFollw(){
    return ElevatedButton(
      child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 20,
          child: Text("Follow",style: TextStyle(fontSize: 15,color: Colors.white),)),
      onPressed: (){

      },
    );
  }
}
