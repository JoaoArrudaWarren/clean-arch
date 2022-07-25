import 'dart:ui';

import '../../data_or_infra/datasources/local/get_computer_bybrand_local_datasource.dart';
import '../../data_or_infra/repositories/get_computer_bybrand_repository_imp.dart';
import '../../domain/usecases/get_computer_bybrand/get_computer_bybrand_usecase_imp.dart';
import '../controllers/brand_controller.dart';
import 'package:flutter/material.dart';

class BrandPage extends StatefulWidget {
  const BrandPage({Key? key}) : super(key: key);

  @override
  State<BrandPage> createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
  BrandController brandController = BrandController(
    GetComputerByBrandUsecaseImp(
      GetComputerBybrandRepositoryImp(
        GetComputerBybrandLocalDatasource(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.grey,
            child: Text(
              brandController.brand.model,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
