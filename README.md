## NAG_GET_LOGIN by .py_flavor
###Shrnutí
Tento program napsaný v bashi slouží k příhlášení/ registrování na NAG IoE 2015 přes odkaz a metodu GET.

###Popis programu
Do promněných se nejdříve nahrají sériové číslo a hostname, poté se skript zeptá na ID týmu a název týmu.
Následně použije příkaz wget s do URL _https://ioe.zcu.cz/update.php?id=_ doplní získané údaje a pošle je.

###Spuštění programu
Skript stačí spustit s jednoduchým příkazem `sh nagioe_login.sh`
