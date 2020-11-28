import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gta_sanandreas/bloc/biobloc_bloc.dart';


class CharactersListView extends StatefulWidget {
  @override
  _CharactersListViewState createState() => _CharactersListViewState();
}

class _CharactersListViewState extends State<CharactersListView> {
  Characters selecteditem = gtacharacterslist[0];

  @override
  Widget build(BuildContext context) {
    final _instancebloc = BlocProvider.of<BioblocBloc>(context);
    return Container(
      height: MediaQuery.of(context).size.height/5,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  'images/charectors/29-298798_gta-san-andreas-wallpapers.jpg')),
          border: Border.all(color: Colors.grey)),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: gtacharacterslist.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {

              _instancebloc.add( ChangeBioEvent(
                  personBio:gtacharacterslist[index].bio) );
              print(gtacharacterslist[index].name );
              setState(() {
                selecteditem = gtacharacterslist[index];
              });
            },
            child: selecteditem == gtacharacterslist[index]
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.tealAccent.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(0)),
                    child: gtacharacterslist[index])
                : gtacharacterslist[index]),
      ),
    );
  }
}

class Characters extends StatelessWidget {
  final String image;
  final String name;
  final String bio;

  const Characters({this.image, this.name, this.bio});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            SizedBox(
              height: 2,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/aGiVE.png'),
              radius: 38,
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(image),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              name,
              style: TextStyle(
                  fontFamily: 'gtafont',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.yellowAccent),
            )
          ],
        ),
      ),
    );
  }
}

List<Characters> gtacharacterslist = [
  Characters(
      image: 'images/charectors/CJ.jpg',
      name: 'CJ',
      bio:
          '''Carl Johnson, also known as CJ,is the main protagonist and playable character throughout GTA San Andreas. After he has resided at Liberty City for five years to escape from the pressures of life, he was informed by his brother that his mother was murdered which is why he is returning from Liberty City to Los Santos. He misses the funeral but decides to stay and prove his loyalty to his brother Sweet and to the Grove Street Families. Carl then begins to help the Grove Street Families and weaken their rivals, as well as establishing a business empire throughout the State of San Andreas.
Voiced by Young Maylay (Chris Bellard).'''),
  Characters(
    image: 'images/charectors/melvin.jpg',
    name: 'Melvin',
    bio:
        '''Melvin Harris, also known as Big Smoke, is a leading member of the Grove Street Families who lives in Idlewood. He welcomes Carl's return to the gang and assists Carl in helping the Grove Street Families return to dominance. However, he does so in a limited way, later joining forces with the Ballas, the Grove Street Families' main rival, in order to become involved in the drugs trade, which Sweet had refused to do. He also works in league with the Los Santos Vagos, Russian Mafia and the San Fierro Rifa. Whilst Carl is away from Los Santos, he becomes the city's drug baron and hides himself in a building in Los Flores. He is later killed by Carl for betraying the Grove Street Families.
Voiced by Clifton Powell.''',
  ),
  Characters(
    image: 'images/charectors/saen.jpg',
    name: 'Sean',
    bio:
        '''Sean Johnson (Born: 1966), known as Sweet, is the leader of the Grove Street Families and the older brother of Carl, Kendl and Brian. He has an unnamed girlfriend. Sweet is initially skeptical about Carl's loyalty, blaming him for the death of Brian, but eventually accepts his brother back into the gang. He is arrested by the police, before being released after Mike Toreno arranged for his release in return for a favor from Carl. He returns to his home in Ganton and helps to re-assert the Grove Street Families dominance in the area.
Voiced by Faizon Love.''',
  ),
  Characters(
    image: 'images/charectors/lance.png',
    name: 'Lance',
    bio:
        '''Lance Wilson, also known as Ryder, is a leading member of the Grove Street Families who lives in Ganton. He welcomes Carl's return to the gang and works with Carl to obtain weapons for the gang, stealing them from Colonel Fuhrberger and a National Guard weapons depot. However, he later joins the Ballas, the Grove Street Families' main rival, and becomes heavily involved in the drugs trade. Ryder is killed by Carl after fleeing from a meeting with T-Bone Mendez, which had been interrupted by Carl and Cesar Vialpando.
Voiced by MC Eiht.''',
  ),
  Characters(
    image: 'images/charectors/cesar.jpg',
    name: 'Cesar',
    bio:
        '''Cesar Vialpando is the leader of the Varrios Los Aztecas gang and the boyfriend of Kendl Johnson. He lives in El Corona. He later becomes an ally of Carl's, through his relationship with Kendl, and later helps him in his business adventures. He is forced to leave Los Santos, when the Ballas and Los Santos Vagos take over large parts of the city. He introduces Carl to his cousin, Catalina, and later helps Carl re-assert the Grove Street Families dominance in Ganton. He also talks to Carl about proposing to Kendl.
Voiced by Clifton Collins Jr..''',
  ),
  Characters(
    image: 'images/charectors/thetruth.jpg',
    name: 'TheTruth',
    bio:
        '''The Truth is an aging hippie who lives in San Fierro and owns a farm on the outskirts of the city. He becomes a friend of Carl Johnson when Carl steals a combine harvester and sets fire to his farm's illegal crops. The Truth also introduces Carl to Dwaine, Jethro and Zero, later helping Carl become friends with Kent Paul and Maccer. He later has Carl steal a jetpack from Area 69 and a container of an unknown "green goo". He later states his admiration for Carl, who has beaten the system.
Voiced by Peter Fonda.  ''',
  ),
  Characters(
    image: 'images/charectors/frank.jpg',
    name: 'Frank',
    bio:
        '''Frank Tenpenny is the main antagonist of GTA San Andreas. He is a police officer with the Los Santos Police Department and heads up C.R.A.S.H.. He and partner Eddie Pulaski, who are joined by new partner Jimmy Hernandez, are involved in creating trouble for the gangs of Los Santos and in particular for Carl Johnson. Tenpenny frames Carl for the murder of Ralph Pendelbury and later employs him to tackle the Ballas and Los Santos Vagos. Tenpenny later leaves Los Santos and continues to have Carl perform various tasks for him. He later turns on Hernandez and is put on trial. Tenpenny is acquitted, which sparks riots in the city. Tenpenny attempts to escape in a Firetruck but is killed when he drives off a bridge and into Grove Street. His corpse is later mutilated and stripped by the homeless.
Voiced by Samuel L. Jackson.''',
  ),
];
