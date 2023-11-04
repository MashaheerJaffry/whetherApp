import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  final Function(String) onSearch;

  const SearchWidget({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    //textField to enter city name and on submit gets the results
    return TextField(
      onSubmitted: onSearch,
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
      decoration: InputDecoration(
        labelText: 'Enter a city',
        filled: true,
        fillColor: const Color(0xff16033a),
        labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff16033a), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
