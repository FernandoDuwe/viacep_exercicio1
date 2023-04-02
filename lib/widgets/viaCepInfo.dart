import 'package:flutter/material.dart';
import 'package:viacep_exercicio1/models/ViaCepModel.dart';

class ViaCepInfo extends StatelessWidget {
  final ViaCepModel cepModel;

  const ViaCepInfo({required this.cepModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.cepModel.cep),
        Text(this.cepModel.localidade),
        Text(this.cepModel.logradouro),
        Text(this.cepModel.bairro),
        Text(this.cepModel.uf),
        Text(this.cepModel.siafi),
        Text(this.cepModel.ibge),
        Text(this.cepModel.complemento),
      ],
    );
  }
}
