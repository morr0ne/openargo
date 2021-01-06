import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class Login {
  String oraInizio;
  String tipoUtente;
  String disclaimer;
  String oraFine;
  String token;

  Login();

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}

@JsonSerializable()
class Abilitazioni {
  @JsonKey(name: 'ORARIO_SCOLASTICO')
  bool orarioScolastico;
  @JsonKey(name: 'VALUTAZIONI_PERIODICHE')
  bool valutazioniPeriodiche;
  @JsonKey(name: 'COMPITI_ASSEGNATI')
  bool compitiAssegnati;
  @JsonKey(name: 'TABELLONE_SCRUTINIO_FINALE')
  bool tabelloneScrutinioFinale;
  @JsonKey(name: 'CURRICULUM_VISUALIZZA_FAMIGLIA')
  bool curriculumVisualizzaFamiglia;
  @JsonKey(name: 'ALILITA_BSMART_FAMIGLIA')
  bool abilitaBsmartFamiglia;
  @JsonKey(name: 'CONSIGLIO_DI_ISTITUTO')
  bool consiglioDiIstituto;
  @JsonKey(name: 'NOTE_DISCIPLINARI')
  bool noteDisciplinari;
  @JsonKey(name: 'ACCESSO_CON_CONTROLLO_SCHEDA')
  bool accessoConControlloScheda;
  @JsonKey(name: 'VOTI_GIUDIZI')
  bool votiGiudizi;
  @JsonKey(name: 'VALUTAZIONI_GIORNALIERE')
  bool valutazioniGiornaliere;
  @JsonKey(name: 'IGNORA_OPZIONE_VOTI_DOCENTI')
  bool ignoraOpzioneVotiDocenti;
  @JsonKey(name: 'ARGOMENTI_LEZIONE')
  bool argomentiLezione;
  @JsonKey(name: 'CONSIGLIO_DI_CLASSE')
  bool consiglioDiClasse;
  @JsonKey(name: 'VALUTAZIONI_SOSPESE_PERIODICHE')
  bool valutazioniSospesePeriodiche;
  @JsonKey(name: 'PIN_VOTI')
  bool pinVoti;
  @JsonKey(name: 'PAGELLE_ONLINE')
  bool pagelleOnline;
  @JsonKey(name: 'DISABILITA_ACCESSO_FAMIGLIA')
  bool disabilitaAccessoFamiglia;
  @JsonKey(name: 'RECUPERO_DEBITO_INT')
  bool recuperoDebitoInt;
  @JsonKey(name: 'RECUPERO_DEBITO_SF')
  bool recuperoDebitoSf;
  @JsonKey(name: 'PROMEMORIA_CLASSE')
  bool promemoriaClasse;
  @JsonKey(name: 'VISUALIZZA_BACHECA_PUBBLICA')
  bool visualizzaBachecaPubblica;
  @JsonKey(name: 'CURRICULUM_MODIFICA_FAMIGLIA')
  bool curriculumModificaFamiglia;
  @JsonKey(name: 'TABELLONE_PERIODI_INTERMEDI')
  bool tabellonePeriodiIntermedi;
  @JsonKey(name: 'TASSE_SCOLASTICHE')
  bool tasseScolastiche;
  @JsonKey(name: 'DOCENTI_CLASSE')
  bool docentiClasse;
  @JsonKey(name: 'VISUALIZZA_ASSENZE_REG_PROF')
  bool visuallizaAssenzeRegProf;
  @JsonKey(name: 'VISUALIZZA_CURRICULUM')
  bool visualizzaCurriculum;
  @JsonKey(name: 'ASSENZE_PER_DATA')
  bool assenzePerData;
  @JsonKey(name: 'RICHIESTA_CERTIFICATI')
  bool richiestaCertificati;
  @JsonKey(name: 'ACCESSO_SENZA_CONTROLLO')
  bool accessoSenzaControllo;
  @JsonKey(name: 'PRENOTAZIONE_ALUNNI')
  bool prenotazioneAlunni;
  @JsonKey(name: 'MODIFICA_RECAPITI')
  bool modificaRecapiti;
  @JsonKey(name: 'PAGELLINO_ONLINE')
  bool pagellinoOnline;
  @JsonKey(name: 'MEDIA_PESATA')
  bool mediaPesata;
  @JsonKey(name: 'GIUSTIFICAZIONI_ASSENZE')
  bool giustificazioniAssenze;
  @JsonKey(name: 'CAMBIO_PASSWORD')
  bool cambioPassword;

  Abilitazioni();

  factory Abilitazioni.fromJson(Map<String, dynamic> json) =>
      _$AbilitazioniFromJson(json);
  Map<String, dynamic> toJson() => _$AbilitazioniToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Assenze {
  Assenze();

  List<DatiAssenze> dati;
  String disclaimer;
  Abilitazioni abilitazioni;

  factory Assenze.fromJson(Map<String, dynamic> json) =>
      _$AssenzeFromJson(json);
  Map<String, dynamic> toJson() => _$AssenzeToJson(this);
}

@JsonSerializable()
class DatiAssenze {
  int intOra;
  String codEvento;
  DateTime datAssenza;
  int prgAlunno;
  int intAnno;
  bool flgDaGiustificare;
  int prgScheda;
  int prgScuola;
  String desAssenza;
  String oraAssenza;
  String binUid;
  String registrataDa;
  String codMin;

  DatiAssenze();
  factory DatiAssenze.fromJson(Map<String, dynamic> json) =>
      _$DatiAssenzeFromJson(json);
  Map<String, dynamic> toJson() => _$DatiAssenzeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Scheda {
  bool schedaSelezionata;
  String desScuola;
  int prgScuola;
  int prgScheda;
  String desSede;
  String authToken;
  Alunno alunno;
  String codMin;
  int intAnno;
  int prgAlunno;
  int prgClasse;
  String desDenominazione;
  String desCorso;
  Abilitazioni abilitazioni;
  AnnoScolastico annoScolastico;

  Scheda();
  factory Scheda.fromJson(Map<String, dynamic> json) => _$SchedaFromJson(json);
  Map<String, dynamic> toJson() => _$SchedaToJson(this);
}

@JsonSerializable()
class Alunno {
  /// Codice fiscale
  String desCf;
  String desCognome;
  String desVia;
  String desCap;
  String desNome;
  String desCellulare;
  String desComuneNascita;
  String flgSesso;
  DateTime datNascita;
  String desIndirizzoRecapito;
  String desComuneRecapito;
  String desCapResidenza;
  String desComuneResidenza;
  String desTelefono;
  String desCittadinanza;

  Alunno();
  factory Alunno.fromJson(Map<String, dynamic> json) => _$AlunnoFromJson(json);
  Map<String, dynamic> toJson() => _$AlunnoToJson(this);
}

@JsonSerializable()
class AnnoScolastico {
  DateTime datInizio;
  DateTime datFine;

  AnnoScolastico();
  factory AnnoScolastico.fromJson(Map<String, dynamic> json) =>
      _$AnnoScolasticoFromJson(json);
  Map<String, dynamic> toJson() => _$AnnoScolasticoToJson(this);
}

@JsonSerializable()
class GenitoreAlunno {
  int prgGenitore;
  String desCognome;
  String email;
  String desNome;
  String telefono;
  String desGradoParentela;
  String codMin;

  GenitoreAlunno();
  factory GenitoreAlunno.fromJson(Map<String, dynamic> json) =>
      _$GenitoreAlunnoFromJson(json);
  Map<String, dynamic> toJson() => _$GenitoreAlunnoToJson(this);
}

@JsonSerializable()
class MateriaClasse {
  int ordineMateria;
  String desMateria;
  int numAnno;
  String codTipo;
  int prgMateria;
  int prgClasse;
  String codSuddivisione;
  int prgScuola;
  String codMin;

  MateriaClasse();
  factory MateriaClasse.fromJson(Map<String, dynamic> json) =>
      _$MateriaClasseFromJson(json);
  Map<String, dynamic> toJson() => _$MateriaClasseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocenteClasse {
  int prgClasse;
  int prgAnagrafe;
  int prgScuola;
  String materie;
  Docente docente;
  String codMin;

  DocenteClasse();
  factory DocenteClasse.fromJson(Map<String, dynamic> json) =>
      _$DocenteClasseFromJson(json);
  Map<String, dynamic> toJson() => _$DocenteClasseToJson(this);
}

@JsonSerializable()
class Docente {
  String email;
  String nome;
  String cognome;

  Docente();
  factory Docente.fromJson(Map<String, dynamic> json) =>
      _$DocenteFromJson(json);
  Map<String, dynamic> toJson() => _$DocenteToJson(this);
}

@JsonSerializable()
class Verifica {
  String msg;

  /// Ritorna true o false ma per qualche ragione sotto forma di stringa
  String success;

  Verifica();
  factory Verifica.fromJson(Map<String, dynamic> json) =>
      _$VerificaFromJson(json);
  Map<String, dynamic> toJson() => _$VerificaToJson(this);
}

@JsonSerializable()
class Bsmart {
  String message;
  String disclaimer;
  bool success;

  Bsmart();
  factory Bsmart.fromJson(Map<String, dynamic> json) => _$BsmartFromJson(json);
  Map<String, dynamic> toJson() => _$BsmartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VotiGiornalieri {
  List<DatiVotiGiornalieri> dati;
  String disclaimer;
  Abilitazioni abilitazioni;

  VotiGiornalieri();
  factory VotiGiornalieri.fromJson(Map<String, dynamic> json) =>
      _$VotiGiornalieriFromJson(json);
  Map<String, dynamic> toJson() => _$VotiGiornalieriToJson(this);
}

@JsonSerializable()
class DatiVotiGiornalieri {
  /// Data in cui è stato messo il voto
  DateTime datGiorno;

  /// Nome della materia
  String desMateria;
  int prgMateria;
  int prgScuola;
  int prgScheda;

  /// Specifica se il voto è orale, scritto o pratico
  ///
  /// N = orale, S = scritto, P = Pratico
  String codVotoPratico;

  /// Voto in formato decimanle
  double decValore;

  /// Codice scuola
  String codMin;

  /// Descrizione prova
  String desProva;

  /// Voto in un formato più comprensibile
  String codVoto;
  int intAnno;
  int prgAlunno;

  /// Commento del voto
  String desCommento;

  /// Docente che ha segnato il voto
  String docente;

  DatiVotiGiornalieri();
  factory DatiVotiGiornalieri.fromJson(Map<String, dynamic> json) =>
      _$DatiVotiGiornalieriFromJson(json);
  Map<String, dynamic> toJson() => _$DatiVotiGiornalieriToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Compiti {
  List<DatiCompiti> dati;
  String disclaimer;
  Abilitazioni abilitazioni;

  Compiti();
  factory Compiti.fromJson(Map<String, dynamic> json) =>
      _$CompitiFromJson(json);
  Map<String, dynamic> toJson() => _$CompitiToJson(this);
}

@JsonSerializable()
class DatiCompiti {
  DateTime datGiorno;
  String desMateria;
  int numAnno;
  int prgMateria;
  int prgClasse;
  String desCompiti;
  int prgScuola;
  bool datCompitiPresente;
  String docente;
  String codMin;

  DatiCompiti();
  factory DatiCompiti.fromJson(Map<String, dynamic> json) =>
      _$DatiCompitiFromJson(json);
  Map<String, dynamic> toJson() => _$DatiCompitiToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FrasiAutoCertificazione {
  bool success;
  List<DatiFrasiAutoCertificazione> dati;
  String disclaimer;

  FrasiAutoCertificazione();
  factory FrasiAutoCertificazione.fromJson(Map<String, dynamic> json) =>
      _$FrasiAutoCertificazioneFromJson(json);
  Map<String, dynamic> toJson() => _$FrasiAutoCertificazioneToJson(this);
}

@JsonSerializable()
class DatiFrasiAutoCertificazione {
  String frase;

  DatiFrasiAutoCertificazione();
  factory DatiFrasiAutoCertificazione.fromJson(Map<String, dynamic> json) =>
      _$DatiFrasiAutoCertificazioneFromJson(json);
  Map<String, dynamic> toJson() => _$DatiFrasiAutoCertificazioneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PeriodiClasse {
  List<DatiPeriodiClasse> dati;
  Abilitazioni abilitazioni;
  String disclaimer;

  PeriodiClasse();
  factory PeriodiClasse.fromJson(Map<String, dynamic> json) =>
      _$PeriodiClasseFromJson(json);
  Map<String, dynamic> toJson() => _$PeriodiClasseToJson(this);
}

@JsonSerializable()
class DatiPeriodiClasse {
  String codMin;
  int prgScuola;
  String datInizio;
  String desPeriodo;
  bool flgVotiVisibili;
  String datFine;
  int numOrdine;
  String codPeriodo;
  bool flgVotoUnico;
  int prgClasse;
  int prgPeriodo;

  DatiPeriodiClasse();
  factory DatiPeriodiClasse.fromJson(Map<String, dynamic> json) =>
      _$DatiPeriodiClasseFromJson(json);
  Map<String, dynamic> toJson() => _$DatiPeriodiClasseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Orario {
  List<DatiOrario> dati;
  Abilitazioni abilitazioni;
  String disclaimer;

  Orario();
  factory Orario.fromJson(Map<String, dynamic> json) => _$OrarioFromJson(json);
  Map<String, dynamic> toJson() => _$OrarioToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DatiOrario {
  int numGiorno;
  int numOra;
  String codMin;
  int prgScuola;
  List<Lezione> lezioni;
  String giorno;
  int prgClasse;

  DatiOrario();
  factory DatiOrario.fromJson(Map<String, dynamic> json) =>
      _$DatiOrarioFromJson(json);
  Map<String, dynamic> toJson() => _$DatiOrarioToJson(this);
}

@JsonSerializable()
class Lezione {
  String docente;
  String materia;

  Lezione();
  factory Lezione.fromJson(Map<String, dynamic> json) =>
      _$LezioneFromJson(json);
  Map<String, dynamic> toJson() => _$LezioneToJson(this);
}
