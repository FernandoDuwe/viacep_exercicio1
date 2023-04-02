import 'package:flutter/material.dart';
import 'package:viacep_exercicio1/models/ViaCepModel.dart';
import 'package:viacep_exercicio1/repositories/ViaCepRepository.dart';

typedef ViaCepDetailsOnLoading = Widget Function();
typedef ViaCepDetailsOnError = Widget Function(String prErrorMessage);
typedef ViaCepDetailsOnSuccess = Widget Function(ViaCepModel prCEP);

class ViaCepDetails extends StatelessWidget {
  final String cep;
  final ViaCepDetailsOnError? onError;
  final ViaCepDetailsOnLoading? onLoading;
  final ViaCepDetailsOnSuccess onSuccess;

  const ViaCepDetails({required this.cep, required this.onSuccess, this.onLoading, this.onError, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ViaCepRepository.getFromCEP(this.cep),
        builder: (context, snapshot) {
          if ((snapshot.hasError) && (this.onError != null))
            return this.onError!(snapshot.error.toString());

          if ((!snapshot.hasData) && (this.onLoading != null))
            return this.onLoading!();

          if ((snapshot.hasData) && (this.onSuccess != null))
            return this.onSuccess(snapshot.data!);

          return Container();
        });
  }
}
