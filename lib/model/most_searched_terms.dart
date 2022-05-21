class MostSearchedTerms {
  List<String>? unitedStates;
  List<String>? india;
  List<String>? japan;
  List<String>? singapore;
  List<String>? israel;
  List<String>? australia;
  List<String>? hongKong;
  List<String>? taiwan;
  List<String>? canada;
  List<String>? germany;
  List<String>? netherlands;
  List<String>? indonesia;
  List<String>? southKorea;
  List<String>? turkey;
  List<String>? philippines;
  List<String>? italy;
  List<String>? vietnam;
  List<String>? egypt;
  List<String>? argentina;
  List<String>? poland;
  List<String>? colombia;
  List<String>? ukraine;
  List<String>? saudiArabia;
  List<String>? kenya;
  List<String>? chile;
  List<String>? romania;
  List<String>? southAfrica;
  List<String>? belgium;
  List<String>? sweden;
  List<String>? austria;
  List<String>? switzerland;
  List<String>? greece;
  List<String>? denmark;
  List<String>? norway;
  List<String>? nigeria;
  List<String>? newZealand;
  List<String>? ireland;
  List<String>? czechRepublic;
  List<String>? portugal;
  List<String>? mexico;
  List<String>? malaysia;
  List<String>? hungary;
  List<String>? russia;
  List<String>? thailand;
  List<String>? brazil;
  List<String>? france;
  List<String>? unitedKingdom;
  List<String>? finland;

  MostSearchedTerms(
      {this.unitedStates,
      this.india,
      this.japan,
      this.singapore,
      this.israel,
      this.australia,
      this.hongKong,
      this.taiwan,
      this.canada,
      this.germany,
      this.netherlands,
      this.indonesia,
      this.southKorea,
      this.turkey,
      this.philippines,
      this.italy,
      this.vietnam,
      this.egypt,
      this.argentina,
      this.poland,
      this.colombia,
      this.ukraine,
      this.saudiArabia,
      this.kenya,
      this.chile,
      this.romania,
      this.southAfrica,
      this.belgium,
      this.sweden,
      this.austria,
      this.switzerland,
      this.greece,
      this.denmark,
      this.norway,
      this.nigeria,
      this.newZealand,
      this.ireland,
      this.czechRepublic,
      this.portugal,
      this.mexico,
      this.malaysia,
      this.hungary,
      this.russia,
      this.thailand,
      this.brazil,
      this.france,
      this.unitedKingdom,
      this.finland});

  MostSearchedTerms.fromJson(Map<String, dynamic> json) {
    unitedStates = json['united_states'].cast<String>();
    india = json['india'].cast<String>();
    japan = json['japan'].cast<String>();
    singapore = json['singapore'].cast<String>();
    israel = json['israel'].cast<String>();
    australia = json['australia'].cast<String>();
    hongKong = json['hong_kong'].cast<String>();
    taiwan = json['taiwan'].cast<String>();
    canada = json['canada'].cast<String>();
    germany = json['germany'].cast<String>();
    netherlands = json['netherlands'].cast<String>();
    indonesia = json['indonesia'].cast<String>();
    southKorea = json['south_korea'].cast<String>();
    turkey = json['turkey'].cast<String>();
    philippines = json['philippines'].cast<String>();
    italy = json['italy'].cast<String>();
    vietnam = json['vietnam'].cast<String>();
    egypt = json['egypt'].cast<String>();
    argentina = json['argentina'].cast<String>();
    poland = json['poland'].cast<String>();
    colombia = json['colombia'].cast<String>();
    ukraine = json['ukraine'].cast<String>();
    saudiArabia = json['saudi_arabia'].cast<String>();
    kenya = json['kenya'].cast<String>();
    chile = json['chile'].cast<String>();
    romania = json['romania'].cast<String>();
    southAfrica = json['south_africa'].cast<String>();
    belgium = json['belgium'].cast<String>();
    sweden = json['sweden'].cast<String>();
    austria = json['austria'].cast<String>();
    switzerland = json['switzerland'].cast<String>();
    greece = json['greece'].cast<String>();
    denmark = json['denmark'].cast<String>();
    norway = json['norway'].cast<String>();
    nigeria = json['nigeria'].cast<String>();
    newZealand = json['new zealand'].cast<String>();
    ireland = json['ireland'].cast<String>();
    czechRepublic = json['czech_republic'].cast<String>();
    portugal = json['portugal'].cast<String>();
    mexico = json['mexico'].cast<String>();
    malaysia = json['malaysia'].cast<String>();
    hungary = json['hungary'].cast<String>();
    russia = json['russia'].cast<String>();
    thailand = json['thailand'].cast<String>();
    brazil = json['brazil'].cast<String>();
    france = json['france'].cast<String>();
    unitedKingdom = json['united_kingdom'].cast<String>();
    finland = json['finland'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['united_states'] = unitedStates;
    data['india'] = india;
    data['japan'] = japan;
    data['singapore'] = singapore;
    data['israel'] = israel;
    data['australia'] = australia;
    data['hong_kong'] = hongKong;
    data['taiwan'] = taiwan;
    data['canada'] = canada;
    data['germany'] = germany;
    data['netherlands'] = netherlands;
    data['indonesia'] = indonesia;
    data['south_korea'] = southKorea;
    data['turkey'] = turkey;
    data['philippines'] = philippines;
    data['italy'] = italy;
    data['vietnam'] = vietnam;
    data['egypt'] = egypt;
    data['argentina'] = argentina;
    data['poland'] = poland;
    data['colombia'] = colombia;
    data['ukraine'] = ukraine;
    data['saudi_arabia'] = saudiArabia;
    data['kenya'] = kenya;
    data['chile'] = chile;
    data['romania'] = romania;
    data['south_africa'] = southAfrica;
    data['belgium'] = belgium;
    data['sweden'] = sweden;
    data['austria'] = austria;
    data['switzerland'] = switzerland;
    data['greece'] = greece;
    data['denmark'] = denmark;
    data['norway'] = norway;
    data['nigeria'] = nigeria;
    data['new zealand'] = newZealand;
    data['ireland'] = ireland;
    data['czech_republic'] = czechRepublic;
    data['portugal'] = portugal;
    data['mexico'] = mexico;
    data['malaysia'] = malaysia;
    data['hungary'] = hungary;
    data['russia'] = russia;
    data['thailand'] = thailand;
    data['brazil'] = brazil;
    data['france'] = france;
    data['united_kingdom'] = unitedKingdom;
    data['finland'] = finland;
    return data;
  }
}
