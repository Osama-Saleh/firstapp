import 'package:firstapp/featurs/product/repo/prodcut_repo.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder(
        future: ProdcutRepo.getProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return snapshot.data?.length == 0
                ? Center(
                    child: Text('not have data'),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12)),
                        margin: EdgeInsets.all(12),
                        child: ListTile(
                          leading: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.network(
                              snapshot.data![index].image ??
                                  'https://blog.logrocket.com/wp-content/uploads/2022/08/add-listtile-flutter.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text(snapshot.data![index].title ?? ""),
                          subtitle: Text(
                            snapshot.data![index].description ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  snapshot.data![index].price.toString()),
                              Text(
                                  snapshot.data![index].rating!.rate.toString())
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 4,
                        ),
                    itemCount: snapshot.data!.length);
          }
          return Center(
            child: Text("can't fetch data"),
          );
        },
      )),
    );
  }
}
