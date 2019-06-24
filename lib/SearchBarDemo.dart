import 'package:flutter/material.dart';
import './asset.dart';

class SearchBarDemo extends StatefulWidget {
  SearchBarDemo({Key key}) : super(key: key);

  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索演示'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
               showSearch(context: context,delegate:SearchBarDelegate());
            },
          )
        ],
      ),
    );
  }
}


class SearchBarDelegate extends SearchDelegate<String> {

  @override
  List<Widget> buildActions(BuildContext context) {  // 覆写右侧图标  清除内容
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed:() => query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) { // 覆写左侧返回
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,progress: transitionAnimation,
      ),
      onPressed: ()=>close(context,null),
    );
  }

  @override
  Widget buildResults(BuildContext context) { // 搜索返回结果
    return Container(
      width: 100,
      height: 100,
      child: Card(
        color: Colors.redAccent,
        child: Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) { // 为空的时候 推荐内容
    final suggestionsList = query.isEmpty ? recommend : data.where((input)=> input.startsWith(query)).toList();
    return ListView.builder(
      itemCount:suggestionsList.length ,
      itemBuilder: (context,index) => ListTile(
        title: RichText(
          text: TextSpan(
            text: suggestionsList[index].substring(0,query.length),
            style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text:suggestionsList[index].substring(query.length),
                style: TextStyle(
                  color: Colors.grey
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}