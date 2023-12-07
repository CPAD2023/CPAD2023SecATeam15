import 'package:ai_image_generator/views/screens/home/components/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageOptions extends StatelessWidget {
  final VoidCallback onDownloadTap;
 final VoidCallback onRandomTap;


const ImageOptions({ Key? key ,required this.onDownloadTap,required this.onRandomTap}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => onRandomTap(),
          child: const IconContainer(
              widget: Icon(
              FontAwesomeIcons.dice,
                size: 18,
                color: Colors.white,
              )),
        ),
         GestureDetector(
          onTap: () => onDownloadTap(),
          child:const IconContainer(
            widget: Icon(
              Icons.file_download,
              color: Colors.white,
            )),
     ) ],
    );
    
  }

}
