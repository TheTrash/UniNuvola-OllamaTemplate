🧪 **Istruzioni per l'Uso**

### Avvio del servizio Ollama
1. Apri **una scheda del terminale**.
2. Avvia il server Ollama con il comando:

    ```bash
    ollama serve
    ```

    Questo comando avvia il servizio locale necessario per utilizzare i modelli.

---
### Download e utilizzo di un modello
1. Apri **una nuova scheda del terminale**.
2. Esegui il comando seguente, sostituendo `<nome_modello>` con il nome del modello desiderato (es. `llama3`):

```bash
ollama run <nome_modello>
```

Il comando scaricherà automaticamente il modello (se non è già presente) e avvierà una sessione interattiva.
