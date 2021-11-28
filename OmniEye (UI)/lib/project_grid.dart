import 'imports.dart';

class ProjectGrid extends StatefulWidget {
  const ProjectGrid({Key? key}) : super(key: key);

  @override
  _ProjectGridState createState() => _ProjectGridState();
}

class _ProjectGridState extends State<ProjectGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PresetColors.dark,
        appBar: AppBar(
          title: const Text(
            "View Your Data",
            style: TextStyle(
              fontFamily: 'ProximaNova',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    constraints: const BoxConstraints(maxWidth: 800),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: GridView.count(
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        crossAxisCount: 3,
                        children: const <Widget>[
                          ProjectTile(
                              data_name: "Data Set 1", date: "8/7/2021"),
                          ProjectTile(
                              data_name: "Data Set 2", date: "8/6/2021"),
                          ProjectTile(
                              data_name: "Data Set 3", date: "8/4/2021"),
                          ProjectTile(
                              data_name: "Data Set 4", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                          ProjectTile(
                              data_name: "Data Set x", date: "8/5/2021"),
                        ])))));
  }
}

class ProjectTile extends StatelessWidget {
  final String data_name;
  final String date;

  const ProjectTile({required this.data_name, required this.date, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //
        // NEEDS IMPLEMENTATION - option to send data to user computer from phone
        //
      },
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: PresetColors.primary500.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(1, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              color: PresetColors.primary100,
            )),
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(
                'assets/eye_no_glow.png',
              ),
            ),
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                      child: Container(
                          decoration: BoxDecoration(
                            color: PresetColors.primary500.withOpacity(.8),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(2),
                              topLeft: Radius.circular(2),
                            ),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(
                              3,
                            ),
                            child: RichText(
                                text: TextSpan(
                                    text: data_name,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'ProximaNova',
                                        fontWeight: FontWeight.w700))),
                          )))),
                  SizedBox(
                      child: Container(
                          decoration: BoxDecoration(
                            color: PresetColors.primary500.withOpacity(.8),
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(2),
                              bottomLeft: Radius.circular(2),
                            ),
                          ),
                          child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.check_box_rounded,
                                  color: Colors.greenAccent,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 5, 5),
                                  child: RichText(
                                      text: TextSpan(
                                          text: date,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'ProximaNova',
                                              fontSize: 15))),
                                )
                              ])))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
