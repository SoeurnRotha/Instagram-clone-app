import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10,),
          _buildSearchBox,
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBoxImage("images/story/chea.jpg"),
              _buildBoxImage("images/story/02.jpg"),
              _buildBoxImage("images/story/03.jpg"),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBoxImage("images/story/rotha.jpg"),
              _buildBoxImage("images/story/04.jpg"),
              _buildBoxImage("images/story/05.jpg"),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBoxImage("images/story/06.jpg"),
              _buildBoxImage("images/story/07.jpg"),
              _buildBoxImage("images/story/08.jpg"),
            ],
          )
        ],
      ),
    );
  }
  get _buildSearchBox{
    return Container(
      width: 340,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200]
      ),
      child: TextField(
        style: TextStyle(fontSize: 20),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 20),
          prefixIcon: Icon(Icons.search,color: Colors.black,),
          border: InputBorder.none
        ),
      ),
    );
  }
  _buildBoxImage(String image){
    return Container(
      width: 125,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
