import 'dart:async';

import 'package:flutter/material.dart';
import 'package:its/Animation_Gesture/page_reveal.dart';
import 'package:its/UI/pager_indicator.dart';
import 'package:its/UI/pages.dart';
import 'package:its/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Animation_Gesture/page_dragger.dart';
import 'home.dart';


class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> with TickerProviderStateMixin {
  Future checkFirstSeen() async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        bool _seen = (prefs.getBool('seen') ?? false);

        if (_seen == true) {
        Navigator.of(context).pushReplacement(
            new MaterialPageRoute(builder: (context) => new Login()));
        } 
    }

    @override
    void initState() {
        super.initState();
        checkFirstSeen();
        
    }

  StreamController<SlideUpdate> slideUpdateStream;
   AnimatedPageDragger animatedPageDragger;

   int activeIndex = 0 ;
   SlideDirection slideDirection = SlideDirection.none;
   int nextPageIndex = 0 ;
   double slidePercent= 0.0;


   _OnBoardingState(){
    slideUpdateStream = new StreamController<SlideUpdate>();

    slideUpdateStream.stream.listen((SlideUpdate event){
      setState(() {
        if( event.updateType == UpdateType.dragging){
          slideDirection = event.direction;
          slidePercent = event.slidePercent;

          if( slideDirection == SlideDirection.leftToRight ){
              nextPageIndex = activeIndex - 1;
          } else if (slideDirection == SlideDirection.rightToLeft){
              nextPageIndex = activeIndex + 1;
          } else{
              nextPageIndex = activeIndex;
          }
        } else if( event.updateType == UpdateType.doneDragging){
          if(slidePercent > 0.5){

            animatedPageDragger = new AnimatedPageDragger(
              slideDirection: slideDirection,
              transitionGoal: TransitionGoal.open,
              slidePercent: slidePercent,
              slideUpdateStream: slideUpdateStream,
              vsync: this,
            );

          } else{
            animatedPageDragger = new AnimatedPageDragger(
              slideDirection: slideDirection,
              transitionGoal: TransitionGoal.close,
              slidePercent: slidePercent,
              slideUpdateStream: slideUpdateStream,
              vsync: this,
            );

            nextPageIndex = activeIndex;
          }

          animatedPageDragger.run();
        }
        else if( event.updateType == UpdateType.animating){
          slideDirection = event.direction;
          slidePercent = event.slidePercent;
        }

        else if (event.updateType == UpdateType.doneAnimating){
          activeIndex = nextPageIndex;

          slideDirection = SlideDirection.none;
          slidePercent = 0.0;

          animatedPageDragger.dispose();
        }
      });
    });
   }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: [
          new Page(
            viewModel: pages[activeIndex],
            percentVisible: 1.0 ,
          ),
          new PageReveal(
            revealPercent: slidePercent,
            child: new Page(
              viewModel: pages[nextPageIndex],
              percentVisible: slidePercent ,
            ),
          ),
          new PagerIndicator(
              viewModel: new PagerIndicatorViewModel(
                  pages,
                  activeIndex,
                  slideDirection,
                  slidePercent,
              ),
          ),
          new PageDragger(
            canDragLeftToRight: activeIndex > 0 ,
            canDragRightToLeft: activeIndex < pages.length - 1 ,
            slideUpdateStream: this.slideUpdateStream,
          )
        ],
      ),
    );
  }
}
