import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NavLive extends StatelessWidget {
  NavLive({Key? key}) : super(key: key);

  var videoId = YoutubePlayer.convertUrlToId(
      "https://www.youtube.com/watch?v=MM33eriDdOU");

  var videoId2 = YoutubePlayer.convertUrlToId("https://youtu.be/m0wxaCLg72M");

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId.toString(),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: false,
      ),
    );

    YoutubePlayerController _controllerTwo = YoutubePlayerController(
      initialVideoId: videoId2.toString(),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            color: Colors.blue,
            child: YoutubePlayer(
              controller: _controller,
              actionsPadding: EdgeInsets.all(0),
              onEnded: (YoutubeMetaData) {
                _pageController.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeIn);
              },
            ),
          ),
          Container(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            color: Colors.blue,
            child: YoutubePlayer(
              controller: _controllerTwo,
              onEnded: (YoutubeMetaData) {
                _pageController.previousPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeIn);
              },
            ),
          ),
        ],
      ),
    );
  }
}
