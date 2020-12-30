


class ChatModel {

  final String name;
  final String message;
  final String time;
  final String img;
  final String numOfChats;
  final bool isRead;

  ChatModel({this.isRead,this.numOfChats,this.name, this.message, this.time, this.img});
}

  List<ChatModel> dummyData = [   
      new ChatModel(
        isRead: true,
        numOfChats: "4",
      name: "Princess Diana",
      message: "Hey yo Daddy", 
      time: "15:30",
      img: "images/diana.jpg"
    ), 
    new ChatModel(
      isRead: false,
       numOfChats:"1",
      name: "Gift Uti",
      message: "How you?", 
      time: "17:30",
      img: "images/bigyansh.jpg"
    ),
    new ChatModel(
      isRead: false,
      numOfChats:"9",
      name: "Adaeze",
      message: "I'm fine and you?", 
      time: "15:30",
      img: "images/ada.jpg"
    ),
    new ChatModel(
      isRead: true,
      numOfChats:"1",
      name: "Jammiliat",
      message: "You dey around?", 
      time: "15:30",
      img: "images/jammy.jpg"
    ),
    new ChatModel(
      isRead: false,
      numOfChats:"4",
      name: "Janded",
      message: "Howfar na, what is the way", 
      time: "15:30",
      img: "images/janded.jpg"
    ),
    new ChatModel(
      isRead: false,
      numOfChats:"10",
      name: "Levvi store",
      message: "I have some cool Levi jean you'd love", 
      time: "15:30",
      img: "images/logo.jpg"
    ),
    new ChatModel(
      isRead: false,
      numOfChats:"1",
      name: "Magdalene",
      message: "I went for dance rehearsals", 
      time: "yesterday",
      img: "images/maggi.jpg"
    ),
    new ChatModel(
      isRead: false,
      numOfChats:"1",
      name: "Olu Faith",
      message: "The real sound Engineer", 
      time: "yesterday",
      img: "images/olu.jpg"
    ),
    new ChatModel(
      isRead: true,
      numOfChats:"1",
      name: "swagzchordBeatz",
      message: "Omo that beat mad oooo, guy", 
      time: "yesterday",
      img: "images/swagz.jpg"
    ),
    new ChatModel(
      numOfChats:"4",
      name: "Tammy",
      message: "how was your night?", 
      time: "yesterday",
      img: "images/tammy.jpg"
    ),

  ];
