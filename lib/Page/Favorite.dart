import 'package:flutter/material.dart';
class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body: _buildBody,
    );
  }
  get _buildAppbar=>AppBar(
    backgroundColor: Colors.white,
    title: Text("Activity",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
  );
  get _buildBody{
    return SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("Today",style: TextStyle(fontSize: 20),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    _buildbox("images/story/rotha.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Your name",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Commented: hello"),
                          SizedBox(width: 25,),
                          _buildbox1("images/story/02.jpg"),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    _buildbox("images/story/chea.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Your name",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Commented: hello"),
                          SizedBox(width: 25,),
                          _buildbox1("images/story/02.jpg"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    _buildbox("images/story/03.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Your name",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Commented: hello"),
                          SizedBox(width: 25,),
                          _buildbox1("images/story/02.jpg"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    _buildbox("images/story/04.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Your name",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Commented: hello"),
                          SizedBox(width: 25,),
                          _buildbox1("images/story/09.jpg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    _buildbox("images/story/05.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Your name",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Commented: hello"),
                          SizedBox(width: 25,),
                          _buildbox1("images/story/010.jpg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    _buildbox("images/story/06.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Your name",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Commented: hello"),
                          SizedBox(width: 25,),
                          _buildbox1("images/story/05.jpg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
  _buildbox(String ima){
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(ima),
          fit: BoxFit.cover
        )
      ),
    );
}
  _buildbox1(String ima){
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ima),
              fit: BoxFit.cover
          )
      ),
    );
  }

}
