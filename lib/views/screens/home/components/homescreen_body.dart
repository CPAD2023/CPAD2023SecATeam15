import 'dart:convert';

import 'package:ai_image_generator/Utils/utils.dart';
import 'package:ai_image_generator/constants/constants.dart';
import 'package:ai_image_generator/controllers/home_screen_controller.dart';
import 'package:ai_image_generator/views/screens/home/components/homescreen_bar.dart';
import 'package:ai_image_generator/views/screens/home/components/image_box.dart';
import 'package:ai_image_generator/views/screens/home/components/image_options.dart';
import 'package:ai_image_generator/views/screens/home/components/prompt_textbox.dart';
import 'package:ai_image_generator/views/screens/sign_up/components/button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memoize/memoize.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({ Key? key }) : super(key: key);

  @override
  _HomeScreenBodyState createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
   String _imageUrl = '';
  bool _isLoading = false;

   final controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Padding(
        padding:const  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const HomeScreenBar(),
            const SizedBox(
              height: 50,
            ),
           ImageBox(imageUrl: _imageUrl, loading: false),
            PromptForm(),
            
            AccountButton(
                text: "Generate ",
                loading: _isLoading,
                onTap: () {
                   _isLoading=true;
                  fetchData(controller.prompt.value.text.toString());
                 
                },
              ),
              const SizedBox(
                height: 10,
              ),
               ImageOptions(
                onDownloadTap: (){
                  controller.downloadImage(context,_imageUrl);
                  print("Downloading....");},
                onRandomTap: (){
                  controller.generateRandomText(context);
                  print("Random");

                },
              ),
          ],
        ),
      ),
    );
  }
    final Future memoizedFetchUserData = memo1((prompt) => fetchData(prompt));
    Future<String> fetchData(String prompt) async {
      setState(() {
        _isLoading = true;
      });
 
    try {
     
      final request = http.MultipartRequest('POST', Uri.parse(apiUrl));
      request.headers['x-api-key'] = apiKey;
      request.fields['prompt'] = prompt;
      final response = await request.send();

      if (response.statusCode == 200) {
      
        List<int> imageBytes = await response.stream.toBytes();
        final String base64Image = base64Encode(imageBytes);
        

        // Update the state to trigger a rebuild with the new image and set loading to false
          setState(() {
          _imageUrl = 'data:image/png;base64,$base64Image';
          _isLoading = false;
        
        
        });
        return base64Image;
          
      } else {
        // Handle error cases and set loading to false
      
        setState(() {
          _isLoading = false;
        });
       Utils.showSnackBar('Warning'," ${response.statusCode} " , const Icon(FontAwesomeIcons.triangleExclamation,color: Colors.pink,));
      }
    } catch (e) {
      // Handle network or decoding errors and set loading to false
   
      setState(() {
          _isLoading = false;
        });
     Utils.showSnackBar('Warning',"Error occured while trying to fetch..." , const Icon(FontAwesomeIcons.triangleExclamation,color: Colors.pink,));
    }
    return "none";
  }
}


