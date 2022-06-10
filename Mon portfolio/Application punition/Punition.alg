<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER punition" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" nbDecimales="8" epaisseurPoint="2" epaisseurLigne="2" arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#punition" algoitem="punition EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#punition#&quot;Je ne dois pas manger en classe&quot;#pasliste" algoitem="punition PREND_LA_VALEUR &quot;Je ne dois pas manger en classe&quot;"/>
        <item code="12#i#0#20" algoitem="POUR i ALLANT_DE 0 A 20">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#punition#1#pasliste" algoitem="AFFICHER punition"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
