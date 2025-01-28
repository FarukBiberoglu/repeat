import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with SingleTickerProviderStateMixin  {

  late final tabController ;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: MyTabView.values.length, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:
    Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {

      },),
      bottomNavigationBar: BottomAppBar(

        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              text: 'Page1',
            ),
            Tab(
              text: 'Page2',
            ),

            Tab(
              text: 'Page1',
            ),
            Tab(
              text: 'Page2',
            ),
          ],
        ),
      ),
        appBar: AppBar(
          bottom: TabBar(
            controller: tabController,
            tabs: MyTabView.values.map((e)=>Tab( text: ('${e.name}'),)).toList()
          ),
        ),
      body: TabBarView(
          physics: NeverScrollableScrollPhysics(),controller:tabController,
          children: [
            Center(child: Text('Fener',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue),)),
            Center(child: Text('Fener',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue),)),
            Center(child: Text('Fener',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue),)),
            Center(child: Text('Bahçe',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.amber),)),
      ]),
    ));
  }
}

enum MyTabView{ home,settings,favorite,detailpage}
