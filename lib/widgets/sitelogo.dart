

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, required void Function()? onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){}, child: const Text("NB"));
  }
}
