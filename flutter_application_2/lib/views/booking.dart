part of 'pages.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlName = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  bool isHide = true;

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlName.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: Form(
            key: _loginKey,
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      prefixIcon: Icon(Icons.account_circle)),
                      controller: ctrlName
                ),
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email Address",
                      prefixIcon: Icon(Icons.email)),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? 'Email tidak valid!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: Icon(Icons.call)),
                      controller: ctrlPhone
                ),

                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "City",
                      prefixIcon: Icon(Icons.location_city)),
                      controller: ctrlCity
                ),

                SizedBox(height: 32),
                ElevatedButton(
                    onPressed: () {
                      if (_loginKey.currentState!.validate()) {
                        Fluttertoast.showToast(
                            msg: 'email:' +
                                ctrlEmail.text.toString() +
                                ', Full Name: ' +
                                ctrlName.text.toString() +
                                ', Phone Number: ' +
                                ctrlPhone.text.toString() +
                                ', City: ' +
                                ctrlCity.text.toString(),

                            toastLength: Toast.LENGTH_SHORT,
                            fontSize: 14,
                            backgroundColor: Colors.greenAccent,
                            textColor: Colors.white);
                      } else {
                        Fluttertoast.showToast(
                            msg: "Booking Failed !!",
                            toastLength: Toast.LENGTH_SHORT,
                            fontSize: 14,
                            backgroundColor: Colors.redAccent,
                            textColor: Colors.white);
                      }
                    },
                    child: Text("Book Now"))
              ],
            )),
      ),
    );
  }
}

