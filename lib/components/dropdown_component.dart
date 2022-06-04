import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wtn_project/controllers/terms_controller.dart';

class DropdownComponent extends StatefulWidget {
  const DropdownComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<DropdownComponent> createState() => _DropdownComponentState();
}

class _DropdownComponentState extends State<DropdownComponent> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TermsController>(builder: (context, controller, _) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.black,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            // value: controller.valueDropdown,
            onChanged: (value) {
              context.read<TermsController>().changeCountry(value!);
            },
            iconSize: 60.0,
            isExpanded: false,
            items: const [
              DropdownMenuItem(
                value: 'Brazil',
                child: Text('Brazil'),
              ),
              DropdownMenuItem(
                value: 'United States',
                child: Text('United States'),
              ),
              DropdownMenuItem(
                value: 'India',
                child: Text('India'),
              ),
              DropdownMenuItem(
                value: 'Japan',
                child: Text('Japan'),
              ),
              DropdownMenuItem(
                value: 'Singapore',
                child: Text('Singapore'),
              ),
              DropdownMenuItem(
                value: 'Israel',
                child: Text('Israel'),
              ),
              DropdownMenuItem(
                value: 'Australia',
                child: Text('Australia'),
              ),
              DropdownMenuItem(
                value: 'Hong Kong',
                child: Text('Hong Kong'),
              ),
              DropdownMenuItem(
                value: 'Taiwan',
                child: Text('Taiwan'),
              ),
              DropdownMenuItem(
                value: 'Canada',
                child: Text('Canada'),
              ),
              DropdownMenuItem(
                value: 'Germany',
                child: Text('Germany'),
              ),
              DropdownMenuItem(
                value: 'Netherlands',
                child: Text('Netherlands'),
              ),
              DropdownMenuItem(
                value: 'Indonesia',
                child: Text('Indonesia'),
              ),
              DropdownMenuItem(
                value: 'South Korea',
                child: Text('South Korea'),
              ),
              DropdownMenuItem(
                value: 'Turkey',
                child: Text('Turkey'),
              ),
              DropdownMenuItem(
                value: 'Philippines',
                child: Text('Philippines'),
              ),
              DropdownMenuItem(
                value: 'Italy',
                child: Text('Italy'),
              ),
              DropdownMenuItem(
                value: 'Vietnam',
                child: Text('Vietnam'),
              ),
              DropdownMenuItem(
                value: 'Egypt',
                child: Text('Egypt'),
              ),
              DropdownMenuItem(
                value: 'Argentina',
                child: Text('Argentina'),
              ),
              DropdownMenuItem(
                value: 'Poland',
                child: Text('Poland'),
              ),
              DropdownMenuItem(
                value: 'Colombia',
                child: Text('Colombia'),
              ),
              DropdownMenuItem(
                value: 'Ukraine',
                child: Text('Ukraine'),
              ),
              DropdownMenuItem(
                value: 'Aaudi Arabia',
                child: Text('Aaudi Arabia'),
              ),
              DropdownMenuItem(
                value: 'Kenya',
                child: Text('Kenya'),
              ),
              DropdownMenuItem(
                value: 'Chile',
                child: Text('Chile'),
              ),
              DropdownMenuItem(
                value: 'Romania',
                child: Text('Romania'),
              ),
              DropdownMenuItem(
                value: 'South Africa',
                child: Text('South Africa'),
              ),
              DropdownMenuItem(
                value: 'Belgium',
                child: Text('Belgium'),
              ),
              DropdownMenuItem(
                value: 'Sweden',
                child: Text('Sweden'),
              ),
              DropdownMenuItem(
                value: 'Austria',
                child: Text('Austria'),
              ),
              DropdownMenuItem(
                value: 'Switzerland',
                child: Text('Switzerland'),
              ),
              DropdownMenuItem(
                value: 'Greece',
                child: Text('Greece'),
              ),
              DropdownMenuItem(
                value: 'Denmark',
                child: Text('Denmark'),
              ),
              DropdownMenuItem(
                value: 'Norway',
                child: Text('Norway'),
              ),
              DropdownMenuItem(
                value: 'Nigeria',
                child: Text('Nigeria'),
              ),
              DropdownMenuItem(
                value: 'New Zealand',
                child: Text('New Zealand'),
              ),
              DropdownMenuItem(
                value: 'Ireland',
                child: Text('Ireland'),
              ),
              DropdownMenuItem(
                value: 'Czech Republic',
                child: Text('Czech Republic'),
              ),
              DropdownMenuItem(
                value: 'Portugal',
                child: Text('Portugal'),
              ),
              DropdownMenuItem(
                value: 'Mexico',
                child: Text('Mexico'),
              ),
              DropdownMenuItem(
                value: 'Malaysia',
                child: Text('Malaysia'),
              ),
              DropdownMenuItem(
                value: 'Hungary',
                child: Text('Hungary'),
              ),
              DropdownMenuItem(
                value: 'Russia',
                child: Text('Russia'),
              ),
              DropdownMenuItem(
                value: 'Thailand',
                child: Text('Thailand'),
              ),
              DropdownMenuItem(
                value: 'France',
                child: Text('France'),
              ),
              DropdownMenuItem(
                value: 'United Kingdom',
                child: Text('United Kingdom'),
              ),
              DropdownMenuItem(
                value: 'Finland',
                child: Text('Finland'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
