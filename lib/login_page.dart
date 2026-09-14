import 'package:flutter/material.dart';
import 'package:flutter_application_4/UI/Home_screen.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({super.key});

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  static const Color brandGreen = Color(0xFF008069);

 List<Map<String, String>> countries = [
  {"country": "Egypt", "code": "+20"},
  {"country": "Saudi Arabia", "code": "+966"},
  {"country": "United States", "code": "+1"},
  {"country": "United Kingdom", "code": "+44"},
  {"country": "Germany", "code": "+49"},
  {"country": "France", "code": "+33"},
  {"country": "United Arab Emirates", "code": "+971"},
  {"country": "Qatar", "code": "+974"},
  {"country": "Kuwait", "code": "+965"},
  {"country": "Jordan", "code": "+962"},
  {"country": "Lebanon", "code": "+961"},
  {"country": "Turkey", "code": "+90"},
  {"country": "Italy", "code": "+39"},
  {"country": "Spain", "code": "+34"},
  {"country": "Canada", "code": "+1"},
];
  final _formKey = GlobalKey<FormState>();

  String selectedCountry = "Egypt";
  String selectedNumber = "+20";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),

      body: Form(
        key: _formKey,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Container(
                width: 320,
                constraints: const BoxConstraints(maxWidth: 500),
                padding: const EdgeInsets.fromLTRB(30, 40, 30, 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),

                  border: Border.all(color: Colors.grey.shade300, width: 1),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 15,
                      spreadRadius: 2,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Enter your phone number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500, 
                        color: brandGreen,
                      ),
                    ),

                    const SizedBox(height: 12),

                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                        children: [
                          TextSpan(
                            text:
                                "WhatsApp will need to verify your phone number. ",
                          ),
                          TextSpan(
                            text: "What's my number?",
                            style: TextStyle(color: brandGreen, fontSize: 14),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 28),

                    DropdownButtonFormField<String>(
                      value: selectedCountry,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: brandGreen,
                      ),

                      decoration: const InputDecoration(
                        labelText: "Country",
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: brandGreen, width: 1.5),
                        ),

                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: brandGreen, width: 2),
                        ),

                        contentPadding: EdgeInsets.only(bottom: 8),
                      ),

                      items: countries.map((country) {
                        return DropdownMenuItem<String>(
                          value: country["country"],
                          child: Text(country["country"]!),
                        );
                      }).toList(),

                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            selectedCountry = value;

                            selectedNumber = countries.firstWhere(
                              (country) => country["country"] == value,
                            )["code"]!;
                          });
                        }
                      },
                    ),
                    SizedBox(height: 15),
                    Row(
                       crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 75,
                          child: DropdownButtonFormField<String>(
                            value: selectedNumber,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 18,
                            ),
                            decoration: const InputDecoration(
                              labelText: "Code",
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: brandGreen,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: brandGreen,
                                  width: 2,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(bottom: 8),
                            ),
                            items: countries.map((country) {
                              return DropdownMenuItem<String>(
                                value: country["code"],
                                child: Text(country["code"]!),
                              );
                            }).toList(),
                            onChanged: (value) {
                              if (value != null) {
                                setState(() {
                                  selectedNumber = value;

                                  selectedCountry = countries.firstWhere(
                                    (country) => country["code"] == value,
                                  )["country"]!;
                                });
                              }
                            },
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter your phone number";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: "Phone number",
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: "109 469 5510",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: brandGreen,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: brandGreen,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: brandGreen,
                        foregroundColor: Colors.white,
                        elevation: 0,

                        minimumSize: const Size(130, 42),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
