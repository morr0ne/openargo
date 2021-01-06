// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) {
  return Login()
    ..oraInizio = json['oraInizio'] as String
    ..tipoUtente = json['tipoUtente'] as String
    ..disclaimer = json['disclaimer'] as String
    ..oraFine = json['oraFine'] as String
    ..token = json['token'] as String;
}

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'oraInizio': instance.oraInizio,
      'tipoUtente': instance.tipoUtente,
      'disclaimer': instance.disclaimer,
      'oraFine': instance.oraFine,
      'token': instance.token,
    };

Abilitazioni _$AbilitazioniFromJson(Map<String, dynamic> json) {
  return Abilitazioni()
    ..orarioScolastico = json['ORARIO_SCOLASTICO'] as bool
    ..valutazioniPeriodiche = json['VALUTAZIONI_PERIODICHE'] as bool
    ..compitiAssegnati = json['COMPITI_ASSEGNATI'] as bool
    ..tabelloneScrutinioFinale = json['TABELLONE_SCRUTINIO_FINALE'] as bool
    ..curriculumVisualizzaFamiglia =
        json['CURRICULUM_VISUALIZZA_FAMIGLIA'] as bool
    ..abilitaBsmartFamiglia = json['ALILITA_BSMART_FAMIGLIA'] as bool
    ..consiglioDiIstituto = json['CONSIGLIO_DI_ISTITUTO'] as bool
    ..noteDisciplinari = json['NOTE_DISCIPLINARI'] as bool
    ..accessoConControlloScheda = json['ACCESSO_CON_CONTROLLO_SCHEDA'] as bool
    ..votiGiudizi = json['VOTI_GIUDIZI'] as bool
    ..valutazioniGiornaliere = json['VALUTAZIONI_GIORNALIERE'] as bool
    ..ignoraOpzioneVotiDocenti = json['IGNORA_OPZIONE_VOTI_DOCENTI'] as bool
    ..argomentiLezione = json['ARGOMENTI_LEZIONE'] as bool
    ..consiglioDiClasse = json['CONSIGLIO_DI_CLASSE'] as bool
    ..valutazioniSospesePeriodiche =
        json['VALUTAZIONI_SOSPESE_PERIODICHE'] as bool
    ..pinVoti = json['PIN_VOTI'] as bool
    ..pagelleOnline = json['PAGELLE_ONLINE'] as bool
    ..disabilitaAccessoFamiglia = json['DISABILITA_ACCESSO_FAMIGLIA'] as bool
    ..recuperoDebitoInt = json['RECUPERO_DEBITO_INT'] as bool
    ..recuperoDebitoSf = json['RECUPERO_DEBITO_SF'] as bool
    ..promemoriaClasse = json['PROMEMORIA_CLASSE'] as bool
    ..visualizzaBachecaPubblica = json['VISUALIZZA_BACHECA_PUBBLICA'] as bool
    ..curriculumModificaFamiglia = json['CURRICULUM_MODIFICA_FAMIGLIA'] as bool
    ..tabellonePeriodiIntermedi = json['TABELLONE_PERIODI_INTERMEDI'] as bool
    ..tasseScolastiche = json['TASSE_SCOLASTICHE'] as bool
    ..docentiClasse = json['DOCENTI_CLASSE'] as bool
    ..visuallizaAssenzeRegProf = json['VISUALIZZA_ASSENZE_REG_PROF'] as bool
    ..visualizzaCurriculum = json['VISUALIZZA_CURRICULUM'] as bool
    ..assenzePerData = json['ASSENZE_PER_DATA'] as bool
    ..richiestaCertificati = json['RICHIESTA_CERTIFICATI'] as bool
    ..accessoSenzaControllo = json['ACCESSO_SENZA_CONTROLLO'] as bool
    ..prenotazioneAlunni = json['PRENOTAZIONE_ALUNNI'] as bool
    ..modificaRecapiti = json['MODIFICA_RECAPITI'] as bool
    ..pagellinoOnline = json['PAGELLINO_ONLINE'] as bool
    ..mediaPesata = json['MEDIA_PESATA'] as bool
    ..giustificazioniAssenze = json['GIUSTIFICAZIONI_ASSENZE'] as bool
    ..cambioPassword = json['CAMBIO_PASSWORD'] as bool;
}

Map<String, dynamic> _$AbilitazioniToJson(Abilitazioni instance) =>
    <String, dynamic>{
      'ORARIO_SCOLASTICO': instance.orarioScolastico,
      'VALUTAZIONI_PERIODICHE': instance.valutazioniPeriodiche,
      'COMPITI_ASSEGNATI': instance.compitiAssegnati,
      'TABELLONE_SCRUTINIO_FINALE': instance.tabelloneScrutinioFinale,
      'CURRICULUM_VISUALIZZA_FAMIGLIA': instance.curriculumVisualizzaFamiglia,
      'ALILITA_BSMART_FAMIGLIA': instance.abilitaBsmartFamiglia,
      'CONSIGLIO_DI_ISTITUTO': instance.consiglioDiIstituto,
      'NOTE_DISCIPLINARI': instance.noteDisciplinari,
      'ACCESSO_CON_CONTROLLO_SCHEDA': instance.accessoConControlloScheda,
      'VOTI_GIUDIZI': instance.votiGiudizi,
      'VALUTAZIONI_GIORNALIERE': instance.valutazioniGiornaliere,
      'IGNORA_OPZIONE_VOTI_DOCENTI': instance.ignoraOpzioneVotiDocenti,
      'ARGOMENTI_LEZIONE': instance.argomentiLezione,
      'CONSIGLIO_DI_CLASSE': instance.consiglioDiClasse,
      'VALUTAZIONI_SOSPESE_PERIODICHE': instance.valutazioniSospesePeriodiche,
      'PIN_VOTI': instance.pinVoti,
      'PAGELLE_ONLINE': instance.pagelleOnline,
      'DISABILITA_ACCESSO_FAMIGLIA': instance.disabilitaAccessoFamiglia,
      'RECUPERO_DEBITO_INT': instance.recuperoDebitoInt,
      'RECUPERO_DEBITO_SF': instance.recuperoDebitoSf,
      'PROMEMORIA_CLASSE': instance.promemoriaClasse,
      'VISUALIZZA_BACHECA_PUBBLICA': instance.visualizzaBachecaPubblica,
      'CURRICULUM_MODIFICA_FAMIGLIA': instance.curriculumModificaFamiglia,
      'TABELLONE_PERIODI_INTERMEDI': instance.tabellonePeriodiIntermedi,
      'TASSE_SCOLASTICHE': instance.tasseScolastiche,
      'DOCENTI_CLASSE': instance.docentiClasse,
      'VISUALIZZA_ASSENZE_REG_PROF': instance.visuallizaAssenzeRegProf,
      'VISUALIZZA_CURRICULUM': instance.visualizzaCurriculum,
      'ASSENZE_PER_DATA': instance.assenzePerData,
      'RICHIESTA_CERTIFICATI': instance.richiestaCertificati,
      'ACCESSO_SENZA_CONTROLLO': instance.accessoSenzaControllo,
      'PRENOTAZIONE_ALUNNI': instance.prenotazioneAlunni,
      'MODIFICA_RECAPITI': instance.modificaRecapiti,
      'PAGELLINO_ONLINE': instance.pagellinoOnline,
      'MEDIA_PESATA': instance.mediaPesata,
      'GIUSTIFICAZIONI_ASSENZE': instance.giustificazioniAssenze,
      'CAMBIO_PASSWORD': instance.cambioPassword,
    };

Assenze _$AssenzeFromJson(Map<String, dynamic> json) {
  return Assenze()
    ..dati = (json['dati'] as List)
        ?.map((e) =>
            e == null ? null : DatiAssenze.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..disclaimer = json['disclaimer'] as String
    ..abilitazioni = json['abilitazioni'] == null
        ? null
        : Abilitazioni.fromJson(json['abilitazioni'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AssenzeToJson(Assenze instance) => <String, dynamic>{
      'dati': instance.dati?.map((e) => e?.toJson())?.toList(),
      'disclaimer': instance.disclaimer,
      'abilitazioni': instance.abilitazioni?.toJson(),
    };

DatiAssenze _$DatiAssenzeFromJson(Map<String, dynamic> json) {
  return DatiAssenze()
    ..intOra = json['intOra'] as int
    ..codEvento = json['codEvento'] as String
    ..datAssenza = json['datAssenza'] == null
        ? null
        : DateTime.parse(json['datAssenza'] as String)
    ..prgAlunno = json['prgAlunno'] as int
    ..intAnno = json['intAnno'] as int
    ..flgDaGiustificare = json['flgDaGiustificare'] as bool
    ..prgScheda = json['prgScheda'] as int
    ..prgScuola = json['prgScuola'] as int
    ..desAssenza = json['desAssenza'] as String
    ..oraAssenza = json['oraAssenza'] as String
    ..binUid = json['binUid'] as String
    ..registrataDa = json['registrataDa'] as String
    ..codMin = json['codMin'] as String;
}

Map<String, dynamic> _$DatiAssenzeToJson(DatiAssenze instance) =>
    <String, dynamic>{
      'intOra': instance.intOra,
      'codEvento': instance.codEvento,
      'datAssenza': instance.datAssenza?.toIso8601String(),
      'prgAlunno': instance.prgAlunno,
      'intAnno': instance.intAnno,
      'flgDaGiustificare': instance.flgDaGiustificare,
      'prgScheda': instance.prgScheda,
      'prgScuola': instance.prgScuola,
      'desAssenza': instance.desAssenza,
      'oraAssenza': instance.oraAssenza,
      'binUid': instance.binUid,
      'registrataDa': instance.registrataDa,
      'codMin': instance.codMin,
    };

Scheda _$SchedaFromJson(Map<String, dynamic> json) {
  return Scheda()
    ..schedaSelezionata = json['schedaSelezionata'] as bool
    ..desScuola = json['desScuola'] as String
    ..prgScuola = json['prgScuola'] as int
    ..prgScheda = json['prgScheda'] as int
    ..desSede = json['desSede'] as String
    ..authToken = json['authToken'] as String
    ..alunno = json['alunno'] == null
        ? null
        : Alunno.fromJson(json['alunno'] as Map<String, dynamic>)
    ..codMin = json['codMin'] as String
    ..intAnno = json['intAnno'] as int
    ..prgAlunno = json['prgAlunno'] as int
    ..prgClasse = json['prgClasse'] as int
    ..desDenominazione = json['desDenominazione'] as String
    ..desCorso = json['desCorso'] as String
    ..abilitazioni = json['abilitazioni'] == null
        ? null
        : Abilitazioni.fromJson(json['abilitazioni'] as Map<String, dynamic>)
    ..annoScolastico = json['annoScolastico'] == null
        ? null
        : AnnoScolastico.fromJson(
            json['annoScolastico'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SchedaToJson(Scheda instance) => <String, dynamic>{
      'schedaSelezionata': instance.schedaSelezionata,
      'desScuola': instance.desScuola,
      'prgScuola': instance.prgScuola,
      'prgScheda': instance.prgScheda,
      'desSede': instance.desSede,
      'authToken': instance.authToken,
      'alunno': instance.alunno?.toJson(),
      'codMin': instance.codMin,
      'intAnno': instance.intAnno,
      'prgAlunno': instance.prgAlunno,
      'prgClasse': instance.prgClasse,
      'desDenominazione': instance.desDenominazione,
      'desCorso': instance.desCorso,
      'abilitazioni': instance.abilitazioni?.toJson(),
      'annoScolastico': instance.annoScolastico?.toJson(),
    };

Alunno _$AlunnoFromJson(Map<String, dynamic> json) {
  return Alunno()
    ..desCf = json['desCf'] as String
    ..desCognome = json['desCognome'] as String
    ..desVia = json['desVia'] as String
    ..desCap = json['desCap'] as String
    ..desNome = json['desNome'] as String
    ..desCellulare = json['desCellulare'] as String
    ..desComuneNascita = json['desComuneNascita'] as String
    ..flgSesso = json['flgSesso'] as String
    ..datNascita = json['datNascita'] == null
        ? null
        : DateTime.parse(json['datNascita'] as String)
    ..desIndirizzoRecapito = json['desIndirizzoRecapito'] as String
    ..desComuneRecapito = json['desComuneRecapito'] as String
    ..desCapResidenza = json['desCapResidenza'] as String
    ..desComuneResidenza = json['desComuneResidenza'] as String
    ..desTelefono = json['desTelefono'] as String
    ..desCittadinanza = json['desCittadinanza'] as String;
}

Map<String, dynamic> _$AlunnoToJson(Alunno instance) => <String, dynamic>{
      'desCf': instance.desCf,
      'desCognome': instance.desCognome,
      'desVia': instance.desVia,
      'desCap': instance.desCap,
      'desNome': instance.desNome,
      'desCellulare': instance.desCellulare,
      'desComuneNascita': instance.desComuneNascita,
      'flgSesso': instance.flgSesso,
      'datNascita': instance.datNascita?.toIso8601String(),
      'desIndirizzoRecapito': instance.desIndirizzoRecapito,
      'desComuneRecapito': instance.desComuneRecapito,
      'desCapResidenza': instance.desCapResidenza,
      'desComuneResidenza': instance.desComuneResidenza,
      'desTelefono': instance.desTelefono,
      'desCittadinanza': instance.desCittadinanza,
    };

AnnoScolastico _$AnnoScolasticoFromJson(Map<String, dynamic> json) {
  return AnnoScolastico()
    ..datInizio = json['datInizio'] == null
        ? null
        : DateTime.parse(json['datInizio'] as String)
    ..datFine = json['datFine'] == null
        ? null
        : DateTime.parse(json['datFine'] as String);
}

Map<String, dynamic> _$AnnoScolasticoToJson(AnnoScolastico instance) =>
    <String, dynamic>{
      'datInizio': instance.datInizio?.toIso8601String(),
      'datFine': instance.datFine?.toIso8601String(),
    };

GenitoreAlunno _$GenitoreAlunnoFromJson(Map<String, dynamic> json) {
  return GenitoreAlunno()
    ..prgGenitore = json['prgGenitore'] as int
    ..desCognome = json['desCognome'] as String
    ..email = json['email'] as String
    ..desNome = json['desNome'] as String
    ..telefono = json['telefono'] as String
    ..desGradoParentela = json['desGradoParentela'] as String
    ..codMin = json['codMin'] as String;
}

Map<String, dynamic> _$GenitoreAlunnoToJson(GenitoreAlunno instance) =>
    <String, dynamic>{
      'prgGenitore': instance.prgGenitore,
      'desCognome': instance.desCognome,
      'email': instance.email,
      'desNome': instance.desNome,
      'telefono': instance.telefono,
      'desGradoParentela': instance.desGradoParentela,
      'codMin': instance.codMin,
    };

MateriaClasse _$MateriaClasseFromJson(Map<String, dynamic> json) {
  return MateriaClasse()
    ..ordineMateria = json['ordineMateria'] as int
    ..desMateria = json['desMateria'] as String
    ..numAnno = json['numAnno'] as int
    ..codTipo = json['codTipo'] as String
    ..prgMateria = json['prgMateria'] as int
    ..prgClasse = json['prgClasse'] as int
    ..codSuddivisione = json['codSuddivisione'] as String
    ..prgScuola = json['prgScuola'] as int
    ..codMin = json['codMin'] as String;
}

Map<String, dynamic> _$MateriaClasseToJson(MateriaClasse instance) =>
    <String, dynamic>{
      'ordineMateria': instance.ordineMateria,
      'desMateria': instance.desMateria,
      'numAnno': instance.numAnno,
      'codTipo': instance.codTipo,
      'prgMateria': instance.prgMateria,
      'prgClasse': instance.prgClasse,
      'codSuddivisione': instance.codSuddivisione,
      'prgScuola': instance.prgScuola,
      'codMin': instance.codMin,
    };

DocenteClasse _$DocenteClasseFromJson(Map<String, dynamic> json) {
  return DocenteClasse()
    ..prgClasse = json['prgClasse'] as int
    ..prgAnagrafe = json['prgAnagrafe'] as int
    ..prgScuola = json['prgScuola'] as int
    ..materie = json['materie'] as String
    ..docente = json['docente'] == null
        ? null
        : Docente.fromJson(json['docente'] as Map<String, dynamic>)
    ..codMin = json['codMin'] as String;
}

Map<String, dynamic> _$DocenteClasseToJson(DocenteClasse instance) =>
    <String, dynamic>{
      'prgClasse': instance.prgClasse,
      'prgAnagrafe': instance.prgAnagrafe,
      'prgScuola': instance.prgScuola,
      'materie': instance.materie,
      'docente': instance.docente?.toJson(),
      'codMin': instance.codMin,
    };

Docente _$DocenteFromJson(Map<String, dynamic> json) {
  return Docente()
    ..email = json['email'] as String
    ..nome = json['nome'] as String
    ..cognome = json['cognome'] as String;
}

Map<String, dynamic> _$DocenteToJson(Docente instance) => <String, dynamic>{
      'email': instance.email,
      'nome': instance.nome,
      'cognome': instance.cognome,
    };

Verifica _$VerificaFromJson(Map<String, dynamic> json) {
  return Verifica()
    ..msg = json['msg'] as String
    ..success = json['success'] as String;
}

Map<String, dynamic> _$VerificaToJson(Verifica instance) => <String, dynamic>{
      'msg': instance.msg,
      'success': instance.success,
    };

Bsmart _$BsmartFromJson(Map<String, dynamic> json) {
  return Bsmart()
    ..message = json['message'] as String
    ..disclaimer = json['disclaimer'] as String
    ..success = json['success'] as bool;
}

Map<String, dynamic> _$BsmartToJson(Bsmart instance) => <String, dynamic>{
      'message': instance.message,
      'disclaimer': instance.disclaimer,
      'success': instance.success,
    };

VotiGiornalieri _$VotiGiornalieriFromJson(Map<String, dynamic> json) {
  return VotiGiornalieri()
    ..dati = (json['dati'] as List)
        ?.map((e) => e == null
            ? null
            : DatiVotiGiornalieri.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..disclaimer = json['disclaimer'] as String
    ..abilitazioni = json['abilitazioni'] == null
        ? null
        : Abilitazioni.fromJson(json['abilitazioni'] as Map<String, dynamic>);
}

Map<String, dynamic> _$VotiGiornalieriToJson(VotiGiornalieri instance) =>
    <String, dynamic>{
      'dati': instance.dati?.map((e) => e?.toJson())?.toList(),
      'disclaimer': instance.disclaimer,
      'abilitazioni': instance.abilitazioni?.toJson(),
    };

DatiVotiGiornalieri _$DatiVotiGiornalieriFromJson(Map<String, dynamic> json) {
  return DatiVotiGiornalieri()
    ..datGiorno = json['datGiorno'] == null
        ? null
        : DateTime.parse(json['datGiorno'] as String)
    ..desMateria = json['desMateria'] as String
    ..prgMateria = json['prgMateria'] as int
    ..prgScuola = json['prgScuola'] as int
    ..prgScheda = json['prgScheda'] as int
    ..codVotoPratico = json['codVotoPratico'] as String
    ..decValore = (json['decValore'] as num)?.toDouble()
    ..codMin = json['codMin'] as String
    ..desProva = json['desProva'] as String
    ..codVoto = json['codVoto'] as String
    ..intAnno = json['intAnno'] as int
    ..prgAlunno = json['prgAlunno'] as int
    ..desCommento = json['desCommento'] as String
    ..docente = json['docente'] as String;
}

Map<String, dynamic> _$DatiVotiGiornalieriToJson(
        DatiVotiGiornalieri instance) =>
    <String, dynamic>{
      'datGiorno': instance.datGiorno?.toIso8601String(),
      'desMateria': instance.desMateria,
      'prgMateria': instance.prgMateria,
      'prgScuola': instance.prgScuola,
      'prgScheda': instance.prgScheda,
      'codVotoPratico': instance.codVotoPratico,
      'decValore': instance.decValore,
      'codMin': instance.codMin,
      'desProva': instance.desProva,
      'codVoto': instance.codVoto,
      'intAnno': instance.intAnno,
      'prgAlunno': instance.prgAlunno,
      'desCommento': instance.desCommento,
      'docente': instance.docente,
    };

Compiti _$CompitiFromJson(Map<String, dynamic> json) {
  return Compiti()
    ..dati = (json['dati'] as List)
        ?.map((e) =>
            e == null ? null : DatiCompiti.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..disclaimer = json['disclaimer'] as String
    ..abilitazioni = json['abilitazioni'] == null
        ? null
        : Abilitazioni.fromJson(json['abilitazioni'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CompitiToJson(Compiti instance) => <String, dynamic>{
      'dati': instance.dati?.map((e) => e?.toJson())?.toList(),
      'disclaimer': instance.disclaimer,
      'abilitazioni': instance.abilitazioni?.toJson(),
    };

DatiCompiti _$DatiCompitiFromJson(Map<String, dynamic> json) {
  return DatiCompiti()
    ..datGiorno = json['datGiorno'] == null
        ? null
        : DateTime.parse(json['datGiorno'] as String)
    ..desMateria = json['desMateria'] as String
    ..numAnno = json['numAnno'] as int
    ..prgMateria = json['prgMateria'] as int
    ..prgClasse = json['prgClasse'] as int
    ..desCompiti = json['desCompiti'] as String
    ..prgScuola = json['prgScuola'] as int
    ..datCompitiPresente = json['datCompitiPresente'] as bool
    ..docente = json['docente'] as String
    ..codMin = json['codMin'] as String;
}

Map<String, dynamic> _$DatiCompitiToJson(DatiCompiti instance) =>
    <String, dynamic>{
      'datGiorno': instance.datGiorno?.toIso8601String(),
      'desMateria': instance.desMateria,
      'numAnno': instance.numAnno,
      'prgMateria': instance.prgMateria,
      'prgClasse': instance.prgClasse,
      'desCompiti': instance.desCompiti,
      'prgScuola': instance.prgScuola,
      'datCompitiPresente': instance.datCompitiPresente,
      'docente': instance.docente,
      'codMin': instance.codMin,
    };

FrasiAutoCertificazione _$FrasiAutoCertificazioneFromJson(
    Map<String, dynamic> json) {
  return FrasiAutoCertificazione()
    ..success = json['success'] as bool
    ..dati = (json['dati'] as List)
        ?.map((e) => e == null
            ? null
            : DatiFrasiAutoCertificazione.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..disclaimer = json['disclaimer'] as String;
}

Map<String, dynamic> _$FrasiAutoCertificazioneToJson(
        FrasiAutoCertificazione instance) =>
    <String, dynamic>{
      'success': instance.success,
      'dati': instance.dati?.map((e) => e?.toJson())?.toList(),
      'disclaimer': instance.disclaimer,
    };

DatiFrasiAutoCertificazione _$DatiFrasiAutoCertificazioneFromJson(
    Map<String, dynamic> json) {
  return DatiFrasiAutoCertificazione()..frase = json['frase'] as String;
}

Map<String, dynamic> _$DatiFrasiAutoCertificazioneToJson(
        DatiFrasiAutoCertificazione instance) =>
    <String, dynamic>{
      'frase': instance.frase,
    };

PeriodiClasse _$PeriodiClasseFromJson(Map<String, dynamic> json) {
  return PeriodiClasse()
    ..dati = (json['dati'] as List)
        ?.map((e) => e == null
            ? null
            : DatiPeriodiClasse.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..abilitazioni = json['abilitazioni'] == null
        ? null
        : Abilitazioni.fromJson(json['abilitazioni'] as Map<String, dynamic>)
    ..disclaimer = json['disclaimer'] as String;
}

Map<String, dynamic> _$PeriodiClasseToJson(PeriodiClasse instance) =>
    <String, dynamic>{
      'dati': instance.dati?.map((e) => e?.toJson())?.toList(),
      'abilitazioni': instance.abilitazioni?.toJson(),
      'disclaimer': instance.disclaimer,
    };

DatiPeriodiClasse _$DatiPeriodiClasseFromJson(Map<String, dynamic> json) {
  return DatiPeriodiClasse()
    ..codMin = json['codMin'] as String
    ..prgScuola = json['prgScuola'] as int
    ..datInizio = json['datInizio'] as String
    ..desPeriodo = json['desPeriodo'] as String
    ..flgVotiVisibili = json['flgVotiVisibili'] as bool
    ..datFine = json['datFine'] as String
    ..numOrdine = json['numOrdine'] as int
    ..codPeriodo = json['codPeriodo'] as String
    ..flgVotoUnico = json['flgVotoUnico'] as bool
    ..prgClasse = json['prgClasse'] as int
    ..prgPeriodo = json['prgPeriodo'] as int;
}

Map<String, dynamic> _$DatiPeriodiClasseToJson(DatiPeriodiClasse instance) =>
    <String, dynamic>{
      'codMin': instance.codMin,
      'prgScuola': instance.prgScuola,
      'datInizio': instance.datInizio,
      'desPeriodo': instance.desPeriodo,
      'flgVotiVisibili': instance.flgVotiVisibili,
      'datFine': instance.datFine,
      'numOrdine': instance.numOrdine,
      'codPeriodo': instance.codPeriodo,
      'flgVotoUnico': instance.flgVotoUnico,
      'prgClasse': instance.prgClasse,
      'prgPeriodo': instance.prgPeriodo,
    };

Orario _$OrarioFromJson(Map<String, dynamic> json) {
  return Orario()
    ..dati = (json['dati'] as List)
        ?.map((e) =>
            e == null ? null : DatiOrario.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..abilitazioni = json['abilitazioni'] == null
        ? null
        : Abilitazioni.fromJson(json['abilitazioni'] as Map<String, dynamic>)
    ..disclaimer = json['disclaimer'] as String;
}

Map<String, dynamic> _$OrarioToJson(Orario instance) => <String, dynamic>{
      'dati': instance.dati?.map((e) => e?.toJson())?.toList(),
      'abilitazioni': instance.abilitazioni?.toJson(),
      'disclaimer': instance.disclaimer,
    };

DatiOrario _$DatiOrarioFromJson(Map<String, dynamic> json) {
  return DatiOrario()
    ..numGiorno = json['numGiorno'] as int
    ..numOra = json['numOra'] as int
    ..codMin = json['codMin'] as String
    ..prgScuola = json['prgScuola'] as int
    ..lezioni = (json['lezioni'] as List)
        ?.map((e) =>
            e == null ? null : Lezione.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..giorno = json['giorno'] as String
    ..prgClasse = json['prgClasse'] as int;
}

Map<String, dynamic> _$DatiOrarioToJson(DatiOrario instance) =>
    <String, dynamic>{
      'numGiorno': instance.numGiorno,
      'numOra': instance.numOra,
      'codMin': instance.codMin,
      'prgScuola': instance.prgScuola,
      'lezioni': instance.lezioni?.map((e) => e?.toJson())?.toList(),
      'giorno': instance.giorno,
      'prgClasse': instance.prgClasse,
    };

Lezione _$LezioneFromJson(Map<String, dynamic> json) {
  return Lezione()
    ..docente = json['docente'] as String
    ..materia = json['materia'] as String;
}

Map<String, dynamic> _$LezioneToJson(Lezione instance) => <String, dynamic>{
      'docente': instance.docente,
      'materia': instance.materia,
    };
