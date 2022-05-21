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
      return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: DropdownButton<String>(
          value: controller.valueDropdown,
          onChanged: (value) {
            context.read<TermsController>().changeCountry(value!);
          },
          items: const [
            DropdownMenuItem(
              value: 'brazil',
              child: Text('Brazil'),
            ),
            DropdownMenuItem(
              value: 'united_states',
              child: Text('United States'),
            ),
            DropdownMenuItem(
              value: 'india',
              child: Text('India'),
            ),
            DropdownMenuItem(
              value: 'japan',
              child: Text('Japan'),
            ),
            DropdownMenuItem(
              value: 'singapore',
              child: Text('Singapore'),
            ),
            DropdownMenuItem(
              value: 'israel',
              child: Text('Israel'),
            ),
            DropdownMenuItem(
              value: 'australia',
              child: Text('Australia'),
            ),
            DropdownMenuItem(
              value: 'hong_kong',
              child: Text('Hong Kong'),
            ),
            DropdownMenuItem(
              value: 'taiwan',
              child: Text('Taiwan'),
            ),
            DropdownMenuItem(
              value: 'canada',
              child: Text('Canada'),
            ),
            DropdownMenuItem(
              value: 'germany',
              child: Text('Germany'),
            ),
            DropdownMenuItem(
              value: 'netherlands',
              child: Text('Netherlands'),
            ),
            DropdownMenuItem(
              value: 'indonesia',
              child: Text('Indonesia'),
            ),
            DropdownMenuItem(
              value: 'south_korea',
              child: Text('South Korea'),
            ),
            DropdownMenuItem(
              value: 'turkey',
              child: Text('Turkey'),
            ),
            DropdownMenuItem(
              value: 'philippines',
              child: Text('Philippines'),
            ),
            DropdownMenuItem(
              value: 'italy',
              child: Text('Italy'),
            ),
            DropdownMenuItem(
              value: 'vietnam',
              child: Text('Vietnam'),
            ),
            DropdownMenuItem(
              value: 'egypt',
              child: Text('Egypt'),
            ),
            DropdownMenuItem(
              value: 'argentina',
              child: Text('Argentina'),
            ),
            DropdownMenuItem(
              value: 'poland',
              child: Text('Poland'),
            ),
            DropdownMenuItem(
              value: 'colombia',
              child: Text('Colombia'),
            ),
            DropdownMenuItem(
              value: 'ukraine',
              child: Text('Ukraine'),
            ),
            DropdownMenuItem(
              value: 'saudi_arabia',
              child: Text('Aaudi Arabia'),
            ),
            DropdownMenuItem(
              value: 'kenya',
              child: Text('Kenya'),
            ),
            DropdownMenuItem(
              value: 'chile',
              child: Text('Chile'),
            ),
            DropdownMenuItem(
              value: 'romania',
              child: Text('Romania'),
            ),
            DropdownMenuItem(
              value: 'south_africa',
              child: Text('South Africa'),
            ),
            DropdownMenuItem(
              value: 'belgium',
              child: Text('Belgium'),
            ),
            DropdownMenuItem(
              value: 'sweden',
              child: Text('Sweden'),
            ),
            DropdownMenuItem(
              value: 'austria',
              child: Text('Austria'),
            ),
            DropdownMenuItem(
              value: 'switzerland',
              child: Text('Switzerland'),
            ),
            DropdownMenuItem(
              value: 'greece',
              child: Text('Greece'),
            ),
            DropdownMenuItem(
              value: 'denmark',
              child: Text('Denmark'),
            ),
            DropdownMenuItem(
              value: 'norway',
              child: Text('Norway'),
            ),
            DropdownMenuItem(
              value: 'nigeria',
              child: Text('Nigeria'),
            ),
            DropdownMenuItem(
              value: 'new_zealand',
              child: Text('New Zealand'),
            ),
            DropdownMenuItem(
              value: 'ireland',
              child: Text('Ireland'),
            ),
            DropdownMenuItem(
              value: 'czech_republic',
              child: Text('Czech Republic'),
            ),
            DropdownMenuItem(
              value: 'portugal',
              child: Text('Portugal'),
            ),
            DropdownMenuItem(
              value: 'mexico',
              child: Text('Mexico'),
            ),
            DropdownMenuItem(
              value: 'malaysia',
              child: Text('Malaysia'),
            ),
            DropdownMenuItem(
              value: 'hungary',
              child: Text('Hungary'),
            ),
            DropdownMenuItem(
              value: 'russia',
              child: Text('Russia'),
            ),
            DropdownMenuItem(
              value: 'thailand',
              child: Text('Thailand'),
            ),
            DropdownMenuItem(
              value: 'france',
              child: Text('France'),
            ),
            DropdownMenuItem(
              value: 'united_kingdom',
              child: Text('United Kingdom'),
            ),
            DropdownMenuItem(
              value: 'finland',
              child: Text('Finland'),
            ),
          ],
        ),
      );
    });
  }
}
