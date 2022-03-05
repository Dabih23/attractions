import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            MakePage(
              image: 'assets/images/one.jpg',
              title: 'Moscow City',
              description: 'A developing business district in Moscow on Presnenskaya Embankment. It is part of the Presnensky District of the Central Administrative District of Moscow. A business activity zone is being created within the framework of Moscow City, which will combine business, accommodation apartments and leisure.',
              page: 1,
            ),
            MakePage(
              image: 'assets/images/two.jpg',
              title: "St. Basil's Cathedral",
              description: 'The main temple of Red Square and the whole of Moscow. It was built in the middle of the XVI century by the decree of Ivan the Terrible in honor of the capture of the Kazan Khanate - part of the former Golden Horde.',
              page: 2,
            ),
            MakePage(
              image: 'assets/images/three.jpg',
              title: 'VDNH',
              description: 'The exhibition complex in the Ostankino district of the North-Eastern Administrative District of Moscow, the second largest exhibition complex in the city. It is one of the 50 largest exhibition centers in the world.',
              page: 3,
            ),
            MakePage(
              image: 'assets/images/four.jpg',
              title: 'Gum',
              description: 'A large shopping complex in the center of Moscow, which occupies the area of Kitay-Gorod and overlooks the Red Square with its main facade. It positions itself as the main department store of the country and a whole shopping district.',
              page: 4,
            ),
            MakePage(
              image: 'assets/images/five.jpg',
              title: 'Bolshoi Theatre',
              description: 'One of the largest opera and ballet theaters in Russia and one of the most significant in the world. The complex of theater buildings is located in the center of Moscow, on Theater Square.',
              page: 5,
            ),
          ],
        )
    );
  }

  Widget MakePage({image, title, description, page}){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.3),
            ]
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(page.toString(), style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                  Text('/5',style: TextStyle(color: Colors.white, fontSize: 15), )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,) 
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,) 
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,) 
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,) 
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        child: Icon(Icons.star, color: Colors.white, size: 15,) 
                      ),
                    ],),
                    SizedBox(height: 20,),
                    Text(description, style: TextStyle(color: Colors.white60, height: 1.5),),
                    SizedBox(height: 20,),
                    Text('READ MORE', style: TextStyle(color: Colors.white),),
                    SizedBox(height: 20,),
                  ]
                ) 
              ),
            ],
          ),
        ),
      )
    );
  }
}





