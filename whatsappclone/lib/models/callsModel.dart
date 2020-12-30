
class CallsModel {

  final String name;
  final String date;
  final String img;
  final bool voiceCall;
  final bool missedCall;
  final bool madeCall;

    CallsModel({ this.madeCall, this.name, this.date, this.img, this.voiceCall, this.missedCall});

  

}
List<CallsModel> callsModel =[
    CallsModel(
      madeCall: true ,
      name: "Adaeze", 
      date: "June 4, 12:05 PM",
      img: "images/ada.jpg",
      voiceCall: false,
      missedCall: false
    ),
    CallsModel(
       madeCall: false ,
      name: "Adaeze", 
      date: "June 4, 12:08 PM",
      img: "images/ada.jpg",
      voiceCall: false,
      missedCall: false
    ),
    CallsModel(
       madeCall: false ,
      name: "Adaeze", 
      date: "June 4, 12:10 PM",
      img: "images/ada.jpg",
      voiceCall: true,
      missedCall: true
    ),
    CallsModel(
       madeCall: true ,
      name: "Adaeze", 
      date: "June 6, 12:14 PM",
      img: "images/ada.jpg",
      voiceCall: false,
      missedCall: false
    ),
    CallsModel(
       madeCall: true ,
      name: "Adaeze", 
      date: "June 8, 12:08 PM",
      img: "images/ada.jpg",
      voiceCall: false,
      missedCall: true
    ),
    CallsModel(
       madeCall: true ,
      name: "Janded",
      date: "June 8, 1:00 PM",
      img: "images/janded.jpg",
      voiceCall: true,
      missedCall: true
    ),
    CallsModel(
       madeCall: true ,
      name: "Janded",
      date: "June 8, 2:00 PM",
      img: "images/janded.jpg",
      voiceCall: true,
      missedCall: false
    ),
    CallsModel(
       madeCall: true ,
      name: "Uti Gift",
      date: "June 10, 3:00 AM",
      img: "images/bigyansh.jpg",
      voiceCall: false,
      missedCall: false
    ),
    CallsModel(
       madeCall: true ,
      name: "Uti Gift",
      date: "June 10, 3:00 AM",
      img: "images/bigyansh.jpg",
      voiceCall: true,
      missedCall: true
    ),
    CallsModel(
       madeCall: true ,
      name: "Uti Gift",
      date: "June 10, 3:00 AM",
      img: "images/bigyansh.jpg",
      voiceCall: false,
      missedCall: false
    ),
    CallsModel(
       madeCall: true ,
      name: "Uti Gift",
      date: "June 10, 3:00 AM",
      img: "images/bigyansh.jpg",
      voiceCall: false,
      missedCall: true
    ),
  ];
