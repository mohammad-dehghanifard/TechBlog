import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/fake-models.dart';
import 'package:techblog/my_colors.dart';
import 'package:techblog/my_string.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    double bodyMargin = size.width / 10;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //App bar
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.menu),
                  Image(image: Assets.images.logo, height: size.height / 13.6),
                  const Icon(Icons.search)
                ],
              ),
            ),
            const SizedBox(height: 8),

            //Main poster
            Stack(
              children: [
                //POSTER && Gradiant
                Container(
                  width: size.width / 1.19,
                  height: size.height / 4.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage(posterData["image"]),
                          fit: BoxFit.cover)),
                  //Gradiant
                  foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                          colors: GradiantColor.MainPosterGradiant,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
                //poster Texts
                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      //sub text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(posterData["writer"] + " - " + posterData["date"],
                              style: textTheme.subtitle2),
                          // view txt && icon
                          Row(
                            children: [
                              Text(posterData["view"],
                                  style: textTheme.subtitle1),
                              const SizedBox(
                                width: 6,
                              ),
                              const Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                                size: 16,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      //Title text
                      Text(posterData["title"], style: textTheme.headline1)
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 24,
            ),

            // HashTag List
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: hashTagList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 8, index == 0 ? bodyMargin : 15, 8),
                    child: Container(
                      height: 20,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          gradient: LinearGradient(
                              colors: GradiantColor.blackGradiant,
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                        child: Row(
                          children: [
                            ImageIcon(Assets.icons.hastag,
                                color: SolidColors.hashTagColor, size: 16),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              hashTagList[index].title,
                              style: textTheme.headline2,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Show HotBlogs txt
            Padding(
              padding: EdgeInsets.only(right: bodyMargin, top: 32),
              child: Row(
                children: [
                  ImageIcon(Assets.icons.writeicon,
                      color: SolidColors.seeMoreColor),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    MyString.viewHotestBlog,
                    style: textTheme.headline3,
                  )
                ],
              ),
            ),

            // HotBlog List
            SizedBox(
              height: size.height / 3.3,
              child: ListView.builder(
                itemCount: blogsList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.fromLTRB(8, 16, index == 0? bodyMargin : 15, 0),
                    child: Column(
                      children: [
                        // HotBlog List && txt
                        SizedBox(
                          height: size.height / 4.9,
                          width: size.width / 2.2,

                          child: Stack(
                            children: [
                              //HotBlog List Item
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                    image: DecorationImage(
                                        image: Assets.images.poster, fit: BoxFit.cover)),
                                foregroundDecoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16)),
                                    gradient: LinearGradient(
                                        colors: GradiantColor.blogPostGradiant,
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter)),
                              ),
                              //HotBlog Txt Item
                              Positioned(
                                bottom: 8,
                                left: 0,
                                right: 0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(blogsList[index].writer,style: textTheme.subtitle1,),
                                    Row(
                                      children:  [
                                        Text(blogsList[index].view,style: textTheme.subtitle1,),
                                        const SizedBox(width: 8,),
                                        const Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.white,
                                          size: 16,
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],

                          ),
                        ),

                        const SizedBox(height: 8,),

                        //txt sub title
                        SizedBox(
                          width: size.width / 2.2,
                          child: Text(
                            blogsList[index].title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,

                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),

            // Show HotPodcast txt
            Padding(
              padding:  EdgeInsets.only(top: 32,right: bodyMargin),
              child: Row(
                children: [
                 ImageIcon(Assets.icons.podcasticon,color: SolidColors.seeMoreColor,),
                  const SizedBox(width: 8,),
                  Text(MyString.viewHotestPodcast,style: textTheme.headline3,)
                ],
              ),
            ),

            SizedBox(
              height: size.height / 3.7,
              child: ListView.builder(itemCount: 5,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.fromLTRB(0, 16 , index == 0? bodyMargin : 15, 8),
                  child: Column(
                    children: [
                      Container(
                        width: size.width / 2.8,
                        height: size.height / 5.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(
                            image: Assets.images.poster,
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Text(podcastList[index].title,style: textTheme.bodyText1,)
                    ],
                  ),
                );
              },),
            )
          ],
        ),
      ),
    ));
  }
}
