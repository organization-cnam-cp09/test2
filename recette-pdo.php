<?php /* fichier cnam/nfa083/20170401-recette.php   20170403-PBO */

/* CONNEXION BDD ================================================= */
    include("inc/connexionpdo.inc.php");     
    $con=connexionpdo('cnamcp09_recette20170401');

/* REQUETE SQL et ENVOI requete au SERVEUR pourtraitement ======== */
  $requete1 = "SELECT plat_id, plat_nom, plat_position FROM plat";
    $resultat = $con->query($requete1); ?>

<!-- Préparation de l'affichage : entête HTML ====================  -->
  <!DOCTYPE HTML><html>
  <head><meta charset="utf-8" />
        <title>BDD "cnamcp09_recette20170401" avec PDO</title>
  </head>
  <body>
    <h1>BDD "cnamcp09_recette20170401" avec PDO</h1><?php

/* Récupération et affichage des données avec while ============== */
    while($donnees = $resultat->fetch()) { ?>
        <p><?php
        echo       $donnees['plat_id'];
        echo ' | '.$donnees['plat_nom']; 
        echo ' | '.$donnees['plat_position']; 
        ?></p><?php 
    } ?>

<!-- Fermeture du fichier HTML =================================== -->
  </body>
  </html>
