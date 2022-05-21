import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wtn_project/model/most_searched_terms.dart';

class TermsRepository {
  Future<MostSearchedTerms> getTerms() async {
    MostSearchedTerms terms = MostSearchedTerms();
    const url =
        'https://trends.google.com/trends/hottrends/visualize/internal/data';
    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      terms = MostSearchedTerms.fromJson(data);
    } else {
      print('Error');
    }

    return terms;
  }
}
