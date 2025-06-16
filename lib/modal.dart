class ValoresMoedas {
  bool? success;
  String? terms;
  String? privacy;
  int? timestamp;
  String? source;
  Quotes? quotes;

  ValoresMoedas(
      {this.success,
      this.terms,
      this.privacy,
      this.timestamp,
      this.source,
      this.quotes});

  ValoresMoedas.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    terms = json['terms'];
    privacy = json['privacy'];
    timestamp = json['timestamp'];
    source = json['source'];
    quotes =
        json['quotes'] != null ? new Quotes.fromJson(json['quotes']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['terms'] = this.terms;
    data['privacy'] = this.privacy;
    data['timestamp'] = this.timestamp;
    data['source'] = this.source;
    if (this.quotes != null) {
      data['quotes'] = this.quotes!.toJson();
    }
    return data;
  }
}

class Quotes {
  double? uSDAED;
  double? uSDAFN;
  double? uSDALL;
  double? uSDAMD;
  double? uSDANG;
  double? uSDAOA;
  double? uSDARS;
  double? uSDAUD;
  double? uSDAWG;
  double? uSDAZN;
  double? uSDBAM;
  double? uSDBBD;
  double? uSDBDT;
  double? uSDBGN;
  double? uSDBHD;
  double? uSDBIF;
  double? uSDBMD;
  double? uSDBND;
  double? uSDBOB;
  double? uSDBRL;
  double? uSDBSD;
  double? uSDBTC;
  double? uSDBTN;
  double? uSDBWP;
  double? uSDBYN;
  double? uSDBYR;
  double? uSDBZD;
  double? uSDCAD;
  double? uSDCDF;
  double? uSDCHF;
  double? uSDCLF;
  double? uSDCLP;
  double? uSDCNY;
  double? uSDCNH;
  double? uSDCOP;
  double? uSDCRC;
  double? uSDCUC;
  double? uSDCUP;
  double? uSDCVE;
  double? uSDCZK;
  double? uSDDJF;
  double? uSDDKK;
  double? uSDDOP;
  double? uSDDZD;
  double? uSDEGP;
  double? uSDERN;
  double? uSDETB;
  double? uSDEUR;
  double? uSDFJD;
  double? uSDFKP;
  double? uSDGBP;
  double? uSDGEL;
  double? uSDGGP;
  double? uSDGHS;
  double? uSDGIP;
  double? uSDGMD;
  double? uSDGNF;
  double? uSDGTQ;
  double? uSDGYD;
  double? uSDHKD;
  double? uSDHNL;
  double? uSDHRK;
  double? uSDHTG;
  double? uSDHUF;
  double? uSDIDR;
  double? uSDILS;
  double? uSDIMP;
  double? uSDINR;
  double? uSDIQD;
  double? uSDIRR;
  double? uSDISK;
  double? uSDJEP;
  double? uSDJMD;
  double? uSDJOD;
  double? uSDJPY;
  double? uSDKES;
  double? uSDKGS;
  double? uSDKHR;
  double? uSDKMF;
  double? uSDKPW;
  double? uSDKRW;
  double? uSDKWD;
  double? uSDKYD;
  double? uSDKZT;
  double? uSDLAK;
  double? uSDLBP;
  double? uSDLKR;
  double? uSDLRD;
  double? uSDLSL;
  double? uSDLTL;
  double? uSDLVL;
  double? uSDLYD;
  double? uSDMAD;
  double? uSDMDL;
  double? uSDMGA;
  double? uSDMKD;
  double? uSDMMK;
  double? uSDMNT;
  double? uSDMOP;
  double? uSDMRU;
  double? uSDMUR;
  double? uSDMVR;
  double? uSDMWK;
  double? uSDMXN;
  double? uSDMYR;
  double? uSDMZN;
  double? uSDNAD;
  double? uSDNGN;
  double? uSDNIO;
  double? uSDNOK;
  double? uSDNPR;
  double? uSDNZD;
  double? uSDOMR;
  double? uSDPAB;
  double? uSDPEN;
  double? uSDPGK;
  double? uSDPHP;
  double? uSDPKR;
  double? uSDPLN;
  double? uSDPYG;
  double? uSDQAR;
  double? uSDRON;
  double? uSDRSD;
  double? uSDRUB;
  double? uSDRWF;
  double? uSDSAR;
  double? uSDSBD;
  double? uSDSCR;
  double? uSDSDG;
  double? uSDSEK;
  double? uSDSGD;
  double? uSDSHP;
  double? uSDSLE;
  double? uSDSLL;
  double? uSDSOS;
  double? uSDSRD;
  double? uSDSTD;
  double? uSDSVC;
  double? uSDSYP;
  double? uSDSZL;
  double? uSDTHB;
  double? uSDTJS;
  double? uSDTMT;
  double? uSDTND;
  double? uSDTOP;
  double? uSDTRY;
  double? uSDTTD;
  double? uSDTWD;
  double? uSDTZS;
  double? uSDUAH;
  double? uSDUGX;
  double? uSDUYU;
  double? uSDUZS;
  double? uSDVES;
  double? uSDVND;
  double? uSDVUV;
  double? uSDWST;
  double? uSDXAF;
  double? uSDXAG;
  double? uSDXAU;
  double? uSDXCD;
  double? uSDXDR;
  double? uSDXOF;
  double? uSDXPF;
  double? uSDYER;
  double? uSDZAR;
  double? uSDZMK;
  double? uSDZMW;
  double? uSDZWL;

  Quotes(
      {this.uSDAED,
      this.uSDAFN,
      this.uSDALL,
      this.uSDAMD,
      this.uSDANG,
      this.uSDAOA,
      this.uSDARS,
      this.uSDAUD,
      this.uSDAWG,
      this.uSDAZN,
      this.uSDBAM,
      this.uSDBBD,
      this.uSDBDT,
      this.uSDBGN,
      this.uSDBHD,
      this.uSDBIF,
      this.uSDBMD,
      this.uSDBND,
      this.uSDBOB,
      this.uSDBRL,
      this.uSDBSD,
      this.uSDBTC,
      this.uSDBTN,
      this.uSDBWP,
      this.uSDBYN,
      this.uSDBYR,
      this.uSDBZD,
      this.uSDCAD,
      this.uSDCDF,
      this.uSDCHF,
      this.uSDCLF,
      this.uSDCLP,
      this.uSDCNY,
      this.uSDCNH,
      this.uSDCOP,
      this.uSDCRC,
      this.uSDCUC,
      this.uSDCUP,
      this.uSDCVE,
      this.uSDCZK,
      this.uSDDJF,
      this.uSDDKK,
      this.uSDDOP,
      this.uSDDZD,
      this.uSDEGP,
      this.uSDERN,
      this.uSDETB,
      this.uSDEUR,
      this.uSDFJD,
      this.uSDFKP,
      this.uSDGBP,
      this.uSDGEL,
      this.uSDGGP,
      this.uSDGHS,
      this.uSDGIP,
      this.uSDGMD,
      this.uSDGNF,
      this.uSDGTQ,
      this.uSDGYD,
      this.uSDHKD,
      this.uSDHNL,
      this.uSDHRK,
      this.uSDHTG,
      this.uSDHUF,
      this.uSDIDR,
      this.uSDILS,
      this.uSDIMP,
      this.uSDINR,
      this.uSDIQD,
      this.uSDIRR,
      this.uSDISK,
      this.uSDJEP,
      this.uSDJMD,
      this.uSDJOD,
      this.uSDJPY,
      this.uSDKES,
      this.uSDKGS,
      this.uSDKHR,
      this.uSDKMF,
      this.uSDKPW,
      this.uSDKRW,
      this.uSDKWD,
      this.uSDKYD,
      this.uSDKZT,
      this.uSDLAK,
      this.uSDLBP,
      this.uSDLKR,
      this.uSDLRD,
      this.uSDLSL,
      this.uSDLTL,
      this.uSDLVL,
      this.uSDLYD,
      this.uSDMAD,
      this.uSDMDL,
      this.uSDMGA,
      this.uSDMKD,
      this.uSDMMK,
      this.uSDMNT,
      this.uSDMOP,
      this.uSDMRU,
      this.uSDMUR,
      this.uSDMVR,
      this.uSDMWK,
      this.uSDMXN,
      this.uSDMYR,
      this.uSDMZN,
      this.uSDNAD,
      this.uSDNGN,
      this.uSDNIO,
      this.uSDNOK,
      this.uSDNPR,
      this.uSDNZD,
      this.uSDOMR,
      this.uSDPAB,
      this.uSDPEN,
      this.uSDPGK,
      this.uSDPHP,
      this.uSDPKR,
      this.uSDPLN,
      this.uSDPYG,
      this.uSDQAR,
      this.uSDRON,
      this.uSDRSD,
      this.uSDRUB,
      this.uSDRWF,
      this.uSDSAR,
      this.uSDSBD,
      this.uSDSCR,
      this.uSDSDG,
      this.uSDSEK,
      this.uSDSGD,
      this.uSDSHP,
      this.uSDSLE,
      this.uSDSLL,
      this.uSDSOS,
      this.uSDSRD,
      this.uSDSTD,
      this.uSDSVC,
      this.uSDSYP,
      this.uSDSZL,
      this.uSDTHB,
      this.uSDTJS,
      this.uSDTMT,
      this.uSDTND,
      this.uSDTOP,
      this.uSDTRY,
      this.uSDTTD,
      this.uSDTWD,
      this.uSDTZS,
      this.uSDUAH,
      this.uSDUGX,
      this.uSDUYU,
      this.uSDUZS,
      this.uSDVES,
      this.uSDVND,
      this.uSDVUV,
      this.uSDWST,
      this.uSDXAF,
      this.uSDXAG,
      this.uSDXAU,
      this.uSDXCD,
      this.uSDXDR,
      this.uSDXOF,
      this.uSDXPF,
      this.uSDYER,
      this.uSDZAR,
      this.uSDZMK,
      this.uSDZMW,
      this.uSDZWL});

  Quotes.fromJson(Map<String, dynamic> json) {
    if(json['USDAED'] is int){
    uSDAED = double.parse(json['USDAED'].toString());
    }else{
      uSDAED = json['USDAED'];
}
    if(json['USDAFN'] is int){
    uSDAFN = double.parse(json['USDAFN'].toString());
    }else{
      uSDAFN = json['USDAFN'];
}
    if(json['USDALL'] is int){
    uSDALL = double.parse(json['USDALL'].toString());
    }else{
      uSDALL = json['USDALL'];
}
    if(json['USDAMD'] is int){
    uSDAMD = double.parse(json['USDAMD'].toString());
    }else{
      uSDAMD = json['USDAMD'];
}
    if(json['USDANG'] is int){
    uSDANG = double.parse(json['USDANG'].toString());
    }else{
      uSDANG = json['USDANG'];
}
    if(json['USDAOA'] is int){
    uSDAOA = double.parse(json['USDAOA'].toString());
    }else{
      uSDAOA = json['USDAOA'];
}
    if(json['USDARS'] is int){
    uSDARS = double.parse(json['USDARS'].toString());
    }else{
      uSDARS = json['USDARS'];
}
    if(json['USDAUD'] is int){
    uSDAUD = double.parse(json['USDAUD'].toString());
    }else{
      uSDAUD = json['USDAUD'];
}
    if(json['USDAWG'] is int){
    uSDAWG = double.parse(json['USDAWG'].toString());
    }else{
      uSDAWG = json['USDAWG'];
}
    if(json['USDAZN'] is int){
    uSDAZN = double.parse(json['USDAZN'].toString());
    }else{
      uSDAZN = json['USDAZN'];
}
    if(json['USDBAM'] is int){
    uSDBAM = double.parse(json['USDBAM'].toString());
    }else{
      uSDBAM = json['USDBAM'];
}
    if(json['USDBBD'] is int){
    uSDBBD = double.parse(json['USDBBD'].toString());
    }else{
      uSDBBD = json['USDBBD'];
}
    if(json['USDBDT'] is int){
    uSDBDT = double.parse(json['USDBDT'].toString());
    }else{
      uSDBDT = json['USDBDT'];
}
    if(json['USDBGN'] is int){
    uSDBGN = double.parse(json['USDBGN'].toString());
    }else{
      uSDBGN = json['USDBGN'];
}
    if(json['USDBHD'] is int){
    uSDBHD = double.parse(json['USDBHD'].toString());
    }else{
      uSDBHD = json['USDBHD'];
}
    if(json['USDBIF'] is int){
    uSDBIF = double.parse(json['USDBIF'].toString());
    }else{
      uSDBIF = json['USDBIF'];
}
    if(json['USDBMD'] is int){
    uSDBMD = double.parse(json['USDBMD'].toString());
    }else{
      uSDBMD = json['USDBMD'];
}
    if(json['USDBND'] is int){
    uSDBND = double.parse(json['USDBND'].toString());
    }else{
      uSDBND = json['USDBND'];
}
    if(json['USDBOB'] is int){
    uSDBOB = double.parse(json['USDBOB'].toString());
    }else{
      uSDBOB = json['USDBOB'];
}
    if(json['USDBRL'] is int){
    uSDBRL = double.parse(json['USDBRL'].toString());
    }else{
      uSDBRL = json['USDBRL'];
}
    if(json['USDBSD'] is int){
    uSDBSD = double.parse(json['USDBSD'].toString());
    }else{
      uSDBSD = json['USDBSD'];
}
    if(json['USDBTC'] is int){
    uSDBTC = double.parse(json['USDBTC'].toString());
    }else{
      uSDBTC = json['USDBTC'];
}
    if(json['USDBTN'] is int){
    uSDBTN = double.parse(json['USDBTN'].toString());
    }else{
      uSDBTN = json['USDBTN'];
}
    if(json['USDBWP'] is int){
    uSDBWP = double.parse(json['USDBWP'].toString());
    }else{
      uSDBWP = json['USDBWP'];
}
    if(json['USDBYN'] is int){
    uSDBYN = double.parse(json['USDBYN'].toString());
    }else{
      uSDBYN = json['USDBYN'];
}
    if(json['USDBYR'] is int){
    uSDBYR = double.parse(json['USDBYR'].toString());
    }else{
      uSDBYR = json['USDBYR'];
}
    if(json['USDBZD'] is int){
    uSDBZD = double.parse(json['USDBZD'].toString());
    }else{
      uSDBZD = json['USDBZD'];
}
    if(json['USDCAD'] is int){
    uSDCAD = double.parse(json['USDCAD'].toString());
    }else{
      uSDCAD = json['USDCAD'];
}
    if(json['USDCDF'] is int){
    uSDCDF = double.parse(json['USDCDF'].toString());
    }else{
      uSDCDF = json['USDCDF'];
}
    if(json['USDCHF'] is int){
    uSDCHF = double.parse(json['USDCHF'].toString());
    }else{
      uSDCHF = json['USDCHF'];
}
    if(json['USDCLF'] is int){
    uSDCLF = double.parse(json['USDCLF'].toString());
    }else{
      uSDCLF = json['USDCLF'];
}
    if(json['USDCLP'] is int){
    uSDCLP = double.parse(json['USDCLP'].toString());
    }else{
      uSDCLP = json['USDCLP'];
}
    if(json['USDCNY'] is int){
    uSDCNY = double.parse(json['USDCNY'].toString());
    }else{
      uSDCNY = json['USDCNY'];
}
    if(json['USDCNH'] is int){
    uSDCNH = double.parse(json['USDCNH'].toString());
    }else{
      uSDCNH = json['USDCNH'];
}
    if(json['USDCOP'] is int){
    uSDCOP = double.parse(json['USDCOP'].toString());
    }else{
      uSDCOP = json['USDCOP'];
}
    if(json['USDCRC'] is int){
    uSDCRC = double.parse(json['USDCRC'].toString());
    }else{
      uSDCRC = json['USDCRC'];
}
    if(json['USDCUC'] is int){
    uSDCUC = double.parse(json['USDCUC'].toString());
    }else{
      uSDCUC = json['USDCUC'];
}
    if(json['USDCUP'] is int){
    uSDCUP = double.parse(json['USDCUP'].toString());
    }else{
      uSDCUP = json['USDCUP'];
}
    if(json['USDCVE'] is int){
    uSDCVE = double.parse(json['USDCVE'].toString());
    }else{
      uSDCVE = json['USDCVE'];
}
    if(json['USDCZK'] is int){
    uSDCZK = double.parse(json['USDCZK'].toString());
    }else{
      uSDCZK = json['USDCZK'];
}
    if(json['USDDJF'] is int){
    uSDDJF = double.parse(json['USDDJF'].toString());
    }else{
      uSDDJF = json['USDDJF'];
}
    if(json['USDDKK'] is int){
    uSDDKK = double.parse(json['USDDKK'].toString());
    }else{
      uSDDKK = json['USDDKK'];
}
    if(json['USDDOP'] is int){
    uSDDOP = double.parse(json['USDDOP'].toString());
    }else{
      uSDDOP = json['USDDOP'];
}
    if(json['USDDZD'] is int){
    uSDDZD = double.parse(json['USDDZD'].toString());
    }else{
      uSDDZD = json['USDDZD'];
}
    if(json['USDEGP'] is int){
    uSDEGP = double.parse(json['USDEGP'].toString());
    }else{
      uSDEGP = json['USDEGP'];
}
    if(json['USDERN'] is int){
    uSDERN = double.parse(json['USDERN'].toString());
    }else{
      uSDERN = json['USDERN'];
}
    if(json['USDETB'] is int){
    uSDETB = double.parse(json['USDETB'].toString());
    }else{
      uSDETB = json['USDETB'];
}
    if(json['USDEUR'] is int){
    uSDEUR = double.parse(json['USDEUR'].toString());
    }else{
      uSDEUR = json['USDEUR'];
}
    if(json['USDFJD'] is int){
    uSDFJD = double.parse(json['USDFJD'].toString());
    }else{
      uSDFJD = json['USDFJD'];
}
    if(json['USDFKP'] is int){
    uSDFKP = double.parse(json['USDFKP'].toString());
    }else{
      uSDFKP = json['USDFKP'];
}
    if(json['USDGBP'] is int){
    uSDGBP = double.parse(json['USDGBP'].toString());
    }else{
      uSDGBP = json['USDGBP'];
}
    if(json['USDGEL'] is int){
    uSDGEL = double.parse(json['USDGEL'].toString());
    }else{
      uSDGEL = json['USDGEL'];
}
    if(json['USDGGP'] is int){
    uSDGGP = double.parse(json['USDGGP'].toString());
    }else{
      uSDGGP = json['USDGGP'];
}
    if(json['USDGHS'] is int){
    uSDGHS = double.parse(json['USDGHS'].toString());
    }else{
      uSDGHS = json['USDGHS'];
}
    if(json['USDGIP'] is int){
    uSDGIP = double.parse(json['USDGIP'].toString());
    }else{
      uSDGIP = json['USDGIP'];
}
    if(json['USDGMD'] is int){
    uSDGMD = double.parse(json['USDGMD'].toString());
    }else{
      uSDGMD = json['USDGMD'];
}
    if(json['USDGNF'] is int){
    uSDGNF = double.parse(json['USDGNF'].toString());
    }else{
      uSDGNF = json['USDGNF'];
}
    if(json['USDGTQ'] is int){
    uSDGTQ = double.parse(json['USDGTQ'].toString());
    }else{
      uSDGTQ = json['USDGTQ'];
}
    if(json['USDGYD'] is int){
    uSDGYD = double.parse(json['USDGYD'].toString());
    }else{
      uSDGYD = json['USDGYD'];
}
    if(json['USDHKD'] is int){
    uSDHKD = double.parse(json['USDHKD'].toString());
    }else{
      uSDHKD = json['USDHKD'];
}
    if(json['USDHNL'] is int){
    uSDHNL = double.parse(json['USDHNL'].toString());
    }else{
      uSDHNL = json['USDHNL'];
}
    if(json['USDHRK'] is int){
    uSDHRK = double.parse(json['USDHRK'].toString());
    }else{
      uSDHRK = json['USDHRK'];
}
    if(json['USDHTG'] is int){
    uSDHTG = double.parse(json['USDHTG'].toString());
    }else{
      uSDHTG = json['USDHTG'];
}
    if(json['USDHUF'] is int){
    uSDHUF = double.parse(json['USDHUF'].toString());
    }else{
      uSDHUF = json['USDHUF'];
}
    if(json['USDIDR'] is int){
    uSDIDR = double.parse(json['USDIDR'].toString());
    }else{
      uSDIDR = json['USDIDR'];
}
    if(json['USDILS'] is int){
    uSDILS = double.parse(json['USDILS'].toString());
    }else{
      uSDILS = json['USDILS'];
}
    if(json['USDIMP'] is int){
    uSDIMP = double.parse(json['USDIMP'].toString());
    }else{
      uSDIMP = json['USDIMP'];
}
    if(json['USDINR'] is int){
    uSDINR = double.parse(json['USDINR'].toString());
    }else{
      uSDINR = json['USDINR'];
}
    if(json['USDIQD'] is int){
    uSDIQD = double.parse(json['USDIQD'].toString());
    }else{
      uSDIQD = json['USDIQD'];
}
    if(json['USDIRR'] is int){
    uSDIRR = double.parse(json['USDIRR'].toString());
    }else{
      uSDIRR = json['USDIRR'];
}
    if(json['USDISK'] is int){
    uSDISK = double.parse(json['USDISK'].toString());
    }else{
      uSDISK = json['USDISK'];
}
    if(json['USDJEP'] is int){
    uSDJEP = double.parse(json['USDJEP'].toString());
    }else{
      uSDJEP = json['USDJEP'];
}
    if(json['USDJMD'] is int){
    uSDJMD = double.parse(json['USDJMD'].toString());
    }else{
      uSDJMD = json['USDJMD'];
}
    if(json['USDJOD'] is int){
    uSDJOD = double.parse(json['USDJOD'].toString());
    }else{
      uSDJOD = json['USDJOD'];
}
    if(json['USDJPY'] is int){
    uSDJPY = double.parse(json['USDJPY'].toString());
    }else{
      uSDJPY = json['USDJPY'];
}
    if(json['USDKES'] is int){
    uSDKES = double.parse(json['USDKES'].toString());
    }else{
      uSDKES = json['USDKES'];
}
    if(json['USDKGS'] is int){
    uSDKGS = double.parse(json['USDKGS'].toString());
    }else{
      uSDKGS = json['USDKGS'];
}
    if(json['USDKHR'] is int){
    uSDKHR = double.parse(json['USDKHR'].toString());
    }else{
      uSDKHR = json['USDKHR'];
}
    if(json['USDKMF'] is int){
    uSDKMF = double.parse(json['USDKMF'].toString());
    }else{
      uSDKMF = json['USDKMF'];
}
    if(json['USDKPW'] is int){
    uSDKPW = double.parse(json['USDKPW'].toString());
    }else{
      uSDKPW = json['USDKPW'];
}
    if(json['USDKRW'] is int){
    uSDKRW = double.parse(json['USDKRW'].toString());
    }else{
      uSDKRW = json['USDKRW'];
}
    if(json['USDKWD'] is int){
    uSDKWD = double.parse(json['USDKWD'].toString());
    }else{
      uSDKWD = json['USDKWD'];
}
    if(json['USDKYD'] is int){
    uSDKYD = double.parse(json['USDKYD'].toString());
    }else{
      uSDKYD = json['USDKYD'];
}
    if(json['USDKZT'] is int){
    uSDKZT = double.parse(json['USDKZT'].toString());
    }else{
      uSDKZT = json['USDKZT'];
}
    if(json['USDLAK'] is int){
    uSDLAK = double.parse(json['USDLAK'].toString());
    }else{
      uSDLAK = json['USDLAK'];
}
    if(json['USDLBP'] is int){
    uSDLBP = double.parse(json['USDLBP'].toString());
    }else{
      uSDLBP = json['USDLBP'];
}
    if(json['USDLKR'] is int){
    uSDLKR = double.parse(json['USDLKR'].toString());
    }else{
      uSDLKR = json['USDLKR'];
}
    if(json['USDLRD'] is int){
    uSDLRD = double.parse(json['USDLRD'].toString());
    }else{
      uSDLRD = json['USDLRD'];
}
    if(json['USDLSL'] is int){
    uSDLSL = double.parse(json['USDLSL'].toString());
    }else{
      uSDLSL = json['USDLSL'];
}
    if(json['USDLTL'] is int){
    uSDLTL = double.parse(json['USDLTL'].toString());
    }else{
      uSDLTL = json['USDLTL'];
}
    if(json['USDLVL'] is int){
    uSDLVL = double.parse(json['USDLVL'].toString());
    }else{
      uSDLVL = json['USDLVL'];
}
    if(json['USDLYD'] is int){
    uSDLYD = double.parse(json['USDLYD'].toString());
    }else{
      uSDLYD = json['USDLYD'];
}
    if(json['USDMAD'] is int){
    uSDMAD = double.parse(json['USDMAD'].toString());
    }else{
      uSDMAD = json['USDMAD'];
}
    if(json['USDMDL'] is int){
    uSDMDL = double.parse(json['USDMDL'].toString());
    }else{
      uSDMDL = json['USDMDL'];
}
    if(json['USDMGA'] is int){
    uSDMGA = double.parse(json['USDMGA'].toString());
    }else{
      uSDMGA = json['USDMGA'];
}
    if(json['USDMKD'] is int){
    uSDMKD = double.parse(json['USDMKD'].toString());
    }else{
      uSDMKD = json['USDMKD'];
}
    if(json['USDMMK'] is int){
    uSDMMK = double.parse(json['USDMMK'].toString());
    }else{
      uSDMMK = json['USDMMK'];
}
    if(json['USDMNT'] is int){
    uSDMNT = double.parse(json['USDMNT'].toString());
    }else{
      uSDMNT = json['USDMNT'];
}
    if(json['USDMOP'] is int){
    uSDMOP = double.parse(json['USDMOP'].toString());
    }else{
      uSDMOP = json['USDMOP'];
}
    if(json['USDMRU'] is int){
    uSDMRU = double.parse(json['USDMRU'].toString());
    }else{
      uSDMRU = json['USDMRU'];
}
    if(json['USDMUR'] is int){
    uSDMUR = double.parse(json['USDMUR'].toString());
    }else{
      uSDMUR = json['USDMUR'];
}
    if(json['USDMVR'] is int){
    uSDMVR = double.parse(json['USDMVR'].toString());
    }else{
      uSDMVR = json['USDMVR'];
}
    if(json['USDMWK'] is int){
    uSDMWK = double.parse(json['USDMWK'].toString());
    }else{
      uSDMWK = json['USDMWK'];
}
    if(json['USDMXN'] is int){
    uSDMXN = double.parse(json['USDMXN'].toString());
    }else{
      uSDMXN = json['USDMXN'];
}
    if(json['USDMYR'] is int){
    uSDMYR = double.parse(json['USDMYR'].toString());
    }else{
      uSDMYR = json['USDMYR'];
}
    if(json['USDMZN'] is int){
    uSDMZN = double.parse(json['USDMZN'].toString());
    }else{
      uSDMZN = json['USDMZN'];
}
    if(json['USDNAD'] is int){
    uSDNAD = double.parse(json['USDNAD'].toString());
    }else{
      uSDNAD = json['USDNAD'];
}
    if(json['USDNGN'] is int){
    uSDNGN = double.parse(json['USDNGN'].toString());
    }else{
      uSDNGN = json['USDNGN'];
}
    if(json['USDNIO'] is int){
    uSDNIO = double.parse(json['USDNIO'].toString());
    }else{
      uSDNIO = json['USDNIO'];
}
    if(json['USDNOK'] is int){
    uSDNOK = double.parse(json['USDNOK'].toString());
    }else{
      uSDNOK = json['USDNOK'];
}
    if(json['USDNPR'] is int){
    uSDNPR = double.parse(json['USDNPR'].toString());
    }else{
      uSDNPR = json['USDNPR'];
}
    if(json['USDNZD'] is int){
    uSDNZD = double.parse(json['USDNZD'].toString());
    }else{
      uSDNZD = json['USDNZD'];
}
    if(json['USDOMR'] is int){
    uSDOMR = double.parse(json['USDOMR'].toString());
    }else{
      uSDOMR = json['USDOMR'];
}
    if(json['USDPAB'] is int){
    uSDPAB = double.parse(json['USDPAB'].toString());
    }else{
      uSDPAB = json['USDPAB'];
}
    if(json['USDPEN'] is int){
    uSDPEN = double.parse(json['USDPEN'].toString());
    }else{
      uSDPEN = json['USDPEN'];
}
    if(json['USDPGK'] is int){
    uSDPGK = double.parse(json['USDPGK'].toString());
    }else{
      uSDPGK = json['USDPGK'];
}
    if(json['USDPHP'] is int){
    uSDPHP = double.parse(json['USDPHP'].toString());
    }else{
      uSDPHP = json['USDPHP'];
}
    if(json['USDPKR'] is int){
    uSDPKR = double.parse(json['USDPKR'].toString());
    }else{
      uSDPKR = json['USDPKR'];
}
    if(json['USDPLN'] is int){
    uSDPLN = double.parse(json['USDPLN'].toString());
    }else{
      uSDPLN = json['USDPLN'];
}
    if(json['USDPYG'] is int){
    uSDPYG = double.parse(json['USDPYG'].toString());
    }else{
      uSDPYG = json['USDPYG'];
}
    if(json['USDQAR'] is int){
    uSDQAR = double.parse(json['USDQAR'].toString());
    }else{
      uSDQAR = json['USDQAR'];
}
    if(json['USDRON'] is int){
    uSDRON = double.parse(json['USDRON'].toString());
    }else{
      uSDRON = json['USDRON'];
}
    if(json['USDRSD'] is int){
    uSDRSD = double.parse(json['USDRSD'].toString());
    }else{
      uSDRSD = json['USDRSD'];
}
    if(json['USDRUB'] is int){
    uSDRUB = double.parse(json['USDRUB'].toString());
    }else{
      uSDRUB = json['USDRUB'];
}
    if(json['USDRWF'] is int){
    uSDRWF = double.parse(json['USDRWF'].toString());
    }else{
      uSDRWF = json['USDRWF'];
}
    if(json['USDSAR'] is int){
    uSDSAR = double.parse(json['USDSAR'].toString());
    }else{
      uSDSAR = json['USDSAR'];
}
    if(json['USDSBD'] is int){
    uSDSBD = double.parse(json['USDSBD'].toString());
    }else{
      uSDSBD = json['USDSBD'];
}
    if(json['USDSCR'] is int){
    uSDSCR = double.parse(json['USDSCR'].toString());
    }else{
      uSDSCR = json['USDSCR'];
}
    if(json['USDSDG'] is int){
    uSDSDG = double.parse(json['USDSDG'].toString());
    }else{
      uSDSDG = json['USDSDG'];
}
    if(json['USDSEK'] is int){
    uSDSEK = double.parse(json['USDSEK'].toString());
    }else{
      uSDSEK = json['USDSEK'];
}
    if(json['USDSGD'] is int){
    uSDSGD = double.parse(json['USDSGD'].toString());
    }else{
      uSDSGD = json['USDSGD'];
}
    if(json['USDSHP'] is int){
    uSDSHP = double.parse(json['USDSHP'].toString());
    }else{
      uSDSHP = json['USDSHP'];
}
    if(json['USDSLE'] is int){
    uSDSLE = double.parse(json['USDSLE'].toString());
    }else{
      uSDSLE = json['USDSLE'];
}
    if(json['USDSLL'] is int){
    uSDSLL = double.parse(json['USDSLL'].toString());
    }else{
      uSDSLL = json['USDSLL'];
}
    if(json['USDSOS'] is int){
    uSDSOS = double.parse(json['USDSOS'].toString());
    }else{
      uSDSOS = json['USDSOS'];
}
    if(json['USDSRD'] is int){
    uSDSRD = double.parse(json['USDSRD'].toString());
    }else{
      uSDSRD = json['USDSRD'];
}
    if(json['USDSTD'] is int){
    uSDSTD = double.parse(json['USDSTD'].toString());
    }else{
      uSDSTD = json['USDSTD'];
}
    if(json['USDSVC'] is int){
    uSDSVC = double.parse(json['USDSVC'].toString());
    }else{
      uSDSVC = json['USDSVC'];
}
    if(json['USDSYP'] is int){
    uSDSYP = double.parse(json['USDSYP'].toString());
    }else{
      uSDSYP = json['USDSYP'];
}
    if(json['USDSZL'] is int){
    uSDSZL = double.parse(json['USDSZL'].toString());
    }else{
      uSDSZL = json['USDSZL'];
}
    if(json['USDTHB'] is int){
    uSDTHB = double.parse(json['USDTHB'].toString());
    }else{
      uSDTHB = json['USDTHB'];
}
    if(json['USDTJS'] is int){
    uSDTJS = double.parse(json['USDTJS'].toString());
    }else{
      uSDTJS = json['USDTJS'];
}
    if(json['USDTMT'] is int){
    uSDTMT = double.parse(json['USDTMT'].toString());
    }else{
      uSDTMT = json['USDTMT'];
}
    if(json['USDTND'] is int){
    uSDTND = double.parse(json['USDTND'].toString());
    }else{
      uSDTND = json['USDTND'];
}
    if(json['USDTOP'] is int){
    uSDTOP = double.parse(json['USDTOP'].toString());
    }else{
      uSDTOP = json['USDTOP'];
}
    if(json['USDTRY'] is int){
    uSDTRY = double.parse(json['USDTRY'].toString());
    }else{
      uSDTRY = json['USDTRY'];
}
    if(json['USDTTD'] is int){
    uSDTTD = double.parse(json['USDTTD'].toString());
    }else{
      uSDTTD = json['USDTTD'];
}
    if(json['USDTWD'] is int){
    uSDTWD = double.parse(json['USDTWD'].toString());
    }else{
      uSDTWD = json['USDTWD'];
}
    if(json['USDTZS'] is int){
    uSDTZS = double.parse(json['USDTZS'].toString());
    }else{
      uSDTZS = json['USDTZS'];
}
    if(json['USDUAH'] is int){
    uSDUAH = double.parse(json['USDUAH'].toString());
    }else{
      uSDUAH = json['USDUAH'];
}
    if(json['USDUGX'] is int){
    uSDUGX = double.parse(json['USDUGX'].toString());
    }else{
      uSDUGX = json['USDUGX'];
}
    if(json['USDUYU'] is int){
    uSDUYU = double.parse(json['USDUYU'].toString());
    }else{
      uSDUYU = json['USDUYU'];
}
    if(json['USDUZS'] is int){
    uSDUZS = double.parse(json['USDUZS'].toString());
    }else{
      uSDUZS = json['USDUZS'];
}
    if(json['USDVES'] is int){
    uSDVES = double.parse(json['USDVES'].toString());
    }else{
      uSDVES = json['USDVES'];
}
    if(json['USDVND'] is int){
    uSDVND = double.parse(json['USDVND'].toString());
    }else{
      uSDVND = json['USDVND'];
}
    if(json['USDVUV'] is int){
    uSDVUV = double.parse(json['USDVUV'].toString());
    }else{
      uSDVUV = json['USDVUV'];
}
    if(json['USDWST'] is int){
    uSDWST = double.parse(json['USDWST'].toString());
    }else{
      uSDWST = json['USDWST'];
}
    if(json['USDXAF'] is int){
    uSDXAF = double.parse(json['USDXAF'].toString());
    }else{
      uSDXAF = json['USDXAF'];
}
    if(json['USDXAG'] is int){
    uSDXAG = double.parse(json['USDXAG'].toString());
    }else{
      uSDXAG = json['USDXAG'];
}
    if(json['USDXAU'] is int){
    uSDXAU = double.parse(json['USDXAU'].toString());
    }else{
      uSDXAU = json['USDXAU'];
}
    if(json['USDXCD'] is int){
    uSDXCD = double.parse(json['USDXCD'].toString());
    }else{
      uSDXCD = json['USDXCD'];
}
    if(json['USDXDR'] is int){
    uSDXDR = double.parse(json['USDXDR'].toString());
    }else{
      uSDXDR = json['USDXDR'];
}
    if(json['USDXOF'] is int){
    uSDXOF = double.parse(json['USDXOF'].toString());
    }else{
      uSDXOF = json['USDXOF'];
}
    if(json['USDXPF'] is int){
    uSDXPF = double.parse(json['USDXPF'].toString());
    }else{
      uSDXPF = json['USDXPF'];
}
    if(json['USDYER'] is int){
    uSDYER = double.parse(json['USDYER'].toString());
    }else{
      uSDYER = json['USDYER'];
}
    if(json['USDZAR'] is int){
    uSDZAR = double.parse(json['USDZAR'].toString());
    }else{
      uSDZAR = json['USDZAR'];
}
    if(json['USDZMK'] is int){
    uSDZMK = double.parse(json['USDZMK'].toString());
    }else{
      uSDZMK = json['USDZMK'];
}
    if(json['USDZMW'] is int){
    uSDZMW = double.parse(json['USDZMW'].toString());
    }else{
      uSDZMW = json['USDZMW'];
}
    if(json['USDZWL'] is int){
    uSDZWL = double.parse(json['USDZWL'].toString());
    }else{
      uSDZWL = json['USDZWL'];
}
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['USDAED'] = this.uSDAED;
    data['USDAFN'] = this.uSDAFN;
    data['USDALL'] = this.uSDALL;
    data['USDAMD'] = this.uSDAMD;
    data['USDANG'] = this.uSDANG;
    data['USDAOA'] = this.uSDAOA;
    data['USDARS'] = this.uSDARS;
    data['USDAUD'] = this.uSDAUD;
    data['USDAWG'] = this.uSDAWG;
    data['USDAZN'] = this.uSDAZN;
    data['USDBAM'] = this.uSDBAM;
    data['USDBBD'] = this.uSDBBD;
    data['USDBDT'] = this.uSDBDT;
    data['USDBGN'] = this.uSDBGN;
    data['USDBHD'] = this.uSDBHD;
    data['USDBIF'] = this.uSDBIF;
    data['USDBMD'] = this.uSDBMD;
    data['USDBND'] = this.uSDBND;
    data['USDBOB'] = this.uSDBOB;
    data['USDBRL'] = this.uSDBRL;
    data['USDBSD'] = this.uSDBSD;
    data['USDBTC'] = this.uSDBTC;
    data['USDBTN'] = this.uSDBTN;
    data['USDBWP'] = this.uSDBWP;
    data['USDBYN'] = this.uSDBYN;
    data['USDBYR'] = this.uSDBYR;
    data['USDBZD'] = this.uSDBZD;
    data['USDCAD'] = this.uSDCAD;
    data['USDCDF'] = this.uSDCDF;
    data['USDCHF'] = this.uSDCHF;
    data['USDCLF'] = this.uSDCLF;
    data['USDCLP'] = this.uSDCLP;
    data['USDCNY'] = this.uSDCNY;
    data['USDCNH'] = this.uSDCNH;
    data['USDCOP'] = this.uSDCOP;
    data['USDCRC'] = this.uSDCRC;
    data['USDCUC'] = this.uSDCUC;
    data['USDCUP'] = this.uSDCUP;
    data['USDCVE'] = this.uSDCVE;
    data['USDCZK'] = this.uSDCZK;
    data['USDDJF'] = this.uSDDJF;
    data['USDDKK'] = this.uSDDKK;
    data['USDDOP'] = this.uSDDOP;
    data['USDDZD'] = this.uSDDZD;
    data['USDEGP'] = this.uSDEGP;
    data['USDERN'] = this.uSDERN;
    data['USDETB'] = this.uSDETB;
    data['USDEUR'] = this.uSDEUR;
    data['USDFJD'] = this.uSDFJD;
    data['USDFKP'] = this.uSDFKP;
    data['USDGBP'] = this.uSDGBP;
    data['USDGEL'] = this.uSDGEL;
    data['USDGGP'] = this.uSDGGP;
    data['USDGHS'] = this.uSDGHS;
    data['USDGIP'] = this.uSDGIP;
    data['USDGMD'] = this.uSDGMD;
    data['USDGNF'] = this.uSDGNF;
    data['USDGTQ'] = this.uSDGTQ;
    data['USDGYD'] = this.uSDGYD;
    data['USDHKD'] = this.uSDHKD;
    data['USDHNL'] = this.uSDHNL;
    data['USDHRK'] = this.uSDHRK;
    data['USDHTG'] = this.uSDHTG;
    data['USDHUF'] = this.uSDHUF;
    data['USDIDR'] = this.uSDIDR;
    data['USDILS'] = this.uSDILS;
    data['USDIMP'] = this.uSDIMP;
    data['USDINR'] = this.uSDINR;
    data['USDIQD'] = this.uSDIQD;
    data['USDIRR'] = this.uSDIRR;
    data['USDISK'] = this.uSDISK;
    data['USDJEP'] = this.uSDJEP;
    data['USDJMD'] = this.uSDJMD;
    data['USDJOD'] = this.uSDJOD;
    data['USDJPY'] = this.uSDJPY;
    data['USDKES'] = this.uSDKES;
    data['USDKGS'] = this.uSDKGS;
    data['USDKHR'] = this.uSDKHR;
    data['USDKMF'] = this.uSDKMF;
    data['USDKPW'] = this.uSDKPW;
    data['USDKRW'] = this.uSDKRW;
    data['USDKWD'] = this.uSDKWD;
    data['USDKYD'] = this.uSDKYD;
    data['USDKZT'] = this.uSDKZT;
    data['USDLAK'] = this.uSDLAK;
    data['USDLBP'] = this.uSDLBP;
    data['USDLKR'] = this.uSDLKR;
    data['USDLRD'] = this.uSDLRD;
    data['USDLSL'] = this.uSDLSL;
    data['USDLTL'] = this.uSDLTL;
    data['USDLVL'] = this.uSDLVL;
    data['USDLYD'] = this.uSDLYD;
    data['USDMAD'] = this.uSDMAD;
    data['USDMDL'] = this.uSDMDL;
    data['USDMGA'] = this.uSDMGA;
    data['USDMKD'] = this.uSDMKD;
    data['USDMMK'] = this.uSDMMK;
    data['USDMNT'] = this.uSDMNT;
    data['USDMOP'] = this.uSDMOP;
    data['USDMRU'] = this.uSDMRU;
    data['USDMUR'] = this.uSDMUR;
    data['USDMVR'] = this.uSDMVR;
    data['USDMWK'] = this.uSDMWK;
    data['USDMXN'] = this.uSDMXN;
    data['USDMYR'] = this.uSDMYR;
    data['USDMZN'] = this.uSDMZN;
    data['USDNAD'] = this.uSDNAD;
    data['USDNGN'] = this.uSDNGN;
    data['USDNIO'] = this.uSDNIO;
    data['USDNOK'] = this.uSDNOK;
    data['USDNPR'] = this.uSDNPR;
    data['USDNZD'] = this.uSDNZD;
    data['USDOMR'] = this.uSDOMR;
    data['USDPAB'] = this.uSDPAB;
    data['USDPEN'] = this.uSDPEN;
    data['USDPGK'] = this.uSDPGK;
    data['USDPHP'] = this.uSDPHP;
    data['USDPKR'] = this.uSDPKR;
    data['USDPLN'] = this.uSDPLN;
    data['USDPYG'] = this.uSDPYG;
    data['USDQAR'] = this.uSDQAR;
    data['USDRON'] = this.uSDRON;
    data['USDRSD'] = this.uSDRSD;
    data['USDRUB'] = this.uSDRUB;
    data['USDRWF'] = this.uSDRWF;
    data['USDSAR'] = this.uSDSAR;
    data['USDSBD'] = this.uSDSBD;
    data['USDSCR'] = this.uSDSCR;
    data['USDSDG'] = this.uSDSDG;
    data['USDSEK'] = this.uSDSEK;
    data['USDSGD'] = this.uSDSGD;
    data['USDSHP'] = this.uSDSHP;
    data['USDSLE'] = this.uSDSLE;
    data['USDSLL'] = this.uSDSLL;
    data['USDSOS'] = this.uSDSOS;
    data['USDSRD'] = this.uSDSRD;
    data['USDSTD'] = this.uSDSTD;
    data['USDSVC'] = this.uSDSVC;
    data['USDSYP'] = this.uSDSYP;
    data['USDSZL'] = this.uSDSZL;
    data['USDTHB'] = this.uSDTHB;
    data['USDTJS'] = this.uSDTJS;
    data['USDTMT'] = this.uSDTMT;
    data['USDTND'] = this.uSDTND;
    data['USDTOP'] = this.uSDTOP;
    data['USDTRY'] = this.uSDTRY;
    data['USDTTD'] = this.uSDTTD;
    data['USDTWD'] = this.uSDTWD;
    data['USDTZS'] = this.uSDTZS;
    data['USDUAH'] = this.uSDUAH;
    data['USDUGX'] = this.uSDUGX;
    data['USDUYU'] = this.uSDUYU;
    data['USDUZS'] = this.uSDUZS;
    data['USDVES'] = this.uSDVES;
    data['USDVND'] = this.uSDVND;
    data['USDVUV'] = this.uSDVUV;
    data['USDWST'] = this.uSDWST;
    data['USDXAF'] = this.uSDXAF;
    data['USDXAG'] = this.uSDXAG;
    data['USDXAU'] = this.uSDXAU;
    data['USDXCD'] = this.uSDXCD;
    data['USDXDR'] = this.uSDXDR;
    data['USDXOF'] = this.uSDXOF;
    data['USDXPF'] = this.uSDXPF;
    data['USDYER'] = this.uSDYER;
    data['USDZAR'] = this.uSDZAR;
    data['USDZMK'] = this.uSDZMK;
    data['USDZMW'] = this.uSDZMW;
    data['USDZWL'] = this.uSDZWL;
    return data;
  }
}
