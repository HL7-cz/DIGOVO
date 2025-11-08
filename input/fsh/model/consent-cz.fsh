Logical: LogCzConsentReuseData
Id: LogConsentReuseDataCz
Title: "Souhlas s opakovaným použitím dat (cz)"
Description: """Záznam o souhlasu pacienta nebo zákonného zástupce s opakovaným použitím dat pacienta."""

* souhlasOpakovanePouzitiDat 1..1 boolean "Souhlas pacienta/zákonného zástupce s opakovaným použitím dat" """Určuje, zda pacient nebo jeho zákonný zástupce udělil souhlas s opakovaným použitím dat (Yes/No). Pokud je pacient neschopen souhlasu, bezvědomí apod., souhlas vyjádří zákonný zástupce. V případě sporné situace se uvede „ne“."""
