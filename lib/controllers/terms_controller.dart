import 'package:flutter/material.dart';
import 'package:wtn_project/model/most_searched_terms.dart';
import 'package:wtn_project/repository/terms_repository.dart';

class TermsController extends ChangeNotifier {
  TermsRepository termsRepository = TermsRepository();
  MostSearchedTerms terms = MostSearchedTerms();
  List<String> termsCountry = [];
  String? valueDropdown = 'Brazil';

  TermsController({required this.termsRepository}) {
    getTerms();
  }

  getTerms() async {
    await termsRepository.getTerms().then((value) {
      terms = value;
      termsCountry = value.brazil!;
    });
    notifyListeners();
  }

  changeCountry(String country) {
    switch (country) {
      case 'Brazil':
        {
          valueDropdown = 'Brazil';
          termsCountry = terms.brazil!;
        }
        break;
      case 'United States':
        {
          valueDropdown = 'United States';
          termsCountry = terms.unitedStates!;
        }
        break;
      case 'India':
        {
          valueDropdown = 'India';
          termsCountry = terms.india!;
        }
        break;
      case 'Japan':
        {
          valueDropdown = 'Japan';
          termsCountry = terms.japan!;
        }
        break;
      case 'Singapore':
        {
          valueDropdown = 'Singapore';
          termsCountry = terms.singapore!;
        }
        break;
      case 'Israel':
        {
          valueDropdown = 'Israel';
          termsCountry = terms.israel!;
        }
        break;
      case 'Australia':
        {
          valueDropdown = 'Australia';
          termsCountry = terms.australia!;
        }
        break;
      case 'Hong Kong':
        {
          valueDropdown = 'Hong Kong';
          termsCountry = terms.hongKong!;
        }
        break;
      case 'Taiwan':
        {
          valueDropdown = 'Taiwan';
          termsCountry = terms.taiwan!;
        }
        break;
      case 'Canada':
        {
          valueDropdown = 'Canada';
          termsCountry = terms.canada!;
        }
        break;
      case 'Germany':
        {
          valueDropdown = 'Germany';
          termsCountry = terms.germany!;
        }
        break;
      case 'Netherlands':
        {
          valueDropdown = 'Netherlands';
          termsCountry = terms.netherlands!;
        }
        break;
      case 'Indonesia':
        {
          valueDropdown = 'Indonesia';
          termsCountry = terms.indonesia!;
        }
        break;
      case 'South Korea':
        {
          valueDropdown = 'South Korea';
          termsCountry = terms.southKorea!;
        }
        break;
      case 'Turkey':
        {
          valueDropdown = 'Turkey';
          termsCountry = terms.turkey!;
        }
        break;
      case 'Philippines':
        {
          valueDropdown = 'Philippines';
          termsCountry = terms.philippines!;
        }
        break;
      case 'Italy':
        {
          valueDropdown = 'Italy';
          termsCountry = terms.italy!;
        }
        break;
      case 'Vietnam':
        {
          valueDropdown = 'Vietnam';
          termsCountry = terms.vietnam!;
        }
        break;
      case 'Egypt':
        {
          valueDropdown = 'Egypt';
          termsCountry = terms.egypt!;
        }
        break;
      case 'Argentina':
        {
          valueDropdown = 'Argentina';
          termsCountry = terms.argentina!;
        }
        break;
      case 'Poland':
        {
          valueDropdown = 'Poland';
          termsCountry = terms.poland!;
        }
        break;
      case 'Colombia':
        {
          valueDropdown = 'Colombia';
          termsCountry = terms.colombia!;
        }
        break;
      case 'Ukraine':
        {
          valueDropdown = 'Ukraine';
          termsCountry = terms.ukraine!;
        }
        break;
      case 'Aaudi Arabia':
        {
          valueDropdown = 'Aaudi Arabia';
          termsCountry = terms.saudiArabia!;
        }
        break;
      case 'Kenya':
        {
          valueDropdown = 'Kenya';
          termsCountry = terms.kenya!;
        }
        break;
      case 'Chile':
        {
          valueDropdown = 'Chile';
          termsCountry = terms.chile!;
        }
        break;
      case 'Romania':
        {
          valueDropdown = 'Romania';
          termsCountry = terms.romania!;
        }
        break;
      case 'South Africa':
        {
          valueDropdown = 'South Africa';
          termsCountry = terms.southAfrica!;
        }
        break;
      case 'Belgium':
        {
          valueDropdown = 'Belgium';
          termsCountry = terms.belgium!;
        }
        break;
      case 'Sweden':
        {
          valueDropdown = 'Sweden';
          termsCountry = terms.sweden!;
        }
        break;
      case 'Austria':
        {
          valueDropdown = 'Austria';
          termsCountry = terms.austria!;
        }
        break;
      case 'Switzerland':
        {
          valueDropdown = 'Switzerland';
          termsCountry = terms.switzerland!;
        }
        break;
      case 'Greece':
        {
          valueDropdown = 'Greece';
          termsCountry = terms.greece!;
        }
        break;
      case 'Denmark':
        {
          valueDropdown = 'Denmark';
          termsCountry = terms.denmark!;
        }
        break;
      case 'Norway':
        {
          valueDropdown = 'Norway';
          termsCountry = terms.norway!;
        }
        break;
      case 'Nigeria':
        {
          valueDropdown = 'Nigeria';
          termsCountry = terms.nigeria!;
        }
        break;
      case 'New Zealand':
        {
          valueDropdown = 'New Zealand';
          termsCountry = terms.newZealand!;
        }
        break;
      case 'Ireland':
        {
          valueDropdown = 'Ireland';
          termsCountry = terms.ireland!;
        }
        break;
      case 'Czech Republic':
        {
          valueDropdown = 'Czech Republic';
          termsCountry = terms.czechRepublic!;
        }
        break;
      case 'Portugal':
        {
          valueDropdown = 'Portugal';
          termsCountry = terms.portugal!;
        }
        break;
      case 'Mexico':
        {
          valueDropdown = 'Mexico';
          termsCountry = terms.mexico!;
        }
        break;
      case 'Malaysia':
        {
          valueDropdown = 'Malaysia';
          termsCountry = terms.malaysia!;
        }
        break;
      case 'Hungary':
        {
          valueDropdown = 'Hungary';
          termsCountry = terms.hungary!;
        }
        break;
      case 'Russia':
        {
          valueDropdown = 'Russia';
          termsCountry = terms.russia!;
        }
        break;
      case 'Thailand':
        {
          valueDropdown = 'Thailand';
          termsCountry = terms.thailand!;
        }
        break;
      case 'France':
        {
          valueDropdown = 'France';
          termsCountry = terms.france!;
        }
        break;
      case 'United Kingdom':
        {
          valueDropdown = 'United Kingdom';
          termsCountry = terms.unitedKingdom!;
        }
        break;
      case 'Finland':
        {
          valueDropdown = 'Finland';
          termsCountry = terms.finland!;
        }
        break;
    }

    notifyListeners();
  }
}
