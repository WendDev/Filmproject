import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_folmpr/Theme/Image_base.dart';

class Movie {
  final String imageName;
  final String title;
  final String time;
  final String discription;

  Movie(
      {required this.imageName,
      required this.title,
      required this.time,
      required this.discription});
}

class Move_ListWidget extends StatefulWidget {
  Move_ListWidget({super.key});

  @override
  State<Move_ListWidget> createState() => _Move_ListWidgetState();
}

class _Move_ListWidgetState extends State<Move_ListWidget> {
  final _movies = [
    Movie(
        imageName: AppImages.Drive_img,
        title: 'Drive',
        time: 'April 1,2021',
        discription:
            'A great driver – in the light of day he performs stunt stunts on Hollywood film sets'),
    Movie(
        imageName: AppImages.Drive_img,
        title: 'Holop',
        time: 'April 1,2021',
        discription:
            'A great driver – in the light of day he performs stunt stunts on Hollywood film sets'),
    Movie(
        imageName: AppImages.Drive_img,
        title: 'Hero',
        time: 'April 1,2021',
        discription:
            'A great driver – in the light of day he performs stunt stunts on Hollywood film sets'),
    Movie(
        imageName: AppImages.Drive_img,
        title: 'Marvell',
        time: 'April 1,2021',
        discription:
            'A great driver – in the light of day he performs stunt stunts on Hollywood film sets'),
    Movie(
        imageName: AppImages.Drive_img,
        title: 'Spiderman',
        time: 'April 1,2021',
        discription:
            'A great driver – in the light of day he performs stunt stunts on Hollywood film sets'),
    Movie(
        imageName: AppImages.Drive_img,
        title: 'One at home',
        time: 'April 1,2021',
        discription:
            'A great driver – in the light of day he performs stunt stunts on Hollywood film sets'),
    Movie(
        imageName: AppImages.Drive_img,
        title: 'Barat',
        time: 'April 1,2021',
        discription:
            'A great driver – in the light of day he performs stunt stunts on Hollywood film sets'),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.only(top: 75),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: _movies.length,
            itemExtent: 160,
            itemBuilder: (BuildContext context, int index) {
              final movie = _movies[index];
              return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.3),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 2),
                              blurRadius: 8,
                            )
                          ],
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Row(
                          children: [
                            Image(image: AssetImage(movie.imageName)),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  movie.title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  movie.time,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  movie.discription,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () => print('s'),
                        ),
                      ),
                    ],
                  ));
            }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              border:
                  const OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              label: const Text('Search'),
            ),
          ),
        )
      ],
    );
  }
}
