import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void getMyLocator() async{
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
      );

    print('Latitude: ${position.latitude}, Longitude: ${position.longitude}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: ()=>  getMyLocator(), 
            icon: Icon(Icons.pin_drop_outlined),),

             IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search),),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/4/4e/Iping_Church_03.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), 
            BlendMode.darken),
          ),
        ),
        child: WelcomeView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text('Cimilo Sheek'),
              content: Text('cimilo Sheek waa application loogu talagalay in lagu ogaado dhamaan cimilada dunida  oo idil'),

              actions: [
                TextButton(onPressed: ()=> Navigator.pop(context),
                 child: Text('Ok' 'Got it!'),),
              ],
            );
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.info_outline),
      ),
    );
  }
}

class WelcomeView extends StatelessWidget {
  const WelcomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
            text: 'Mogadishu, SO',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              height: 1.5
              ),
              children: [
                TextSpan(
            text: '\nUpdated: 20:19 EAT, 25/7/2022',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
              ),
                ),
                TextSpan(
            text: '\n\n20.9',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              ),
                ),
                  TextSpan(
            text: '°C',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w300,
              ),
                ),

                TextSpan(
            text: '\nLight Rain',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              height: 1.5,
              color: Colors.white70,
              ),
                ),


              ],

          ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.refresh),),
        ],
      ),
    ); 

    
  }
  
}
