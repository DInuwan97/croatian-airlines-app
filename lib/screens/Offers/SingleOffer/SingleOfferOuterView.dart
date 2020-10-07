import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/models/offered_trips.dart';

class SingleOfferOuterView extends StatelessWidget {

  final OfferedTrips offer;
  const SingleOfferOuterView({Key key, this. offer}) : super(key: key);

  


  @override
  Widget build(BuildContext context) {
     var appBar = AppBar(
       title: Text(
          offer.name,
          style:TextStyle(
            color:Colors.black
          )
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
    );

    final windowWidth = MediaQuery.of(context).size.width;
    final windowHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final appBarHeight = appBar.preferredSize.height;
    final bodyHeight =
        windowHeight - (statusBarHeight + appBarHeight + windowHeight * 0.079);
    final faresHeight = bodyHeight -
        (bodyHeight * 0.4 + 50 + windowHeight * 0.035 + windowHeight * 0.09);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          offer.name,
          style:TextStyle(
            color:Colors.white
          )
        ),
        elevation: 0.0,
        //backgroundColor: Colors.transparent,
      ),

      body:ListView(
         padding: EdgeInsets.symmetric(horizontal: 0.0),
        children: <Widget>[

                Stack(children: <Widget>[

            Container(
              height:MediaQuery.of(context).size.width * 0.5,
              width:MediaQuery.of(context).size.width,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(30.0),
                boxShadow:[BoxShadow(
                  color:Colors.black26,
                  offset:Offset(0.1,2.0),
                  blurRadius : 6.0
                )]
              ),


              child: Hero(
                tag:offer.imageUrl,
                  child:ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    child:Image(
                      image:AssetImage(offer.imageUrl),
                      fit:BoxFit.cover
                    )
                  )
              )

              
             
            ),




             Positioned(
                              left: 20.0,
                              bottom: 20.0,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    offer.city,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: 'Oxygen',

                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.locationArrow,
                                        size: 18.0,
                                        color: Colors.white,
                                        
                                      ),
                                      SizedBox(width: 5.0),
                                      Text(
                                        offer.country,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Oxygen',
                                          fontWeight:FontWeight.bold,
                                          fontSize:20.0
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              
                            ),


                           


          ],
          ),
          

       travellingClassWidget(context)
          
        ],
      ),
      
    );
  }



Widget travellingClassWidget(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:8.0,horizontal:12.0),
    child: Container(
      height:MediaQuery.of(context).size.width * 0.3,
      width:MediaQuery.of(context).size.width,
          decoration: BoxDecoration(

              gradient: LinearGradient(
                  colors: [Colors.blueAccent,Colors.blue],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(20.0)
                )
              ),

      child:Row(
        children: <Widget>[

                Padding(
                  padding: const EdgeInsets.symmetric(vertical:25,horizontal:15),
                  child: Column(
                    children: <Widget>[
                      RichText(
                            text: TextSpan(
                            text: 'ECONOMY ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:20,
                              fontFamily: 'Oxygen',
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'CLASS', 
                                style: TextStyle(
                                  fontWeight: FontWeight.w600
                                )
                              ),
                            ],
                          ),
                      ),
                    ],
                  ),
                ),


                Spacer(),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical:15,horizontal:20),
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                         Navigator.push(context,
                          MaterialPageRoute(
    	                                            
                          )
                         );
                        },
                        padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.01,vertical: 8),
                        
                          child: const Text('BOOK NOW',
                              style: TextStyle(
                                fontSize: 15,
                              )
                          ),

                          elevation: 10.0,
                          color: Colors.blue[900],
                          splashColor: Colors.blue[200],
                          animationDuration:
                              Duration(seconds: 2),
                              colorBrightness: Brightness.dark,
                              shape: RoundedRectangleBorder(
                              borderRadius:
                                new BorderRadius.circular(10.0),
                            side: BorderSide(
                                color: Colors.white,
                                                                      
                            ),
                           
                          )
                          ),
                    ],

                  ),

                  
                ),

                Column(
                  children: <Widget>[
                      //      RichText(
                      //       text: TextSpan(
                      //       text: 'USD 210',
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize:20,
                      //         fontFamily: 'Oxygen',
                      //       )
                      
                      //     ),
                      // ),
                  ]
                )
               

        ],
      )
    ),
  );
}



}