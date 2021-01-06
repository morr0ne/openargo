import 'package:intl/intl.dart';

import 'client.dart';
import 'responses.dart';

class ApiInterface {
  final _client = ArgoClient();

  final _baseHeaders = {
    'x-version': '2.5.0',
    'x-key-app': 'ax6542sdru3217t4eesd9',
    'x-produttore-software': 'ARGO Software s.r.l. - Ragusa',
    'X-Requested-With': 'XMLHttpRequest',
    'x-app-code': 'APF',
    'Sec-Fetch-Mode': 'cors',
    'Sec-Fetch-Site': 'cross-site',
    'Accept-Language': 'it-IT,it;q=0.9,en-US;q=0.8,en;q=0.7',
    'x-prg-scuola': '0',
    'x-prg-alunno': '0',
    'x-prg-scheda': '0',
  };

  Map<String, String> _fullHeaders;

  Future<void> setScheda(Scheda scheda) async {
    _fullHeaders['x-prg-scheda'] = scheda.prgScheda.toString();
    _fullHeaders['x-prg-scuola'] = scheda.prgScuola.toString();
    _fullHeaders['x-prg-alunno'] = scheda.prgAlunno.toString();
    // await _authBox.put('argoHeaders', _fullHeaders);
    // await _authBox.put('argoScheda', scheda);
  }

  Future login(String code, String username, String password) async {
    var headers = {
      ..._baseHeaders,
      'x-cod-min': code,
      'x-user-id': username,
      'x-pwd': password
    };

    var res = Login.fromJson(await _client.get('login', headers));

    _fullHeaders = {
      ..._baseHeaders,
      'x-auth-token': res.token,
      'x-cod-min': code,
    };

    await setScheda((await schede())[0]);
  }

  Future<List<GenitoreAlunno>> genitoriAlunno() async {
    List genitoriAlunno = await _client.get('genitorialunno', _fullHeaders);
    return genitoriAlunno.map((s) => GenitoreAlunno.fromJson(s)).toList();
  }

  Future<List<MateriaClasse>> materieClasse() async {
    List materieClasse = await _client.get('materieclasse', _fullHeaders);
    return materieClasse.map((s) => MateriaClasse.fromJson(s)).toList();
  }

  Future<List<DocenteClasse>> docentiClasse() async {
    List docentiClasse = await _client.get('docenticlasse', _fullHeaders);
    return docentiClasse.map((s) => DocenteClasse.fromJson(s)).toList();
  }

  Future<FrasiAutoCertificazione> frasiAutoCertificazione() async =>
      FrasiAutoCertificazione.fromJson(
          await _client.get('frasiautocertificazione', _fullHeaders));

  // TODO: Testare l'api.
  Future cambioPassword(String vecchiaPassword, String nuovaPassword) async =>
      _client.post('cambiopassword', _fullHeaders, body: {
        'vecchiaPassword': vecchiaPassword,
        'nuovaPassword': nuovaPassword
      });

  // TODO: Capire come funziona questo api.
  Future credenzialiInvalsi() async =>
      _client.get('credenzialiinvalsi', _fullHeaders);

  Future<Verifica> verifica() async =>
      Verifica.fromJson(await _client.get('verifica', _fullHeaders));

  Future<Bsmart> bsmart() async =>
      Bsmart.fromJson(await _client.get('bsmart', _fullHeaders));

  // TODO: Capire come funziona questo api.
  Future conteggioeventi() async {
    var date = DateFormat('y-m-d').format(DateTime.now()).toString();
    return _client
        .get('conteggioeventi', _fullHeaders, params: {'datGiorno': date});
  }

  Future<VotiGiornalieri> votiGiornalieri() async => VotiGiornalieri.fromJson(
      await _client.get('votigiornalieri', _fullHeaders));

  Future<Compiti> compiti() async =>
      Compiti.fromJson(await _client.get('compiti', _fullHeaders));

  // TODO: Su alcuni account ritorna una lista di materie su altre no, da esplorare meglio
  Future argomenti() async => _client.get('argomenti', _fullHeaders);

  Future<PeriodiClasse> periodiClasse() async =>
      PeriodiClasse.fromJson(await _client.get('periodiclasse', _fullHeaders));

  // TODO: Testare questo api con un account che contiene voti scrutinio
  Future votiScrutinio() async => _client.get('votiscrutinio', _fullHeaders);

  // TODO: risponse sempre java.lang.NullPointerException, api di legacy?
  Future tabelloneVoti() async => _client.get('tabellonevoti', _fullHeaders);

  // TODO: Testare questo api con un account che contiene voti scrutinio
  Future presaVisioneVoti() async =>
      _client.post('presavisionevoti', _fullHeaders);

  // TODO: Da testare
  Future promemoria() async => _client.get('promemoria', _fullHeaders);

  Future noteDisciplinari() async =>
      _client.get('notedisciplinari', _fullHeaders);

  // TODO: Da testare
  Future presaVisioneNote() async =>
      _client.post('presavisionenote', _fullHeaders);

  Future<List<Scheda>> schede() async {
    List schede = await _client.get('schede', _fullHeaders);
    return schede.map((s) => Scheda.fromJson(s)).toList();
  }

  Future<Orario> orario() async =>
      Orario.fromJson(await _client.get('orario', _fullHeaders));

  // TODO: Da testare in un account con prenotazioni
  Future prenotazioniRicevimento() async =>
      _client.get('prenotazioniricevimento', _fullHeaders);

  // TODO: Da testare
  Future disponibilitaDocente() async =>
      _client.get('disponibilitadocente', _fullHeaders);

  // Future salvaPrenotazione() async {
  //   //  jsonData: {
  //   //             prgDisponibilita: this.getRecordSelected().get("prgDisponibilita"),
  //   //             prgAnagrafe: this.getRecordSelected().get("prgAnagrafe"),
  //   //             prgPrenotazione: this.getRecordSelected().get("prgPrenotazione"),
  //   //             prgGenitore: this.getRecordSelected().get("prgGenitore"),
  //   //             emailGenitore: this.getRecordSelected().get("emailGenitore"),
  //   //             telefonoGenitore: this.getRecordSelected().get("telefonoGenitore"),
  //   //             modifica: this.getRecordSelected().get("modifica")
  //   //         }
  //   _client.post('salvaprenotazione', _fullHeaders);
  // }

  // jsonData: {
  //                       prgDisponibilita: b.getRecordSelected().get("prgDisponibilita"),
  //                       prgAnagrafe: b.getRecordSelected().get("prgAnagrafe"),
  //                       prgPrenotazione: b.getRecordSelected().get("prgPrenotazione")
  //                   },
  //                   url: Famiglia.view.Utils.getUrlBase() + "/annullaprenotazione",

  Future<Assenze> assenze() async =>
      Assenze.fromJson(await _client.get('assenze', _fullHeaders));

  // Future giustifica() async {
  //   //  var g = {
  //   //     motivazione: e.getValue(),
  //   //     listaAssenze: c
  //   // };

  //   await _client.post('giustifica', _fullHeaders);
  // }

  Future bacheca() async => _client.get('bacheca', _fullHeaders);
  // messaggiobacheca
  // updatepresavisionemessaggiogenitore

  Future bachecaNuova() async => _client.get('bachecanuova', _fullHeaders);
  // messaggiobachecanuova
  // presavisionebachecanuova
  // Needed params

  Future oggi() async => _client.get('oggi', _fullHeaders);
  // needed params

  Future bachecaAlunno() async => _client.get('bachecaalunno', _fullHeaders);
  // updatepresavisionebachecaalunno
  // messaggiobachecaalunno

  Future condivisioneFile() async =>
      _client.get('condivisionefile', _fullHeaders);
  // documentocondiviso
  // post: uploadfoto
  // post: eliminadocumento
  // Needed params

  // TODO: L'api ritorna sempre success false, capire come farlo funzionare
  Future autoCertificazione() async =>
      _client.get('autocertificazione', _fullHeaders);
}

final ApiInterface Api = ApiInterface();
