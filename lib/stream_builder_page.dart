import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamBuilderPage extends StatelessWidget {
  const StreamBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Builder",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: StreamBuilder(stream: getStreamBuilder(), builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else{
           return Text("${snapshot.data}");
          }
        },),
      ),
    );
  }
}

Stream<int> getStreamBuilder()  {
  var result= Stream.periodic(Duration(seconds: 2),(computationCount) => computationCount+1,);
  return result;
}
