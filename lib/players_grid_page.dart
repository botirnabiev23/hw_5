import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hw_5/player.dart';

class PlayersGridPage extends StatefulWidget {
  const PlayersGridPage({super.key});

  @override
  State<PlayersGridPage> createState() => _PlayersGridPageState();
}

class _PlayersGridPageState extends State<PlayersGridPage> {
  List<Player> players = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; i++) {
      players.add(
        const Player(
          name: 'Cristiano Ronaldo',
          number: 7,
          position: 'LW',
          photo:
              'https://phantom-marca.unidadeditorial.es/f44f8eaebcbdef265bad672de04515c4/resize/828/f/jpg/assets/multimedia/imagenes/2022/07/30/16591778851898.jpg',
          value: '30 millons',
        ),
      );
      players.add(
        const Player(
          name: 'Leonel Messi',
          number: 10,
          position: 'RW',
          photo:
              'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
          value: '40 millons',
        ),
      );
      players.add(
        const Player(
          name: 'Neymar JR',
          number: 10,
          position: 'LW',
          photo:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/20180610_FIFA_Friendly_Match_Austria_vs._Brazil_Neymar_850_1705.jpg/1200px-20180610_FIFA_Friendly_Match_Austria_vs._Brazil_Neymar_850_1705.jpg',
          value: '80 millions',
        ),
      );
      players.add(
        const Player(
          name: 'Kylian Mbappe',
          number: 10,
          position: 'ST',
          photo:
              'https://imageio.forbes.com/specials-images/imageserve/626c7cf3616c1112ae834a2b/0x0.jpg?format=jpg&crop=1603,1603,x1533,y577,safe&height=416&width=416&fit=bounds',
          value: '180 millions',
        ),
      );
      players.add(
        const Player(
          name: 'Erling Haaland',
          number: 9,
          position: 'ST',
          photo:
              'https://i.guim.co.uk/img/media/795ff9fc82d52b955c492afc63b9e25936be892f/0_1548_5689_3413/master/5689.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=a8e30628ddd6e40195a2eda87a7c5c51',
          value: '180 millions',
        ),
      );
      players.add(
        const Player(
          name: 'Vini JR',
          number: 7,
          position: 'LW',
          photo:
              'https://media.cnn.com/api/v1/images/stellar/prod/230127044023-01-vini-jr-copa-del-rey-012623-restricted.jpg?c=16x9&q=w_800,c_fill',
          value: '150 millons',
        ),
      );
      players.add(
        const Player(
          name: 'Cole Palmer',
          number: 20,
          position: 'RW',
          photo:
              'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt1948385e6a9322dd/656c88f142f5a7040a9857e4/GOAL_-_Blank_WEB_-_Facebook_-_2023-12-03T135539.911.png?auto=webp&format=pjpg&width=3840&quality=60',
          value: '80 millions',
        ),
      );
      players.add(
        const Player(
          name: 'Jude Bellingem',
          number: 5,
          position: 'CM',
          photo:
              'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt9ce6e8b3ef7b8942/6567a782ddb83b040a6c888d/Jude_Bellingham.jpg?auto=webp&format=pjpg&width=3840&quality=60',
          value: '150 millions',
        ),
      );
      players.add(
        const Player(
          name: 'Mohamed Salah',
          number: 11,
          position: 'RW',
          photo:
              'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt987ef1df696b4612/652e8774d2551ff25e7a68ad/GOAL_-_Blank_WEB_-_Facebook.jpg?auto=webp&format=pjpg&width=3840&quality=60',
          value: '100 millions',
        ),
      );
      players.add(
        const Player(
          name: 'Kevin De Bruyne',
          number: 17,
          position: 'CAM',
          photo: 'https://pbs.twimg.com/media/FxuS0bmXgAEHlxC.jpg',
          value: '100 millions',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final imageWidth = width / 3;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Players Gallery'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        children: [
          for (int i = 0; i < players.length; i++)
            GridTile(
              header: Text(
                players[i].name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.green,
                ),
              ),
              footer: Text(
                players[i].value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.green,
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: players[i].photo,
                fit: BoxFit.cover,
                width: imageWidth,
                height: imageWidth,
              ),
            ),
        ],
      ),
    );
  }
}
