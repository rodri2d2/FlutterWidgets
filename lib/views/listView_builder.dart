import 'package:flutter/material.dart';
import 'package:flutter_widgets/resourses/app_theme.dart';

class ListViewBuilderView extends StatefulWidget {
  const ListViewBuilderView({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderView> createState() => _ListViewBuilderViewState();
}

class _ListViewBuilderViewState extends State<ListViewBuilderView> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController controller = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      print(controller.position.pixels);
      print(controller.position.maxScrollExtent);

      if ((controller.position.pixels + 500) >=
          controller.position.maxScrollExtent) {
        // add10();
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                  controller: controller,
                  itemCount: imagesIds.length,
                  itemBuilder: ((context, index) {
                    return FadeInImage(
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                        placeholder: const AssetImage('assets/jar-loading.gif'),
                        image: NetworkImage(
                            'https://picsum.photos/500/300?image=${imagesIds[index] + 1}'));
                  })),
            ),
            if (isLoading)
              Positioned(
                bottom: 40,
                left: size.width * 0.5 - 25,
                child: _LoadingItem(),
              )
          ],
        ),
      ),
    );
  }

  void add10() {
    final lastId = imagesIds.last;
    imagesIds.addAll(Iterable.generate(10).map((e) => (lastId + e).toInt()));
    setState(() {});
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    add10();
    isLoading = false;
    setState(() {});
    controller.animateTo(
      controller.position.pixels + 120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add10();
  }
}

class _LoadingItem extends StatelessWidget {
  const _LoadingItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator.adaptive(),
    );
  }
}
