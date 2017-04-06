<?php /* fichier cnam/nfa083/20170401-recette/inc/connexionpdo.inc.php - 20170403-PBO */

  function connexionpdo($nombdd) {

/* Variables de connexion à la BDD ============================================= */
  $serveur = 'localhost';   $loginserveur = 'root';   $mdpserveur = '';

/* CONNEXION serveur, définition du charset, connexion BDD, requete SQL ===== */

    $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $pdo_options[PDO::MYSQL_ATTR_INIT_COMMAND] = 'SET NAMES utf8';
    $con = new PDO('mysql:host='.$serveur.';dbname='.$nombdd, $loginserveur, $mdpserveur, $pdo_options);   // Connexion à la BDD
    return $con; /* pour récupérer identifiant de connexion */

  } ?>
