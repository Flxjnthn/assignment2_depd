part of 'pages.dart';

class week3page extends StatefulWidget {
  const week3page({super.key});

  @override
  State<week3page> createState() => _week3Statepage();
}

class _week3Statepage extends State<week3page> {
  IconData icon = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment 2"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
              flex: 8,
              child: ClipRRect(
                child:
                    Image.asset('assets/images/gambar1.jpg', fit: BoxFit.cover),
              ),
            ),
            Flexible(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 115,
                    height: 115,
                    // clipBehavior: Clip.hardEdge,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10)
                    // ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: Image.asset('assets/images/Gambar3.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: 115,
                      height: 115,
                      // clipBehavior: Clip.hardEdge,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10)
                      // ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Image.asset('assets/images/Gambar4.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: 115,
                      height: 115,
                      // clipBehavior: Clip.hardEdge,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10)
                      // ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Image.asset('assets/images/Gambar5.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: 115,
                      height: 115,
                      // clipBehavior: Clip.hardEdge,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10)
                      // ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Image.asset('assets/images/Gambar6.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(),
                  child: new Text("Golden Tulip Batu",
                      style: TextStyle(
                        fontSize: 25,
                      )),
                )),
            Flexible(
                flex: 10,
                child: SingleChildScrollView(
                    // color: Colors.white,
                    scrollDirection: Axis.vertical,
                    child: new Text(
                        "Lorem ipsum ed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
                        style: TextStyle(
                          fontSize: 14,
                        )))),
            SizedBox(height: 32),
            ElevatedButton(onPressed: () {}, child: Text("Book Now"))
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              icon = icon == Icons.favorite
                  ? Icons.favorite_border
                  : Icons.favorite;
            });
          },
          tooltip: 'Favorite',
          backgroundColor: Colors.white,
          foregroundColor: Colors.red,
          child: Icon(icon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
