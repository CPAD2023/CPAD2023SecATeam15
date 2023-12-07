import 'dart:convert';
import 'package:flutter/material.dart';

class ImageBox extends StatefulWidget {
  final String imageUrl;
  final bool loading;
  
   const ImageBox({super.key,required this.imageUrl,required this.loading});
   
 

  @override
  State<ImageBox> createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> {

  
  @override
  Widget build(BuildContext context) {
    
    return Center(child: Container(
      
          height: 310,
          width: 310,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 255, 56, 169)),),
          child: widget.loading
              ? const SizedBox(
                  height: 15,
                  width: 15,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Material(
            color: Colors.transparent,
                child: widget.imageUrl.isNotEmpty
                    ?  Image.memory(
                        base64Decode(widget.imageUrl.split(',').last),
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      ): const Text("Image will be displayed here",style: TextStyle(color: Colors.white60), )
              ),
        ));
  }
}

