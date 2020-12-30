class StatusModel {
  final String name;
  final String date;
  final String img;
  final bool personalUser;
  final bool viewedStatus;

  StatusModel(this.personalUser, {this.name, this.date, this.img, this.viewedStatus: true});
}



List<StatusModel> stModel = [
  StatusModel(
    true,
      name: "My Status", date: "Yesterday, 10:03pm", img: "images/dummi.jpg"),
  StatusModel(
    false,
    name: "Tammy",
    date: "36 minutes ago",
    img: "images/tammy.jpg",
    viewedStatus: false
  ),
  StatusModel(
    false,
      name: "SwagsChordBeatz", date: "39 minutes ago", img: "images/swagz.jpg", viewedStatus: false),
  StatusModel(
    false,
    name: "Olu Faith", date: "40 minutes ago", img: "images/olu.jpg", viewedStatus: false),
  StatusModel(
    false,
      name: "Magdalene", date: "45 minutes ago", img: "images/maggi.jpg", viewedStatus: false),
  StatusModel(
    false,
      name: "Levvi Store", date: "46 minutes ago", img: "images/logo.jpg", viewedStatus: false),
  StatusModel(
    false,
    name: "Janded", date: "49 minutes ago", img: "images/janded.jpg", viewedStatus: false),
  StatusModel(
    false,
      name: "Jamiliat", date: "49 minutes ago", img: "images/jammy.jpg", viewedStatus: false),
  StatusModel(
    false,
      name: "Princess Diana", date: "50 minutes ago", img: "images/diana.jpg", viewedStatus: false),
  StatusModel(
    false,
      name: "Uti Gift", date: "55 minutes ago", img: "images/bigyansh.jpg", viewedStatus: false),
  StatusModel(
    false,
    name: "Adaeze", date: "1 hour ago", img: "images/ada.jpg", viewedStatus: false)
];
