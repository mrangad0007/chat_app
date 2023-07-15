import 'package:chatapp/models/image_model.dart';
import 'package:chatapp/repo/image_repository.dart';
import 'package:flutter/material.dart';

class NetworkImagePickerBody extends StatelessWidget {
  final Function(String) onImageSelected;

  NetworkImagePickerBody({
    super.key,
    required this.onImageSelected,
  });

  final ImageRepository _imageRepo = ImageRepository();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24)
          )
      ),
      child: FutureBuilder<List<PixelfordImage>>(
          future: _imageRepo.getNetworkImages(),
          builder: (BuildContext context,
              AsyncSnapshot<List<PixelfordImage>> snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        onImageSelected(snapshot.data![index].urlSmallSize);
                      },
                      child: Image.network(snapshot.data![index].urlSmallSize));
                },
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    maxCrossAxisExtent:
                        MediaQuery.of(context).size.width * 0.5),
              );
              // return Image.network(snapshot.data![0].urlSmallSize);
            } else if (snapshot.hasError) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text('This is the error: ${snapshot.error}'),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }),
    );
  }
}
