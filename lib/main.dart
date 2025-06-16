import 'package:conversormoedas_app/modal.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ConversorMoedas(),
  ));
}

class ConversorMoedas extends StatefulWidget {
  const ConversorMoedas({super.key});

  @override
  State<ConversorMoedas> createState() => _ConversorMoedasState();
}

class _ConversorMoedasState extends State<ConversorMoedas> {
  final TextEditingController _controller = TextEditingController();
  String _resultado = '';
  Map<String, dynamic> _moedas = {};
  String? _moedaOrigem;
  String? _moedaDestino;

  @override
  void initState() {
    super.initState();
    _carregarMoedas();
  }

  Future<void> _carregarMoedas() async {
    try {
      final dio = Dio();

      final response = await dio.get('https://api.exchangerate.host/live?access_key=e53a2b212c0a71e05cd03d9a5b5edb3f');
      if(response.statusCode == 200){
        print(response.data);
        ValoresMoedas? valoresmoedas = ValoresMoedas.fromJson(response.data);

        setState(() {
          _moedas = valoresmoedas.quotes!.toJson();
        });
      }
      
    } catch (e) {
      print('Erro ao buscar moedas: $e');
    }
  }

  Future<void> _converterMoeda() async {
    final texto = _controller.text;

    if (texto.isEmpty || double.tryParse(texto) == null) {
      setState(() {
        _resultado = 'Digite um valor válido.';
      });
      return;
    }

    final valor = double.parse(texto);

    final chave = '$_moedaOrigem-$_moedaDestino';
    final taxa = _moedas[chave];

    if (taxa == null) {
      setState(() {
        _resultado = 'Conversão não suportada.';
      });
      return;
    }

    final convertido = valor * taxa;
    final formatado = NumberFormat.simpleCurrency(
      locale: 'pt_BR',
      name: _moedaDestino,
    ).format(convertido);

    setState(() {
      _resultado = '$valor $_moedaOrigem = $formatado';
    });
  }


  Widget _buildDropdown(bool isOrigem) {
    return DropdownButtonFormField<String>(
      value: isOrigem ? _moedaOrigem : _moedaDestino,
      items: _moedas.entries.map((entry) {
        return DropdownMenuItem<String>(
          value: entry.key,
          child: Text('${entry.key} - ${entry.value}'),
        );
      }).toList(),
      onChanged: (valor) {
        setState(() {
          if (isOrigem) {
            _moedaOrigem = valor;
          } else {
            _moedaDestino = valor;
          }
        });
      },
      decoration: InputDecoration(
        labelText: isOrigem ? 'De' : 'Para',
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Conversor de Moedas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _moedas.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  TextField(
                    controller: _controller,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      labelText: 'Valor a converter',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: _buildDropdown(true)),
                      SizedBox(width: 10),
                      Icon(Icons.compare_arrows),
                      SizedBox(width: 10),
                      Expanded(child: _buildDropdown(false)),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _converterMoeda,
                    child: Text('Converter'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    _resultado,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
      ),
    );
  }
}