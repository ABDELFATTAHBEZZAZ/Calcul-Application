# 🧮 Calculateur Web Application - Java EE

Une application web de calculatrice développée en Java EE qui permet de calculer la somme de deux nombres. Ce projet a été développé dans le cadre d'un cours Java EE pour démontrer la compréhension des concepts fondamentaux du développement web avec Java.

## 📋 Table des matières

- [Aperçu](#aperçu)
- [Fonctionnalités](#fonctionnalités)
- [Technologies utilisées](#technologies-utilisées)
- [Prérequis](#prérequis)
- [Installation](#installation)
- [Structure du projet](#structure-du-projet)
- [Utilisation](#utilisation)
- [Architecture](#architecture)
- [Concepts démontrés](#concepts-démontrés)
- [Auteur](#auteur)

## 🎯 Aperçu

Cette application web permet aux utilisateurs de saisir deux nombres et d'obtenir leur somme. L'application implémente le pattern MVC (Model-View-Controller) et utilise les technologies Java EE modernes (Jakarta EE).

### Captures d'écran

- **Page d'accueil** : Interface simple et intuitive pour saisir les deux nombres
- **Page de résultat** : Affichage du résultat avec gestion des erreurs

## ✨ Fonctionnalités

- ✅ Calcul de la somme de deux nombres (entiers ou décimaux)
- ✅ Validation des données côté serveur
- ✅ Gestion des erreurs (champs vides, format invalide)
- ✅ Interface utilisateur moderne et responsive
- ✅ Pattern MVC implémenté
- ✅ Redirection automatique en cas d'accès GET

## 🛠️ Technologies utilisées

- **Java 17** - Langage de programmation
- **Jakarta Servlet API 6.1.0** - Gestion des requêtes HTTP
- **Jakarta JSP 3.1.1** - Génération de pages dynamiques
- **Jakarta JSTL 3.0.0** - Bibliothèque de balises JSP
- **Maven 3.x** - Gestion des dépendances et build
- **HTML5/CSS3** - Interface utilisateur
- **Jakarta EE** - Plateforme Java Enterprise Edition

## 📦 Prérequis

Avant de commencer, assurez-vous d'avoir installé :

- **JDK 17** ou supérieur
- **Apache Maven 3.6+** (ou utilisez le wrapper Maven inclus : `mvnw`)
- **Serveur d'application Java EE** compatible Jakarta EE :
  - Apache Tomcat 10.x
  - Eclipse Jetty 11.x
  - WildFly 27+
  - Payara Server 6+

## 🚀 Installation

### 1. Cloner le dépôt

```bash
git clone https://github.com/ABDELFATTAHBEZZAZ/Calcul-Application.git
cd Calcul-Application
```

### 2. Compiler le projet

Utilisez Maven pour compiler et créer le fichier WAR :

```bash
# Avec Maven installé
mvn clean package

# Ou avec le wrapper Maven (Windows)
mvnw.cmd clean package

# Ou avec le wrapper Maven (Linux/Mac)
./mvnw clean package
```

Le fichier WAR sera généré dans le dossier `target/CalculatriceDevoir-1.0-SNAPSHOT.war`

### 3. Déployer sur le serveur

#### Option A : Déploiement manuel
1. Copiez le fichier `.war` dans le dossier `webapps` de votre serveur Tomcat
2. Démarrez le serveur Tomcat
3. Accédez à l'application via : `http://localhost:8080/CalculatriceDevoir-1.0-SNAPSHOT/`

#### Option B : Déploiement via Maven (Tomcat)
```bash
mvn clean package
mvn tomcat7:deploy
```

#### Option C : Utiliser un IDE
- Importez le projet dans IntelliJ IDEA ou Eclipse
- Configurez un serveur d'application
- Déployez directement depuis l'IDE

## 📁 Structure du projet

```
Calculator-Web-Application---Java-EE-main/
│
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── example/
│       │           └── calculatricedevoir/
│       │               └── CalculServlet.java    # Contrôleur (Servlet)
│       │
│       └── webapp/
│           ├── index.html                         # Vue (Formulaire)
│           ├── resultat.jsp                       # Vue (Résultat)
│           └── WEB-INF/
│               └── web.xml                        # Configuration web
│
├── target/                                        # Fichiers générés (ignorés par Git)
├── pom.xml                                        # Configuration Maven
├── .gitignore                                    # Fichiers ignorés par Git
└── README.md                                      # Ce fichier
```

## 💻 Utilisation

1. **Démarrez votre serveur d'application** (Tomcat, Jetty, etc.)

2. **Accédez à l'application** :
   ```
   http://localhost:8080/CalculatriceDevoir-1.0-SNAPSHOT/
   ```

3. **Saisissez deux nombres** dans le formulaire :
   - Premier nombre : Entrez un nombre (ex: 10.5)
   - Deuxième nombre : Entrez un nombre (ex: 20.3)

4. **Cliquez sur "Calculer"** pour obtenir la somme

5. **Consultez le résultat** affiché sur la page de résultat

### Exemple d'utilisation

- **Entrée** : Premier nombre = `15.5`, Deuxième nombre = `24.7`
- **Résultat** : `40.2`

## 🏗️ Architecture

L'application suit le pattern **MVC (Model-View-Controller)** :

### Controller (Contrôleur)
- **`CalculServlet.java`** : Gère les requêtes HTTP POST, valide les données, effectue le calcul et redirige vers la vue appropriée

### View (Vue)
- **`index.html`** : Formulaire de saisie des deux nombres
- **`resultat.jsp`** : Page d'affichage du résultat avec gestion des erreurs

### Model (Modèle)
- Les données sont traitées directement dans le servlet (logique métier simple)

### Flux de l'application

```
1. Utilisateur accède à index.html
2. Saisit deux nombres et soumet le formulaire (POST)
3. CalculServlet reçoit la requête
4. Validation des données
5. Calcul de la somme
6. Redirection vers resultat.jsp avec les attributs
7. Affichage du résultat ou message d'erreur
```

## 📚 Concepts démontrés

Ce projet illustre les concepts suivants de Java EE :

### ✅ Servlet Lifecycle
- Initialisation, service, et destruction du servlet
- Méthodes `doPost()` et `doGet()`

### ✅ Configuration Servlet
- Annotation `@WebServlet` pour la configuration
- Fichier `web.xml` pour la configuration alternative

### ✅ JSP (JavaServer Pages)
- Pages dynamiques avec scriptlets JSP
- Expression Language (EL) pour l'affichage des données

### ✅ Gestion des requêtes/réponses
- Récupération des paramètres HTTP (`request.getParameter()`)
- Définition d'attributs de requête (`request.setAttribute()`)
- Redirection et forwarding (`RequestDispatcher`)

### ✅ Validation de formulaire
- Validation côté serveur des champs vides
- Gestion des erreurs de format numérique
- Messages d'erreur utilisateur

### ✅ Pattern MVC
- Séparation des responsabilités
- Contrôleur (Servlet), Vue (HTML/JSP), Modèle (logique métier)

### ✅ Gestion des erreurs
- Try-catch pour les exceptions
- Affichage conditionnel des erreurs dans la vue

## 🧪 Tests

Pour exécuter les tests unitaires :

```bash
mvn test
```

## 📝 Configuration

### Port du serveur

Par défaut, Tomcat utilise le port **8080**. Pour changer le port, modifiez le fichier `conf/server.xml` de Tomcat.

### Contexte de l'application

Le contexte de l'application est défini par le nom du fichier WAR. Pour le personnaliser, renommez le fichier WAR ou configurez-le dans `web.xml`.

## 🤝 Contribution

Les contributions sont les bienvenues ! Pour contribuer :

1. Fork le projet
2. Créez une branche pour votre fonctionnalité (`git checkout -b feature/AmazingFeature`)
3. Committez vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrez une Pull Request

## 📄 Licence

Ce projet a été développé dans le cadre d'un cours académique.

## 👤 Auteur

**ABDELFATTAH BEZZAZ**

- GitHub: [@ABDELFATTAHBEZZAZ](https://github.com/ABDELFATTAHBEZZAZ)
- Dépôt: [Calcul-Application](https://github.com/ABDELFATTAHBEZZAZ/Calcul-Application)

## 🙏 Remerciements

- Professeurs et encadrants du cours Java EE
- Communauté Jakarta EE pour la documentation

---

⭐ Si ce projet vous a été utile, n'hésitez pas à lui donner une étoile !
