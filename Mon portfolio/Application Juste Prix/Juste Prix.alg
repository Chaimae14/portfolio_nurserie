<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Jeu du juste prix:&#xa;1/ demander un nombre à deviner au J1&#xa;2/ écrire une variable tentatives=10&#xa;3/ demander un nombre au J2&#xa;4/ écrire une condition si le nombre du J2>J1 =>Ecrire &quot;c'est -&quot; si le nombre du J2&lt;J1 =>&quot;c'est +&quot;, sinon &quot;Bravo&quot;&#xa;5/ si le nombre du J2 est &lt; ou > au J1 => le nombre de tentative baisse de 1&#xa;6/ enveloppez le tout dans une boucle Tant que, qui a pour condition: tentative>0 ou statut!=&quot;Victoire&quot;" courant="FIN_TANT_QUE"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" nbDecimales="8" epaisseurPoint="2" arrondiAuto="vrai" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb1" algoitem="nb1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nb2" algoitem="nb2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tentatives" algoitem="tentatives EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#victoire" algoitem="victoire EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#choix" algoitem="choix EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#choix#&quot;oui&quot;#pasliste" algoitem="choix PREND_LA_VALEUR &quot;oui&quot;"/>
        <item code="5#victoire#&quot;D&quot;#pasliste" algoitem="victoire PREND_LA_VALEUR &quot;D&quot;"/>
        <item code="15#choix==&quot;oui&quot;" algoitem="TANT_QUE (choix==&quot;oui&quot;) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Donner un nombre#0" algoitem="AFFICHER &quot;Donner un nombre&quot;"/>
            <item code="2#nb1#pasliste" algoitem="LIRE nb1"/>
            <item code="5#tentatives#10#pasliste" algoitem="tentatives PREND_LA_VALEUR 10"/>
            <item code="5#victoire#&quot;D&quot;#pasliste" algoitem="victoire PREND_LA_VALEUR &quot;D&quot;"/>
            <item code="15#tentatives>0 et victoire!=&quot;V&quot;" algoitem="TANT_QUE (tentatives>0 et victoire!=&quot;V&quot;) FAIRE">
                <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                <item code="4#Donner un nombre#1" algoitem="AFFICHER &quot;Donner un nombre&quot;"/>
                <item code="2#nb2#pasliste" algoitem="LIRE nb2"/>
                <item code="6#nb2==nb1" algoitem="SI (nb2==nb1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Bravo#1" algoitem="AFFICHER &quot;Bravo&quot;"/>
                    <item code="5#victoire#&quot;V&quot;#pasliste" algoitem="victoire PREND_LA_VALEUR &quot;V&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="5#tentatives#tentatives-1#pasliste" algoitem="tentatives PREND_LA_VALEUR tentatives-1"/>
                        <item code="6#nb2>nb1" algoitem="SI (nb2>nb1) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4#c'est -#1" algoitem="AFFICHER &quot;c'est -&quot;"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="4#c'est +#1" algoitem="AFFICHER &quot;c'est +&quot;"/>
                                <item code="11#finsinon" algoitem="FIN_SINON"/>
                            </item>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
            </item>
            <item code="4#Voulez-vous recommencer?#1" algoitem="AFFICHER &quot;Voulez-vous recommencer?&quot;"/>
            <item code="2#choix#pasliste" algoitem="LIRE choix"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
