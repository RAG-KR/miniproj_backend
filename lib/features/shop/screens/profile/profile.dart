import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/profile/widgets/profile_menu.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/circular_images.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar (showBackArrow: true, title: Text('Profile')),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all (TSizes.defaultSpace),
          child: Column(
            children: [

              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage (image: TImages.user, width: 80,
                        height: 80),
                    TextButton(onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ), // Column
              ), // SizedBox

              /// Details
              const SizedBox (height: TSizes.spaceBtwItems / 2),
              const Divider (),
              const SizedBox (height: TSizes.spaceBtwItems),
              const TSectionHeading (
                  title: 'Profile Information', showActionButton: false),
              const SizedBox (height: TSizes.spaceBtwItems),
              TProfileMenu(title:'Name',value:'Darshan',onPressed : (){}),
              TProfileMenu(title:'Username',value:'Darshan',onPressed : (){}),

              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              const TSectionHeading(title: 'Personal Information',showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(onPressed: (){}, title: 'User Id', value: '45689',icon: Iconsax.copy,),
              TProfileMenu(onPressed: (){}, title: 'Email', value: 'darshan@gmail.com'),
              TProfileMenu(onPressed: (){}, title: 'Phone Number', value: '6362116320'),
              TProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              TProfileMenu(onPressed: (){}, title: 'DOB', value: '14-06-2004'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account',style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

