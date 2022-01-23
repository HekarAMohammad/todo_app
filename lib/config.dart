class User {
  String? title;
  String? noteDec;
  String? datein;
  String? dateout;

  User({
    this.title,
    this.noteDec,
    this.datein,
    this.dateout,
  });
}

User user = User(
  title: "Programmer",
  noteDec: "a diciption of note ",
  datein: '1/1/2020',
  dateout: "20/1/2020",
);
