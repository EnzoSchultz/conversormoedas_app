import 'package:conversormoedas_app/modal.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaInicial(),
  ));
}

// Tela Inicial
class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CONVERSOR DE MOEDAS',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Icon(Icons.compare_arrows, color: Colors.amber, size: 100),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConversorMoedas()),
                  );
                },
                child: Text(
                  'Converter',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Tela de Conversão
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
      if (response.statusCode == 200) {
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

    if (_moedaOrigem == null || _moedaDestino == null) {
      setState(() {
        _resultado = 'Selecione as moedas de origem e destino.';
      });
      return;
    }

    final valor = double.parse(texto);
    final taxaOrigem = _moedas[_moedaOrigem];
    final taxaDestino = _moedas[_moedaDestino];

    if (taxaOrigem == null || taxaDestino == null) {
      setState(() {
        _resultado = 'Conversão não suportada.';
      });
      return;
    }

    final taxaRelativa = taxaDestino / taxaOrigem;
    final convertido = valor * taxaRelativa;

    final formatado = NumberFormat.simpleCurrency(
      locale: 'pt_BR',
      name: _moedaDestino,
    ).format(convertido);

    setState(() {
      _resultado = formatado;
    });
  }

  Widget _buildDropdown(bool isOrigem) {
    return DropdownButtonFormField<dynamic>(
      dropdownColor: Colors.grey[900],
      value: isOrigem ? _moedaOrigem : _moedaDestino,
      items: _moedas.entries.map((entry) {
        return DropdownMenuItem<dynamic>(
          value: entry.key,
          child: Text(
            '${entry.key} - ${entry.value.toStringAsFixed(2)}',
            style: TextStyle(color: Colors.white),
          ),
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
        labelStyle: TextStyle(color: Colors.amber),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber, width: 2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('CONVERSOR DE MOEDAS', style: TextStyle(color: Colors.amber)),
        iconTheme: IconThemeData(color: Colors.amber),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _moedas.isEmpty
            ? Center(child: CircularProgressIndicator(color: Colors.amber))
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Valor',
                    style: TextStyle(color: Colors.amber, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _controller,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[900],
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildDropdown(true),
                  SizedBox(height: 16),
                  _buildDropdown(false),
                  SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                    onPressed: _converterMoeda,
                    child: Text('Converter', style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      _resultado,
                      style: TextStyle(color: Colors.white, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
