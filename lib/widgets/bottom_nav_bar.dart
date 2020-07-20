import 'package:flutter/material.dart';
import 'package:myapp1/screens/Flight_Book/flight_book.dart';
import 'package:myapp1/screens/Search_Flight/search_flight.dart';
import 'package:myapp1/screens/sheduled_flight_list.dart';


class BottomNavBar extends StatefulWidget {
  @override

   BottomNavBar({Key key}) : super(key: key);
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Oxygen",);


  final List<Widget> _widgetOptions = [
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),


    SearchFlight( 
       key: PageStorageKey('Page1'),
    ),

    SheduledFlightsList(
      key: PageStorageKey('Page2'),
    ),

 
    FlightSearch(
      key: PageStorageKey('Page3'),
    ),
   
    Text(
      'Index 2: Flight Status',
      style: optionStyle,
    ),
  

  ];



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
       items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
               style:TextStyle(
                 fontSize:10.0,
                 fontWeight:FontWeight.bold,
                 
               )
            ),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Seach Flights',
               style:TextStyle(
                 fontSize:10.0,
                 fontWeight:FontWeight.bold
               )  
            ),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active),
            title: Text(
              'Flight Status',
               style:TextStyle(
                 fontSize:10.0,
                 fontWeight:FontWeight.bold
               )
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory),
            title: Text(
              'My Trips',
               style:TextStyle(
                 fontSize:10.0,
                 fontWeight:FontWeight.bold
               )
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text(
              'More',
               style:TextStyle(
                 fontSize:10.0,
                 fontWeight:FontWeight.bold
               )
            ),
          )

        ],

         currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],
        onTap: _onItemTapped,


    ),
    );
  }
}
