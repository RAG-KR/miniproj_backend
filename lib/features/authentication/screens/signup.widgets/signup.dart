import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/app.dart';
import 'package:t_store/common/widgets.login_signup/form_divider.dart';
import 'package:t_store/common/widgets.login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/signup.widgets/verify_email.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(value: true, onChanged: (value) {}),
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: '${TTexts.iAgreeTo} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: TTexts.privacyPolicy,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                  color: dark ? TColors.white : TColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      dark ? TColors.white : TColors.primary,
                                )),
                        TextSpan(
                            text: '${TTexts.and} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: TTexts.termsOfUse,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                  color: dark ? TColors.white : TColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      dark ? TColors.white : TColors.primary,
                                ))
                      ]))
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const VerifyEmailScreen()),
                      child: const Text(TTexts.createAccount),
                    ),
                  )
                ],
              )),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
