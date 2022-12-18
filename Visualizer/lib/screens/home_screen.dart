import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visualizer/providers/category_provider.dart';

class HomePage extends StatefulWidget {
  static String id = "HomePage";

  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController itemSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      onVerticalDragEnd: (DragEndDetails details) =>
          FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 30, 10, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'VISUALIZERS',
                        style: TextStyle(
                          fontSize: 45,
                          fontFamily: "Lobster",
                          color: Color(0xFFA9936A),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: Color(0xffcc7677),
                        size: 45,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffcc7677),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: TextField(
                    controller: itemSearch,
                    decoration: const InputDecoration(
                        hintText: "SEARCH",
                        hintStyle: TextStyle(
                          color: Color(0xffeeedeb),
                          fontFamily: "Poppins",
                          fontSize: 20,
                        ),
                        icon: Icon(
                          Icons.search,
                          color: Color(0xffeeedeb),
                        ),
                        border: InputBorder.none),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                  child: Text(
                    'CATEGORIES',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      color: Color(0xFFA9936A),
                    ),
                  ),
                ),
                Expanded(
                  child: Consumer<CategoryProvider>(
                    builder: (context, provider, child) {
                      return ListView.builder(
                          itemCount: provider.getAvailableCategories().length,
                          itemBuilder: (BuildContext context, int index) {
                            return categoryCard(provider, index);
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container categoryCard(CategoryProvider provider, int index) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff967a76),
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        // onTap: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ProductsScreen(category: provider.availableCategories[index].categoryImage),
        //   ),
        // ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  provider.availableCategories[index].categoryImage,
                  scale: 3,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  provider.availableCategories[index].categoryName
                      .toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    letterSpacing: 1.5,
                    color: Color(0xffeeedeb),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
