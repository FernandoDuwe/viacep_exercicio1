class ViaCepModel {
  String cep = "";
  String logradouro = "";
  String complemento = "";
  String bairro = "";
  String localidade = "";
  String uf = "";
  String ibge = "";
  String gia = "";
  String ddd = "";
  String siafi = "";

  ViaCepModel.fromJSON(Map<String, dynamic> prJSON) {
    this.cep = prJSON["cep"];
    this.logradouro = prJSON["logradouro"];
    this.complemento = prJSON["complemento"];
    this.bairro = prJSON["bairro"];
    this.localidade = prJSON["localidade"];
    this.uf = prJSON["uf"];
    this.ibge = prJSON["ibge"];
    this.gia = prJSON["gia"];
    this.ddd = prJSON["ddd"];
    this.siafi = prJSON["siafi"];
  }

  @override
  String toString() {
    return "Dados do cep ${this.cep}: ${this.uf} - ${this.localidade} - ${this.bairro} - ${this.logradouro}";
  }
}