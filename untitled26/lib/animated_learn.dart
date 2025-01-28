import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  const AnimatedLearn({super.key});

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

//Text('d',style: context.textTheme().displayLarge,),
class _AnimatedLearnState extends State<AnimatedLearn>  with TickerProviderStateMixin{

  late AnimationController controller ;
  @override
  void initState() {
    controller = AnimationController(vsync: this,duration: DurationItems().durationLow);
     
    super.initState();
  }
  bool isVisible = false ;
  bool isOpacity = false ;
  void changeVisible(){
    setState(() {
      isVisible =! isVisible ;

    });
  }
  void changeOpacity(){
    setState(() {
      isOpacity  =! isOpacity ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: placeholderWidget(),

      ),
      floatingActionButton: FloatingActionButton(onPressed:() {
        changeVisible();
      }, ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                duration: DurationItems().durationLow,
                opacity: isOpacity ?  1 : 0,
                child: Text('data')),
            trailing: IconButton(onPressed: () {
              changeOpacity();
            }, icon: Icon(Icons.play_circle_rounded),

            ),
          ),
          AnimatedDefaultTextStyle(
              child: Text('data'),
              style: (isVisible ? TextStyle(fontSize: 15,) : TextStyle(fontSize: 30)),
              duration:  DurationItems().durationLow),

          AnimatedIcon(
            icon: AnimatedIcons.menu_arrow , progress: controller ,
          ),
          AnimatedContainer(duration: DurationItems().durationLow,
          width: MediaQuery.of(context).size.width*0.2,
            height: isVisible ? 0 : MediaQuery.of(context).size.height*0.2,

          )
        ],
      )
    );
  }

  AnimatedCrossFade placeholderWidget() {
    return AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox.shrink(),
        crossFadeState: isVisible ?  CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: DurationItems().durationLow
    );
  }
}

class DurationItems {
  final durationLow = Duration(seconds: 1);
}

