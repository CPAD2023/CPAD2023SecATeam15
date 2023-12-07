
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:ai_image_generator/Utils/utils.dart';
import 'package:ai_image_generator/constants/constants.dart';
import 'package:ai_image_generator/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';



class HomeScreenController extends GetxController{
  
  RxBool promptFocused = false.obs;
  RxBool loading =false.obs;
  RxBool isValidPrompt =false.obs;
  final prompt=TextEditingController().obs;
  final style=TextEditingController().obs;
  



  void setLoading(bool value){
    loading.value=value;
  }
  
   Future<void> downloadImage(BuildContext context,imageUrl) async {
    if (imageUrl.isNotEmpty) {
      try {
        // Fetch the image data
        
        Uint8List bytes = base64.decode(imageUrl.substring(22));
        String filePath;
       
 
        final directory = await getApplicationDocumentsDirectory();
        //Directory filePath = Directory('/storage/emulated/0/Download');
                    filePath  = '/storage/emulated/0/Download/downloaded.png';
        // filePath = '${directory?.path}/downloaded_image.png';
//     if (Platform.isAndroid) {
//      //final extStorageDir = await getExternalStorageDirectory();
//      //return extStorageDir?.path ?? documentsDir.path;
//       filePath = '/storage/emulated/0/Download/downloaded.png';
//   }else{
//         // Get the directory for storing files
//         final directory = await getApplicationDocumentsDirectory();
//         print(directory);
//       
// print(filePath);};
        // Write the image data to a file
        await File(filePath).writeAsBytes(bytes);

        // Show a message that the download is complete
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
         const  SnackBar(
            content: Text('Image downloaded successfully'),
          ),
        );
      } catch (e) {
        print('Error downloading image: $e');
      }
    } else {
      print('Image URL is empty.');
    }
  }


  void onFocusPrompt(){
    promptFocused.value=true;
  }
 
  void onTapOutside(BuildContext context){
     promptFocused.value=false;
    FocusScope.of(context).unfocus();
  }
    void navigateToSettings(){
    Get.toNamed(Routes.homePage);
  }
  void generateRandomText(BuildContext context){
   int randomIndex = Random().nextInt(99);
   prompt.value.text= imagePrompts[randomIndex];
   

  }
  void validatePromptandCall(String value){
 
    if (value.trim().length>=3){
      isValidPrompt = true.obs;
  }else{
    Utils.showSnackBar('Warning'," Prompt length should greater than 3 " , const Icon(FontAwesomeIcons.triangleExclamation,color: Colors.pink,));
  }}

 }
