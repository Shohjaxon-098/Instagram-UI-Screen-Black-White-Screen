import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class ProfileItem {
  final String urlImage;
  final String title;

  const ProfileItem({
    required this.urlImage,
    required this.title,
  });
}

class _ScreenPageState extends State<ScreenPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  size: 32,
                  color: Theme.of(context).colorScheme.secondary,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.paperplane),
              color: Theme.of(context).colorScheme.secondary,
              iconSize: 32,
            ),
          ),
        ],
        toolbarHeight: 77,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 45,
            fontFamily: "Billabong",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _istories(
                    context,
                    item: ProfileItem(
                        urlImage: "assets/images/profile.jpg",
                        title: "Your Story"),
                  ),
                  _istories(
                    context,
                    item: ProfileItem(
                        urlImage: "assets/images/allprof.jpg",
                        title: "ziyodullayevich..."),
                  ),
                  _istories(
                    context,
                    item: ProfileItem(
                        urlImage: "assets/images/allprof.jpg",
                        title: "navruz.xs"),
                  ),
                  _istories(
                    context,
                    item: ProfileItem(
                        urlImage: "assets/images/allprof.jpg",
                        title: "m_onlyit"),
                  ),
                  _istories(
                    context,
                    item: ProfileItem(
                        urlImage: "assets/images/allprof.jpg",
                        title: "__azamov_01"),
                  ),
                  _istories(
                    context,
                    item: ProfileItem(
                        urlImage: "assets/images/allprof.jpg",
                        title: "sakhievvv"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            _postImage(context),
            _postImage(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Theme.of(context).hintColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconSize: 35,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              
            ),
            label: "",
            
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
                
              ),
              label: "",
             ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.plus_app,
              
              ),
              label: "",
              ),
          BottomNavigationBarItem(activeIcon: Icon(Icons.favorite_sharp),
              icon: Icon(
                Icons.favorite_outline_sharp,
           
              ),
              label: "",
              ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person_crop_circle,
           
              ),
              label: "",
             ),
        ],
      ),
    );
  }
}

Widget _istories(context, {required ProfileItem item}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.yellow.shade600,
                Colors.orange,
                Colors.red,
                Colors.pink,
                Colors.purple.shade500,
              ],
            ),
          ),
          child: Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).scaffoldBackgroundColor, width: 3),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(item.urlImage),
              ),
            ),
          ),
        ),
      ),
      Text(
        item.title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),
    ],
  );
}

Widget _smallistories() {
  return const Padding(
    padding: EdgeInsets.only(left: 6),
    child: CircleAvatar(
      backgroundImage: AssetImage(
        "assets/images/allprof.jpg",
      ),
    ),
  );
}

Widget _smallestistories() {
  return const Padding(
    padding: EdgeInsets.only(left: 4),
    child: CircleAvatar(
      backgroundImage: AssetImage(
        "assets/images/allprof.jpg",
      ),
      radius: 12,
    ),
  );
}

Widget _postImage(context) {
  return Column(
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.061,
        child: Padding(
          padding: const EdgeInsets.only(left: 2, top: 8),
          child: Row(
            children: [
              _smallistories(),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:  [
                      Text(
                        "joshua_l",
                        style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.verified_rounded,
                        size: 20,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  Text(
                    "Tokyo, Japan",
                    style: TextStyle(fontSize: 13, color:Theme.of(context).colorScheme.secondary,),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.more_horiz_sharp,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
      Stack(
        children: [
          const Image(
            width: double.infinity,
            image: AssetImage(
              "assets/images/Rectangle.png",
            ),
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                width: 34,
                height: 26,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(212, 15, 15, 15),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text("1/3",style: TextStyle(color: Theme.of(context).colorScheme.scrim),)),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              InkWell(
                  child: Icon(
                Icons.favorite_border,
                color: Theme.of(context).colorScheme.secondary,
                size: 40,
              )),
              SizedBox(
                width: 10,
              ),
              Icon(
                CupertinoIcons.bubble_right,
                color: Theme.of(context).colorScheme.secondary,
                size: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                CupertinoIcons.paperplane,
                color: Theme.of(context).colorScheme.secondary,
                size: 36,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.16,
              ),
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade500),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade500),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                CupertinoIcons.bookmark,
                color: Theme.of(context).colorScheme.secondary,
                size: 36,
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 10),
            child: Row(
              children: [
                _smallestistories(),
                Flexible(
                  child: Text(
                    " Liked by craig_love and 44,686 others",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 8),
                child: Flexible(
                  child: Text(
                    "joshua_I The game in Japan was amazing and I want to \nshare some photos",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 15.6),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "View all 3 comments",
              style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor, fontSize: 16),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  "23 hours ago •",
                  style: TextStyle(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontSize: 14),
                ),
              ),
              Text(
                "See Translation",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.scrim, fontSize: 14),
              )
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}
