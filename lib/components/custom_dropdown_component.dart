import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wtn_project/controllers/terms_controller.dart';

class CustomDropdownComponent extends StatefulWidget {
  const CustomDropdownComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropdownComponent> createState() =>
      _CustomDropdownComponentState();
}

class _CustomDropdownComponentState extends State<CustomDropdownComponent> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TermsController>(builder: (context, controller, _) {
      return PopupMenuButton<String>(
        onSelected: (value) async {
          context.read<TermsController>().changeCountry(value);
        },
        padding: const EdgeInsets.all(4),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(4),
        // ),
        child: Material(
          elevation: 4,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green[400],
              // color: Colors.green[400],
            ),
            child: const Icon(
              Icons.arrow_drop_down_rounded,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'Brazil',
            child: Text('Brazil'),
          ),
          const PopupMenuItem(
            value: 'United States',
            child: Text('United States'),
          ),
          const PopupMenuItem(
            value: 'India',
            child: Text('India'),
          ),
          const PopupMenuItem(
            value: 'Japan',
            child: Text('Japan'),
          ),
          const PopupMenuItem(
            value: 'Singapore',
            child: Text('Singapore'),
          ),
          const PopupMenuItem(
            value: 'Israel',
            child: Text('Israel'),
          ),
          const PopupMenuItem(
            value: 'Australia',
            child: Text('Australia'),
          ),
          const PopupMenuItem(
            value: 'Hong Kong',
            child: Text('Hong Kong'),
          ),
          const PopupMenuItem(
            value: 'Taiwan',
            child: Text('Taiwan'),
          ),
          const PopupMenuItem(
            value: 'Canada',
            child: Text('Canada'),
          ),
          const PopupMenuItem(
            value: 'Germany',
            child: Text('Germany'),
          ),
          const PopupMenuItem(
            value: 'Netherlands',
            child: Text('Netherlands'),
          ),
          const PopupMenuItem(
            value: 'Indonesia',
            child: Text('Indonesia'),
          ),
          const PopupMenuItem(
            value: 'South Korea',
            child: Text('South Korea'),
          ),
          const PopupMenuItem(
            value: 'Turkey',
            child: Text('Turkey'),
          ),
          const PopupMenuItem(
            value: 'Philippines',
            child: Text('Philippines'),
          ),
          const PopupMenuItem(
            value: 'Italy',
            child: Text('Italy'),
          ),
          const PopupMenuItem(
            value: 'Vietnam',
            child: Text('Vietnam'),
          ),
          const PopupMenuItem(
            value: 'Egypt',
            child: Text('Egypt'),
          ),
          const PopupMenuItem(
            value: 'Argentina',
            child: Text('Argentina'),
          ),
          const PopupMenuItem(
            value: 'Poland',
            child: Text('Poland'),
          ),
          const PopupMenuItem(
            value: 'Colombia',
            child: Text('Colombia'),
          ),
          const PopupMenuItem(
            value: 'Ukraine',
            child: Text('Ukraine'),
          ),
          const PopupMenuItem(
            value: 'Aaudi Arabia',
            child: Text('Aaudi Arabia'),
          ),
          const PopupMenuItem(
            value: 'Kenya',
            child: Text('Kenya'),
          ),
          const PopupMenuItem(
            value: 'Chile',
            child: Text('Chile'),
          ),
          const PopupMenuItem(
            value: 'Romania',
            child: Text('Romania'),
          ),
          const PopupMenuItem(
            value: 'South Africa',
            child: Text('South Africa'),
          ),
          const PopupMenuItem(
            value: 'Belgium',
            child: Text('Belgium'),
          ),
          const PopupMenuItem(
            value: 'Sweden',
            child: Text('Sweden'),
          ),
          const PopupMenuItem(
            value: 'Austria',
            child: Text('Austria'),
          ),
          const PopupMenuItem(
            value: 'Switzerland',
            child: Text('Switzerland'),
          ),
          const PopupMenuItem(
            value: 'Greece',
            child: Text('Greece'),
          ),
          const PopupMenuItem(
            value: 'Denmark',
            child: Text('Denmark'),
          ),
          const PopupMenuItem(
            value: 'Norway',
            child: Text('Norway'),
          ),
          const PopupMenuItem(
            value: 'Nigeria',
            child: Text('Nigeria'),
          ),
          const PopupMenuItem(
            value: 'New Zealand',
            child: Text('New Zealand'),
          ),
          const PopupMenuItem(
            value: 'Ireland',
            child: Text('Ireland'),
          ),
          const PopupMenuItem(
            value: 'Czech Republic',
            child: Text('Czech Republic'),
          ),
          const PopupMenuItem(
            value: 'Portugal',
            child: Text('Portugal'),
          ),
          const PopupMenuItem(
            value: 'Mexico',
            child: Text('Mexico'),
          ),
          const PopupMenuItem(
            value: 'Malaysia',
            child: Text('Malaysia'),
          ),
          const PopupMenuItem(
            value: 'Hungary',
            child: Text('Hungary'),
          ),
          const PopupMenuItem(
            value: 'Russia',
            child: Text('Russia'),
          ),
          const PopupMenuItem(
            value: 'Thailand',
            child: Text('Thailand'),
          ),
          const PopupMenuItem(
            value: 'France',
            child: Text('France'),
          ),
          const PopupMenuItem(
            value: 'United Kingdom',
            child: Text('United Kingdom'),
          ),
          const PopupMenuItem(
            value: 'Finland',
            child: Text('Finland'),
          ),
        ],
      );
    });
  }
}
