import 'package:flutter/material.dart';
class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
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
