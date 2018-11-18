class AppLocalizations {
  static final AppLocalizations _instance = new AppLocalizations._internal();

  factory AppLocalizations() => _instance;

  AppLocalizations._internal() {
    _languageCode = "de";
    _subscribers = List();
  }

  String _languageCode;
  List<LanguageChangeDetector> _subscribers;

  final Map<String, Map<String, String>> _localizedValues = {
    "en": {
      "userData": "User data",
      "language": "Language",
      "userName": "Username",
      "email": "E-Mail",
      "about": "Legal",
      "firstName": "First name",
      "surname": "Surname",
      "password": "Password",
      "usernameOrEmail": "Username or E-Mail",
      "usernameOrEmailMustHaveAtLeastForCharacters":
          "Username or E-Mail must have at least 4 characters.",
      "successfullySignedIn": "Successfully signed in",
      "signInToLearnable": "Sign In To learnable",
      "signIn": "Sign In",
      "signOut": "Sign Out",
      "loadingData": "Loading Data...",
      "fetchingData": "Fetching Data...",
      "timetable": "Timetable",
      "events": "Events",
      "classes": "Classes",
      "account": "Account",
      "pleaseRestartTheApplicationForOptimalPerformance":
          "Please restart the application for optimal performance.",
      "title": "Title",
      "eventType": "Event type",
      "description": "Description",
      "date": "Date",
      "startTime": "Start Time",
      "endTime": "End Time",
      "room": "Room",
      "createdBy": "Created by",
      "noEventsListed": "No events listed.",
      "pleaseCheckYourCredentials":
          "We could not find your information in our system.",
      "currentPassword": "Current password",
      "newPassword": "New password",
      "confirmPassword": "Confirm password",
      "filterBy": "Filter by",
      "credits": "Credits",
      "classmates": "Classmates",
      "teachers": "Class teachers",
      "settings": "Settings",
      "isOnlineText": "Aaaaaand we are live!",
      "isOfflineText": "looks like Joey doesn't wanna share internet.",
      "writeEmailTo": "Write an e-mail to",
      "information": "information",
      "monday": "Monday",
      "tuesday": "Tuesday",
      "wednesday": "Wednesday",
      "thursday": "Thursday",
      "friday": "Friday",
      "saturday": "Saturday",
      "sunday": "Sunday",
      "enterValidEmail":
          "I don't know Rick, It looks not like an E-Mail to me.",
      "changeEmail": "Change E-Mail",
      "changePassword": "Change Password",
      "disclaimer": "Disclaimer",
      "disclaimer_text":
          "The author assumes no liability whatsoever with regard to the correctness, accuracy, up-to-dateness, reliability and completeness of the information provided.\n\nLiability claims against the author for damages of a material or immaterial nature arising from access to or use or non-use of the published information, from misuse of the connection or from technical faults are excluded.\n\nAll offers are non-binding. The author expressly reserves the right to change, supplement or delete parts of the pages or the entire offer without prior notice or to discontinue publication temporarily or permanently.",
      "copyrights": "Copyrights",
      "copyrights_text":
          "The copyright and all other rights to content, images, photographs or other files on the Site are owned exclusively by Learnable or the specifically designated owners. For the reproduction of any elements, the written consent of the copyright holder must be obtained in advance.",
      "privacy": "Privacy",
      "privacy_text":
          "Based on Article 13 of the Swiss Federal Constitution and the data protection provisions of the Confederation (Data Protection Act, DSG), every person has the right to the protection of his or her privacy and to protection against the misuse of his or her personal data. We comply with these provisions. Personal data is treated strictly confidentially and is neither sold nor passed on to third parties.\n\nIn close cooperation with our hosting providers, we endeavour to protect the databases as best as possible against unauthorised access, loss, misuse or falsification.\n\nWhen you access our website, the following data is stored in log files: IP address, date, time, browser request and generally transmitted information about the operating system or browser. This usage data forms the basis for statistical, anonymous evaluations, so that trends can be identified, on the basis of which we can improve our offers accordingly.",
    },
    "de": {
      "userData": "Benutzerdaten",
      "language": "Sprache",
      "userName": "Benutzername",
      "email": "E-Mail",
      "about": "Impressum",
      "firstName": "Vorname",
      "surname": "Nachname",
      "password": "Passwort",
      "usernameOrEmail": "Benutzername oder E-Mail",
      "usernameOrEmailMustHaveAtLeastForCharacters":
          "Benutzername oder E-Mail müssen mindestens 4 Zeichen lang sein.",
      "successfullySignedIn": "Erfolgreich angemeldet",
      "signInToLearnable": "Meld dich an bei Learnable.",
      "signIn": "Anmelden",
      "signOut": "Abmelden",
      "loadingData": "Lade Daten...",
      "fetchingData": "Lade Daten...",
      "timetable": "Stundenplan",
      "events": "Ereignisse",
      "classes": "Klassen",
      "account": "Profil",
      "pleaseRestartTheApplicationForOptimalPerformance":
          "Bitte starte die Anwendung neu, um eine optimale Leistung zu erhalten.",
      "title": "Titel",
      "eventType": "Ereignistyp",
      "description": "Beschreibung",
      "date": "Datum",
      "startTime": "Startzeit",
      "endTime": "Endzeit",
      "room": "Zimmer",
      "createdBy": "Erstellt von",
      "noEventsListed": "Keine Ereignisse aufgelistet.",
      "pleaseCheckYourCredentials":
          "Wir konnten Ihre Angaben nicht in unserem System finden.",
      "currentPassword": "Aktuelles Passwort",
      "newPassword": "Neues Passwort",
      "confirmPassword": "Passwort bestätigen",
      "filterBy": "Filtern nach",
      "credits": "Danksagungen",
      "classmates": "Klassenmitglieder",
      "teachers": "Klassenlehrer",
      "settings": "Einstellungen",
      "isOnlineText": "Und wir sind zurück im Internet",
      "isOfflineText": "Scotty, das Internet ist ausgefallen...",
      "writeEmailTo": "Schreibe eine E-Mail an",
      "information": "information",
      "monday": "Montag",
      "tuesday": "Dienstag",
      "wednesday": "Mittwoch",
      "thursday": "Donnerstag",
      "friday": "Freitag",
      "saturday": "Samstag",
      "sunday": "Sonntag",
      "enterValidEmail":
          "Ich weiss ja nicht aber das sieht mir nicht nach einer E-Mail aus...",
      "changeEmail": "E-Mail ändern",
      "changePassword": "Passwort ändern",
      "disclaimer": "Haftungsausschluss",
      "disclaimer_text":
          "Der Autor übernimmt keinerlei Gewähr hinsichtlich der inhaltlichen Richtigkeit, Genauigkeit, Aktualität, Zuverlässigkeit und Vollständigkeit der Informationen.\n\nHaftungsansprüche gegen den Autor wegen Schäden materieller oder immaterieller Art, welche aus dem Zugriff oder der Nutzung bzw. Nichtnutzung der veröffentlichten Informationen, durch Missbrauch der Verbindung oder durch technische Störungen entstanden sind, werden ausgeschlossen.\n\nAlle Angebote sind unverbindlich. Der Autor behält es sich ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.",
      "copyrights": "Urheberrechte",
      "copyrights_text":
          "Die Urheber- und alle anderen Rechte an Inhalten, Bildern, Fotos oder anderen Dateien auf der Website gehören ausschliesslich Daniel Seifert oder den speziell genannten Rechtsinhabern. Für die Reproduktion jeglicher Elemente ist die schriftliche Zustimmung der Urheberrechtsträger im Voraus einzuholen.",
      "privacy": "Datenschutz",
      "privacy_text":
          "Gestützt auf Artikel 13 der schweizerischen Bundesverfassung und die datenschutzrechtlichen Bestimmungen des Bundes (Datenschutzgesetz, DSG) hat jede Person Anspruch auf Schutz ihrer Privatsphäre sowie auf Schutz vor Missbrauch ihrer persönlichen Daten. Wir halten diese Bestimmungen ein. Persönliche Daten werden streng vertraulich behandelt und weder an Dritte verkauft noch weiter gegeben.\n\nIn enger Zusammenarbeit mit unseren Hosting-Providern bemühen wir uns, die Datenbanken so gut wie möglich vor fremden Zugriffen, Verlusten, Missbrauch oder vor Fälschung zu schützen.\n\nBeim Zugriff auf unsere Webseiten werden folgende Daten in Logfiles gespeichert: IP-Adresse, Datum, Uhrzeit, Browser-Anfrage und allg. übertragene Informationen zum Betriebssystem resp. Browser. Diese Nutzungsdaten bilden die Basis für statistische, anonyme Auswertungen, so dass Trends erkennbar sind, anhand derer wir unsere Angebote entsprechend verbessern können.",
    },
    "fr": {
      "userData": "Données utilisateur",
      "language": "Langue",
      "userName": "Nom d'utilisateur",
      "email": "E-Mail",
      "about": "Mentions légales",
      "firstName": "Prénom",
      "surname": "Nom de famille",
      "password": "Mot de passe",
      "usernameOrEmail": "Nom d'utilisateur or E-Mail",
      "usernameOrEmailMustHaveAtLeastForCharacters":
          "Le nom d'utilisateur ou le courriel doit avoir au moins 4 caractères.",
      "successfullySignedIn": "Signé avec succès en",
      "signInToLearnable": "S'inscrire à Learnable",
      "signIn": "Inscrire",
      "signOut": "Annuler",
      "loadingData": "Chargement des données...",
      "fetchingData": "Chargement des données...",
      "timetable": "Plan de cours",
      "events": "Événements",
      "classes": "Classes",
      "account": "Compte",
      "pleaseRestartTheApplicationForOptimalPerformance":
          "Veuillez redémarrer l'application pour des performances optimales.",
      "title": "Titre",
      "eventType": "Type d'événement",
      "description": "Description",
      "date": "Date",
      "startTime": "Heure de début",
      "endTime": "Heure de fin",
      "room": "Espace",
      "createdBy": "Créé par",
      "noEventsListed": "Aucun événement n'est répertorié.",
      "pleaseCheckYourCredentials":
          "Nous n'avons pas pu trouver vos informations dans notre système.",
      "currentPassword": "Mot de passe actuel",
      "newPassword": "Nouveau mot de passe",
      "confirmPassword": "Confirmer le mot de passe",
      "filterBy": "Filtrer par",
      "credits": "Générique",
      "classmates": "Membres du groupe",
      "teachers": "Professeurs de classe",
      "settings": "Paramètres",
      "isOnlineText": "Connexion Internet : true",
      "isOfflineText": "On dirait qu'on a perdu notre connexion.",
      "writeEmailTo": "Écrivez un courriel à l'adresse suivante",
      "information": "information",
      "monday": "Lundi",
      "tuesday": "Mardi",
      "wednesday": "Mercredi",
      "thursday": "Jeudi",
      "friday": "Vendredi",
      "saturday": "Samedi",
      "sunday": "Dimanche",
      "enterValidEmail":
          "Je ne sais pas Rick, ça ne ressemble pas à un email pour moi.",
      "changeEmail": "Modifier l'email",
      "changePassword": "changer le mot de passe",
      "disclaimer": "Clause de non-responsabilité",
      "disclaimer_text":
          "L'auteur décline toute responsabilité quant à l'exactitude, la précision, l'actualité, la fiabilité et l'exhaustivité des informations mises à disposition.\n\nLa responsabilité de l'auteur est exclue en cas de dommages matériels ou immatériels résultant de l'accès, de l'utilisation ou de la non-utilisation des informations publiées, d'une mauvaise utilisation de la connexion ou de défaillances techniques.\n\nToutes les offres sont sans engagement. L'auteur se réserve expressément le droit de modifier, de compléter ou d'effacer des parties des pages ou l'ensemble de l'offre sans avis préalable ou de cesser temporairement ou définitivement la publication.",
      "copyrights": "Les droits d'auteur",
      "copyrights_text":
          "Les droits d'auteur et tous les autres droits sur le contenu, les images, les photographies ou autres fichiers du site appartiennent exclusivement à Learnable ou aux propriétaires spécifiquement désignés. Pour la reproduction de tout élément, le consentement écrit du détenteur des droits d'auteur doit être obtenu à l'avance.",
      "privacy": "Vie privée",
      "privacy_text":
          "En vertu de l'article 13 de la Constitution fédérale et des dispositions de la Confédération relatives à la protection des données (loi sur la protection des données, LPD), toute personne a droit à la protection de sa vie privée et à la protection contre l'utilisation abusive de ses données personnelles. Nous nous conformons à ces dispositions. Les données personnelles sont traitées de manière strictement confidentielle et ne sont ni vendues ni transmises à des tiers.\n\nEn étroite collaboration avec nos hébergeurs, nous nous efforçons de protéger au mieux les bases de données contre tout accès non autorisé, perte, abus ou falsification.\n\nLorsque vous accédez à notre site Web, les données suivantes sont enregistrées dans des fichiers journaux : L'adresse IP, la date, l'heure, la demande de navigateur et les informations généralement transmises sur le système d'exploitation ou le navigateur. Ces données d'utilisation servent de base à des évaluations statistiques et anonymes, permettant d'identifier les tendances et d'améliorer nos offres en conséquence.",
    },
    "es": {
      "userData": "Datos de usuario",
      "language": "Lenguage",
      "userName": "Nombre de usuario",
      "email": "Email",
      "about": "Impressum",
      "firstName": "Primer nombre",
      "surname": "Apellido",
      "password": "Contraseña",
      "usernameOrEmail": "Nombre de usuraio o email",
      "usernameOrEmailMustHaveAtLeastForCharacters":
          "Nombre de usuraio o email deven tener por lo menos 4 signos.",
      "successfullySignedIn": "La seción ha sido comensada exitosamente.",
      "signInToLearnable": "Inciar la seción en Learnable",
      "signIn": "Inciar seción",
      "signOut": "Cerrar seción",
      "loadingData": "Cargar datos...",
      "fetchingData": "Descargar datos...",
      "timetable": "Calendario",
      "events": "Eventos",
      "classes": "Cursos",
      "account": "Cuentas",
      "pleaseRestartTheApplicationForOptimalPerformance":
          "Por favor reinciar la aplicación parar mejorar la rendimiento.",
      "title": "Titulo",
      "eventType": "Tipo de evento",
      "description": "Descripción",
      "date": "Fecha",
      "startTime": "Comienso",
      "endTime": "Fin",
      "room": "Cuarto",
      "createdBy": "Creado por",
      "noEventsListed": "Ningun evento inscrito",
      "pleaseCheckYourCredentials": "Por favor controla tus credenciales.",
      "currentPassword": "Contraseña presente",
      "newPassword": "Contraseña nueva",
      "confirmPassword": "Confirma la contraseña",
      "filterBy": "Filtrar por",
      "credits": "Reconocimientos",
      "classmates": "Miembros de clase",
      "teachers": "Maestro de clase",
      "settings": "Configuraciones",
      "isOnlineText": "Conexión a Internet: verdadera.",
      "isOfflineText": "Parece que perdimos nuestra conexión.",
      "writeEmailTo": "Escriba un correo electrónico a",
      "information": "información",
      "monday": "Lunes",
      "tuesday": "Martes",
      "wednesday": "Miércoles",
      "thursday": "Jueves",
      "friday": "Viernes",
      "saturday": "Sábado",
      "sunday": "Domingo",
      "enterValidEmail":
          "No lo sé, Rick. A mí no me parece un correo electrónico.",
      "changeEmail": "cambiar email",
      "changePassword": "cambiar contraseña",
      "disclaimer": "Descargo de responsabilidad",
      "disclaimer_text":
          "El autor no asume responsabilidad alguna en cuanto a la exactitud, exactitud, actualidad, fiabilidad e integridad de la información proporcionada.\n\nQuedan excluidas las reclamaciones de responsabilidad contra el autor por daños de carácter material o inmaterial derivados del acceso, uso o no uso de la información publicada, del uso indebido de la conexión o de fallos técnicos.\n\nTodas las ofertas son sin compromiso.  El autor se reserva expresamente el derecho a modificar, completar o eliminar partes de las páginas o toda la oferta sin previo aviso o a interrumpir la publicación de forma temporal o permanente.",
      "copyrights": "Derechos de autor",
      "copyrights_text":
          "Los derechos de autor y todos los demás derechos sobre el contenido, imágenes, fotografías u otros archivos del Sitio son propiedad exclusiva de Learnable o de los propietarios específicamente designados. Para la reproducción de cualquier elemento, debe obtenerse previamente el consentimiento por escrito del titular de los derechos de autor.",
      "privacy": "Privacidad",
      "privacy_text":
          "De acuerdo con el artículo 13 de la Constitución Federal Suiza y las disposiciones de protección de datos de la Confederación (Ley de Protección de Datos, DSG), toda persona tiene derecho a la protección de su privacidad y a la protección contra el uso indebido de sus datos personales. Cumplimos con estas disposiciones. Los datos personales se tratan de forma estrictamente confidencial y no se venden ni se transmiten a terceros.\n\nEn estrecha colaboración con nuestros proveedores de alojamiento, nos esforzamos por proteger las bases de datos de la mejor manera posible contra el acceso no autorizado, la pérdida, el uso indebido o la falsificación.\n\nCuando usted accede a nuestro sitio web, los siguientes datos se almacenan en archivos de registro: Dirección IP, fecha, hora, solicitud de navegador e información general transmitida sobre el sistema operativo o el navegador. Estos datos de uso constituyen la base para evaluaciones estadísticas y anónimas, de modo que se puedan identificar las tendencias, sobre la base de las cuales podemos mejorar nuestras ofertas en consecuencia.",
    },
    "it": {
      "userData": "Dati dell'uutilizzatore",
      "language": "Lingua",
      "userName": "ome dell'utilizzatore",
      "email": "Email",
      "about": "Impresso",
      "firstName": "Nome",
      "surname": "Cognome",
      "password": "Password",
      "usernameOrEmail": "Nome dell'utilizzatore o Email",
      "usernameOrEmailMustHaveAtLeastForCharacters":
          "Nome dell'utilizzatore o Email devono avere almeno 4 simboli",
      "successfullySignedIn": "Successamente inscrito",
      "signInToLearnable": "Inscriversi a Learnable",
      "signIn": "Inscriversi",
      "signOut": "Disconnettersi",
      "loadingData": "Scaricare dati...",
      "fetchingData": "Scaricare dati...",
      "timetable": "Calendario",
      "events": "Fatti",
      "classes": "Gradazioni",
      "account": "Conto",
      "pleaseRestartTheApplicationForOptimalPerformance":
          "Riavviare l'applicazione per ottenere una presentazione ottimale.",
      "title": "Titolo",
      "eventType": "Tipo d'evento",
      "description": "Descrizione",
      "date": "Data",
      "startTime": "Ora di inizio",
      "endTime": "Ora di fine",
      "room": "Camera",
      "createdBy": "Creato da",
      "noEventsListed": "Nessun evento é in un elenco.",
      "pleaseCheckYourCredentials":
          "Non siamo riusciti a trovare le vostre informazioni nel nostro sistema.",
      "currentPassword": "Password attuale",
      "newPassword": "Nuovo password",
      "confirmPassword": "Confermare password",
      "filterBy": "Filtra per",
      "credits": "Accrediti",
      "classmates": "Membri della classe",
      "teachers": "Insegnante di classe",
      "settings": "Impostazioni",
      "isOnlineText": "Connessione Internet: vero.",
      "isOfflineText": "Sembra che abbiamo perso il collegamento.",
      "writeEmailTo": "Scrivi una e-mail a",
      "information": "informazioni",
      "monday": "Lunedì",
      "tuesday": "Martedì",
      "wednesday": "Mercoledì",
      "thursday": "Giovedì",
      "friday": "Venerdì",
      "saturday": "Sabato",
      "sunday": "Domenica",
      "enterValidEmail": "Non conosco Rick, non mi sembra un'email.",
      "changeEmail": "cambia e-mail",
      "changePassword": "cambiare la password",
      "disclaimer": "Esclusione di responsabilità",
      "disclaimer_text":
          "L'autore non si assume alcuna responsabilità per quanto riguarda la correttezza, l'esattezza, l'attualità, l'affidabilità e la completezza delle informazioni fornite.\n\nSono escluse rivendicazioni di responsabilità nei confronti dell'autore per danni di natura materiale o immateriale derivanti dall'accesso alle informazioni pubblicate, dall'uso o dal mancato uso delle informazioni pubblicate, dall'uso improprio del collegamento o da difetti tecnici.\n\nTutte le offerte non sono vincolanti. L'autore si riserva espressamente il diritto di modificare, completare o cancellare parti delle pagine o l'intera offerta senza preavviso o di interromperne temporaneamente o definitivamente la pubblicazione.",
      "copyrights": "Diritti d'autore",
      "copyrights_text":
          "Il copyright e tutti gli altri diritti sui contenuti, immagini, fotografie o altri file presenti sul Sito sono di proprietà esclusiva di Learnable o dei proprietari specificatamente designati. Per la riproduzione di qualsiasi elemento, il consenso scritto del titolare del copyright deve essere ottenuto in anticipo.",
      "privacy": "Privacy e tutela della privacy",
      "privacy_text":
          "Ai sensi dell'articolo 13 della Costituzione federale e delle disposizioni sulla protezione dei dati della Confederazione (Legge federale sulla protezione dei dati, LPD), ogni persona ha diritto alla protezione della sua vita privata e alla protezione contro l'abuso dei suoi dati personali. Ci atteniamo a queste disposizioni. I dati personali vengono trattati in modo strettamente confidenziale e non vengono né venduti né ceduti a terzi.\n\nIn stretta collaborazione con i nostri fornitori di hosting, ci sforziamo di proteggere al meglio le banche dati contro l'accesso non autorizzato, la perdita, l'uso improprio o la falsificazione.\n\nQuando si accede al nostro sito web, i seguenti dati vengono salvati in file di log: Indirizzo IP, data, ora, richiesta del browser e, in generale, informazioni sul sistema operativo o sul browser. Questi dati d'uso costituiscono la base per valutazioni statistiche anonime, in modo da poter identificare le tendenze, in base alle quali possiamo migliorare di conseguenza le nostre offerte.",
    },
    "be_de": {
      "userData": "Benutzerdatä",
      "language": "Spraach",
      "userName": "Benutzernamä",
      "email": "E-Mail",
      "about": "Über üs",
      "firstName": "Vorname",
      "surname": "Nachname",
      "password": "Passwort",
      "usernameOrEmail": "Benutzername odr E-Mail",
      "usernameOrEmailMustHaveAtLeastForCharacters":
          "Chum itz, dr Benutzername odr z'Email müesse zmingscht 4 Zeichä läng si.",
      "successfullySignedIn": "Du hesch di erfougrych ahgmäudet!",
      "signInToLearnable": "Chum und mäud di ah bi Learnable.",
      "signIn": "Ahmäudä",
      "signOut": "Abmäudä",
      "loadingData": "Muess Date abelade...",
      "fetchingData": "Muess Date abelade...",
      "timetable": "Stundäplan",
      "events": "Ereigniss",
      "classes": "Klassene",
      "account": "Profiu",
      "pleaseRestartTheApplicationForOptimalPerformance":
          "Für die beschti leischtig sötsch eventuell schnäu d'App nöistarte.",
      "title": "Titu",
      "eventType": "Ereignistyp",
      "description": "Beschrybig",
      "date": "Datum",
      "startTime": "Startzyt",
      "endTime": "Endzyt",
      "room": "Zimmr",
      "createdBy": "Ersteut vom",
      "noEventsListed": "Sonä chabis, kenni Ereigniss sy ufglischtet.",
      "pleaseCheckYourCredentials":
          "Mir hei dyni Ahgabe nid ih üsem System chönnä finde.",
      "currentPassword": "Z'Aktuelle Passwort",
      "newPassword": "Z'Nöiä Passwort",
      "confirmPassword": "Passwort bestätige",
      "filterBy": "Fiutere nach",
      "credits": "Es grosses MERCI ah",
      "classmates": "Klassehomies",
      "teachers": "Klasselehrer",
      "settings": "Ystellige",
      "isOnlineText": "Yo mir si wyder am start!",
      "isOfflineText": "Z internet... es het üs verlah...",
      "writeEmailTo": "Schriib es mail ah",
      "information": "Information",
      "monday": "Mäntig",
      "tuesday": "Zyschtig",
      "wednesday": "Mittwuch",
      "thursday": "Donschtig",
      "friday": "Frytig",
      "saturday": "Samschtig",
      "sunday": "Sunntig",
      "enterValidEmail": "Ih weiss nid, ds gseht nid würk nach ere mail us...",
      "changeEmail": "Würd gärn mis Mail ändere",
      "changePassword": "Mis Passwort würdi ono gärn ändere.",
      "disclaimer": "Haftungsausschluss",
      "disclaimer_text":
          "Der Autor übernimmt keinerlei Gewähr hinsichtlich der inhaltlichen Richtigkeit, Genauigkeit, Aktualität, Zuverlässigkeit und Vollständigkeit der Informationen.\n\nHaftungsansprüche gegen den Autor wegen Schäden materieller oder immaterieller Art, welche aus dem Zugriff oder der Nutzung bzw. Nichtnutzung der veröffentlichten Informationen, durch Missbrauch der Verbindung oder durch technische Störungen entstanden sind, werden ausgeschlossen.\n\nAlle Angebote sind unverbindlich. Der Autor behält es sich ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.",
      "copyrights": "Urheberrechte",
      "copyrights_text":
          "Die Urheber- und alle anderen Rechte an Inhalten, Bildern, Fotos oder anderen Dateien auf der Website gehören ausschliesslich Daniel Seifert oder den speziell genannten Rechtsinhabern. Für die Reproduktion jeglicher Elemente ist die schriftliche Zustimmung der Urheberrechtsträger im Voraus einzuholen.",
      "privacy": "Datenschutz",
      "privacy_text":
          "Gestützt auf Artikel 13 der schweizerischen Bundesverfassung und die datenschutzrechtlichen Bestimmungen des Bundes (Datenschutzgesetz, DSG) hat jede Person Anspruch auf Schutz ihrer Privatsphäre sowie auf Schutz vor Missbrauch ihrer persönlichen Daten. Wir halten diese Bestimmungen ein. Persönliche Daten werden streng vertraulich behandelt und weder an Dritte verkauft noch weiter gegeben.\n\nIn enger Zusammenarbeit mit unseren Hosting-Providern bemühen wir uns, die Datenbanken so gut wie möglich vor fremden Zugriffen, Verlusten, Missbrauch oder vor Fälschung zu schützen.\n\nBeim Zugriff auf unsere Webseiten werden folgende Daten in Logfiles gespeichert: IP-Adresse, Datum, Uhrzeit, Browser-Anfrage und allg. übertragene Informationen zum Betriebssystem resp. Browser. Diese Nutzungsdaten bilden die Basis für statistische, anonyme Auswertungen, so dass Trends erkennbar sind, anhand derer wir unsere Angebote entsprechend verbessern können.",
    },
  };

  String get applicationName => "Learnable";

  String get userData => _localizedValues[_languageCode]["userData"];

  String get language => _localizedValues[_languageCode]["language"];

  String get userName => _localizedValues[_languageCode]["userName"];

  String get email => _localizedValues[_languageCode]["email"];

  String get about => _localizedValues[_languageCode]["about"];

  String get firstName => _localizedValues[_languageCode]["firstName"];

  String get surname => _localizedValues[_languageCode]["surname"];

  String get password => _localizedValues[_languageCode]["password"];

  String get usernameOrEmail =>
      _localizedValues[_languageCode]["usernameOrEmail"];

  String get usernameOrEmailMustHaveAtLeastForCharacters =>
      _localizedValues[_languageCode]
          ["usernameOrEmailMustHaveAtLeastForCharacters"];

  String get successfullySignedIn =>
      _localizedValues[_languageCode]["successfullySignedIn"];

  String get signInToLearnable =>
      _localizedValues[_languageCode]["signInToLearnable"];

  String get signIn => _localizedValues[_languageCode]["signIn"];

  String get signOut => _localizedValues[_languageCode]["signOut"];

  String get loadingData => _localizedValues[_languageCode]["loadingData"];

  String get fetchingData => _localizedValues[_languageCode]["fetchingData"];

  String get timetable => _localizedValues[_languageCode]["timetable"];

  String get events => _localizedValues[_languageCode]["events"];

  String get classes => _localizedValues[_languageCode]["classes"];

  String get account => _localizedValues[_languageCode]["account"];

  String get pleaseRestartTheApplicationForOptimalPerformance =>
      _localizedValues[_languageCode]
          ["pleaseRestartTheApplicationForOptimalPerformance"];

  String get title => _localizedValues[_languageCode]["title"];

  String get eventType => _localizedValues[_languageCode]["eventType"];

  String get description => _localizedValues[_languageCode]["description"];

  String get date => _localizedValues[_languageCode]["date"];

  String get startTime => _localizedValues[_languageCode]["startTime"];

  String get endTime => _localizedValues[_languageCode]["endTime"];

  String get room => _localizedValues[_languageCode]["room"];

  String get createdBy => _localizedValues[_languageCode]["createdBy"];

  String get noEventsListed =>
      _localizedValues[_languageCode]["noEventsListed"];

  String get pleaseCheckYourCredentials =>
      _localizedValues[_languageCode]["pleaseCheckYourCredentials"];

  String get currentPassword =>
      _localizedValues[_languageCode]["currentPassword"];

  String get newPassword => _localizedValues[_languageCode]["newPassword"];

  String get confirmPassword =>
      _localizedValues[_languageCode]["confirmPassword"];

  String get filterBy => _localizedValues[_languageCode]["filterBy"];

  String get credits => _localizedValues[_languageCode]["credits"];

  String get classmates => _localizedValues[_languageCode]["classmates"];

  String get teachers => _localizedValues[_languageCode]["teachers"];

  String get settings => _localizedValues[_languageCode]["settings"];

  String get isOnline => _localizedValues[_languageCode]["isOnlineText"];

  String get isOffline => _localizedValues[_languageCode]["isOfflineText"];

  String get writeEmailTo => _localizedValues[_languageCode]["writeEmailTo"];

  String get information => _localizedValues[_languageCode]["information"];

  String get monday => _localizedValues[_languageCode]["monday"];

  String get tuesday => _localizedValues[_languageCode]["tuesday"];

  String get wednesday => _localizedValues[_languageCode]["wednesday"];

  String get thursday => _localizedValues[_languageCode]["thursday"];

  String get friday => _localizedValues[_languageCode]["friday"];

  String get saturday => _localizedValues[_languageCode]["saturday"];

  String get sunday => _localizedValues[_languageCode]["sunday"];

  String get enterValidEmail =>
      _localizedValues[_languageCode]["enterValidEmail"];

  String get changeEmail => _localizedValues[_languageCode]["changeEmail"];

  String get changePassword =>
      _localizedValues[_languageCode]["changePassword"];

  String get disclaimer => _localizedValues[_languageCode]["disclaimer"];

  String get disclaimerText =>
      _localizedValues[_languageCode]["disclaimer_text"];

  String get copyrights => _localizedValues[_languageCode]["copyrights"];

  String get copyrightsText =>
      _localizedValues[_languageCode]["copyrights_text"];

  String get privacy => _localizedValues[_languageCode]["privacy"];

  String get privacyText => _localizedValues[_languageCode]["privacy_text"];

  String getLanguageCode() => _languageCode;

  String setLanguageCode(String languageCode) {
    _languageCode =
        _localizedValues.containsKey(languageCode) ? languageCode : "de";

    if (_subscribers.length > 0)
      for (LanguageChangeDetector c in _subscribers)
        c.onLanguageCodeChange(_languageCode);

    return _languageCode;
  }

  void subscribe(LanguageChangeDetector detector) {
    this._subscribers.add(detector);
  }

  void unsubscribe(LanguageChangeDetector detector) {
    _subscribers.remove(detector);
  }
}

abstract class LanguageChangeDetector {
  void onLanguageCodeChange(String languageCode);
}
