class Client {
  final String fullname;
  final String username;
  final String email;
  final String password;
  final String phone;
  final String id;

  Client(
      {required this.fullname,
      required this.username,
      required this.email,
      required this.phone,
      required this.password,
      required this.id});
}

Client client = Client(
    fullname: "Testov test",
    username: "username",
    email: "email@gmail.com",
    phone: "+99899 999 99 99",
    password: "password",
    id: "#3");
