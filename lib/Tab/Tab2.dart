import 'package:flutter/material.dart';
class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBoxImage("images/story/chea.jpg"),
              _buildBoxImage("images/story/rotha.jpg"),
              _buildBoxImage("images/story/02.jpg"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBoxImage("images/story/03.jpg"),
              _buildBoxImage("images/story/04.jpg"),
              _buildBoxImage("images/story/05.jpg"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBoxImage("images/story/06.jpg"),
              _buildBoxImage("images/story/07.jpg"),
              _buildBoxImage("images/story/08.jpg"),
            ],
          ),
        ],
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
