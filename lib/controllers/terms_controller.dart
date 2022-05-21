import 'package:flutter/material.dart';
import 'package:wtn_project/model/most_searched_terms.dart';
import 'package:wtn_project/repository/terms_repository.dart';

class TermsController extends ChangeNotifier {
  TermsRepository termsRepository = TermsRepository();
  MostSearchedTerms terms = MostSearchedTerms();
  List<String> termsCountry = [];
  String? valueDropdown = 'brazil';

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
      case 'brazil':
        {
          valueDropdown = 'brazil';
          termsCountry = terms.brazil!;
        }
        break;
      case 'united_states':
        {
          valueDropdown = 'united_states';
          termsCountry = terms.unitedStates!;
        }
        break;
      case 'india':
        {
          valueDropdown = 'india';
          termsCountry = terms.india!;
        }
        break;
      case 'japan':
        {
          valueDropdown = 'japan';
          termsCountry = terms.japan!;
        }
        break;
      case 'singapore':
        {
          valueDropdown = 'singapore';
          termsCountry = terms.singapore!;
        }
        break;
      case 'israel':
        {
          valueDropdown = 'israel';
          termsCountry = terms.israel!;
        }
        break;
      case 'australia':
        {
          valueDropdown = 'australia';
          termsCountry = terms.australia!;
        }
        break;
      case 'hong_kong':
        {
          valueDropdown = 'hong_kong';
          termsCountry = terms.hongKong!;
        }
        break;
      case 'taiwan':
        {
          valueDropdown = 'taiwan';
          termsCountry = terms.taiwan!;
        }
        break;
      case 'canada':
        {
          valueDropdown = 'canada';
          termsCountry = terms.canada!;
        }
        break;
      case 'germany':
        {
          valueDropdown = 'germany';
          termsCountry = terms.germany!;
        }
        break;
      case 'netherlands':
        {
          valueDropdown = 'netherlands';
          termsCountry = terms.netherlands!;
        }
        break;
      case 'indonesia':
        {
          valueDropdown = 'indonesia';
          termsCountry = terms.indonesia!;
        }
        break;
      case 'south_korea':
        {
          valueDropdown = 'south_korea';
          termsCountry = terms.southKorea!;
        }
        break;
      case 'turkey':
        {
          valueDropdown = 'turkey';
          termsCountry = terms.turkey!;
        }
        break;
      case 'philippines':
        {
          valueDropdown = 'philippines';
          termsCountry = terms.philippines!;
        }
        break;
      case 'italy':
        {
          valueDropdown = 'italy';
          termsCountry = terms.italy!;
        }
        break;
      case 'vietnam':
        {
          valueDropdown = 'vietnam';
          termsCountry = terms.vietnam!;
        }
        break;
      case 'egypt':
        {
          valueDropdown = 'egypt';
          termsCountry = terms.egypt!;
        }
        break;
      case 'argentina':
        {
          valueDropdown = 'argentina';
          termsCountry = terms.argentina!;
        }
        break;
      case 'poland':
        {
          valueDropdown = 'poland';
          termsCountry = terms.poland!;
        }
        break;
      case 'colombia':
        {
          valueDropdown = 'colombia';
          termsCountry = terms.colombia!;
        }
        break;
      case 'ukraine':
        {
          valueDropdown = 'ukraine';
          termsCountry = terms.ukraine!;
        }
        break;
      case 'saudi_arabia':
        {
          valueDropdown = 'saudi_arabia';
          termsCountry = terms.saudiArabia!;
        }
        break;
      case 'kenya':
        {
          valueDropdown = 'kenya';
          termsCountry = terms.kenya!;
        }
        break;
      case 'chile':
        {
          valueDropdown = 'chile';
          termsCountry = terms.chile!;
        }
        break;
      case 'romania':
        {
          valueDropdown = 'romania';
          termsCountry = terms.romania!;
        }
        break;
      case 'south_africa':
        {
          valueDropdown = 'south_africa';
          termsCountry = terms.southAfrica!;
        }
        break;
      case 'belgium':
        {
          valueDropdown = 'belgium';
          termsCountry = terms.belgium!;
        }
        break;
      case 'sweden':
        {
          valueDropdown = 'sweden';
          termsCountry = terms.sweden!;
        }
        break;
      case 'austria':
        {
          valueDropdown = 'austria';
          termsCountry = terms.austria!;
        }
        break;
      case 'switzerland':
        {
          valueDropdown = 'switzerland';
          termsCountry = terms.switzerland!;
        }
        break;
      case 'greece':
        {
          valueDropdown = 'greece';
          termsCountry = terms.greece!;
        }
        break;
      case 'denmark':
        {
          valueDropdown = 'denmark';
          termsCountry = terms.denmark!;
        }
        break;
      case 'norway':
        {
          valueDropdown = 'norway';
          termsCountry = terms.norway!;
        }
        break;
      case 'nigeria':
        {
          valueDropdown = 'nigeria';
          termsCountry = terms.nigeria!;
        }
        break;
      case 'new_zealand':
        {
          valueDropdown = 'new_zealand';
          termsCountry = terms.newZealand!;
        }
        break;
      case 'ireland':
        {
          valueDropdown = 'ireland';
          termsCountry = terms.ireland!;
        }
        break;
      case 'czech_republic':
        {
          valueDropdown = 'czech_republic';
          termsCountry = terms.czechRepublic!;
        }
        break;
      case 'portugal':
        {
          valueDropdown = 'portugal';
          termsCountry = terms.portugal!;
        }
        break;
      case 'mexico':
        {
          valueDropdown = 'mexico';
          termsCountry = terms.mexico!;
        }
        break;
      case 'malaysia':
        {
          valueDropdown = 'malaysia';
          termsCountry = terms.malaysia!;
        }
        break;
      case 'hungary':
        {
          valueDropdown = 'hungary';
          termsCountry = terms.hungary!;
        }
        break;
      case 'russia':
        {
          valueDropdown = 'russia';
          termsCountry = terms.russia!;
        }
        break;
      case 'thailand':
        {
          valueDropdown = 'thailand';
          termsCountry = terms.thailand!;
        }
        break;
      case 'france':
        {
          valueDropdown = 'france';
          termsCountry = terms.france!;
        }
        break;
      case 'united_kingdom':
        {
          valueDropdown = 'united_kingdom';
          termsCountry = terms.unitedKingdom!;
        }
        break;
      case 'finland':
        {
          valueDropdown = 'finland';
          termsCountry = terms.finland!;
        }
        break;
    }

    notifyListeners();
  }
}
