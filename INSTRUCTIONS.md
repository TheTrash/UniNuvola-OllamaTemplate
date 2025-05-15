# 🧪 Istruzioni per l'Uso

## Avvio del servizio Ollama

1. Apri **una scheda del terminale**.
2. Avvia il server Ollama con il comando:

   ```bash
   ollama serve
   ```

   Questo comando avvia il servizio locale necessario per utilizzare i modelli.

---

## Download e utilizzo di un modello

1. Apri **una nuova scheda del terminale**.
2. Esegui il comando seguente, sostituendo `<nome_modello>` con il nome del modello desiderato (es. `llama3`):

   ```bash
   ollama run <nome_modello>
   ```

   Il comando scaricherà automaticamente il modello (se non è già presente) e avvierà una sessione interattiva.

---

## Utilizzo da Python

È possibile interagire con Ollama direttamente da uno script Python usando la libreria `ollama`.

### Esempio:

```python
import ollama

# Testo da riassumere
text = """
Il cambiamento climatico è una delle principali sfide del nostro tempo. È causato principalmente dall'aumento dei gas serra nell'atmosfera, derivanti dalle attività umane come l'uso di combustibili fossili, la deforestazione e l'agricoltura intensiva. Le conseguenze includono l'innalzamento del livello del mare, eventi meteorologici estremi e perdita di biodiversità."
"""

# Prompt di esempio
prompt = f"Summarize the following text in one sentence:\n\"\"\"\n{text}\n\"\"\""

# Chiamata al modello
result = ollama.generate(model='llama2', prompt=prompt)
print("Summary:", result['response'])
```

⚠️ Assicurati che il server Ollama sia in esecuzione (`ollama serve`) prima di eseguire lo script.
