import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  Widget _buildButton(int n) {
    return Padding(

      padding: const EdgeInsets.all(9.0),
      child: InkWell(
        onTap: (){},

        child: Container(
          width: 65.0,
          height: 65.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.brown,
              shape: BoxShape.circle,
              border: n != -1 ? Border.all(
                  color: Colors.grey,
                  width: 2.0
              )
                  : null
          ),
          child: n== -1 ? Icon(Icons.backspace_outlined)
              : Text(
            n.toString(),style: TextStyle(fontSize:20),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Icon(
                    Icons.lock,
                    size: 80,
                    color: Colors.blueGrey
                  ),
                  SizedBox(height: 10,),
                  Text("กรุณาใส่รหัสผ่าน",style:TextStyle(fontSize:20)),
                ],
              ),
              Column(
                children: [
                  for (var row in [
                    [1, 2, 3],
                    [4, 5, 6],
                    [7, 8, 9],
                  ])
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [for (var i in row) _buildButton(i)],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 76.0, height: 76.0),
                      _buildButton(0),
                      _buildButton(-1),
                    ],
                  )
                ],
              ),

              Text("ลืมรหัสผ่าน",style:TextStyle(fontSize:17)),
              SizedBox(height: 10,),
            ],
          ),
        )
    );
  }
}