# Testando Ollama Localmente

Se você quer testar a geração de documentação com Ollama localmente antes de fazer commit, siga os passos abaixo:

## 1. Instalar Ollama

```bash
# macOS
brew install ollama

# Linux
curl -fsSL https://ollama.ai/install.sh | sh
```

## 2. Baixar o Modelo

```bash
ollama pull mistral
# Primeira vez leva ~2-3 minutos, depois fica em cache
```

## 3. Rodar Ollama em Background

```bash
# Terminal 1: rodar servidor
ollama serve

# Terminal 2 (enquanto o servidor roda): testar
curl http://localhost:11434/api/tags
# Deve retornar JSON com modelos disponíveis
```

## 4. Testar Script Manualmente

```bash
# Terminal 2 (com Ollama rodando em Terminal 1)

cd /Users/Thiago/repos/Donezy

# Simular uma chamada ao llm_generate.py
python .github/scripts/llm_generate.py \
  --module note \
  --repo_root . \
  --prompt_file .github/llm_prompt_template.txt

# Deve retornar JSON com documentação gerada
```

## 5. Validar Output

O output deve ser algo como:

```json
{
  "module": "note",
  "markdown": "<!-- AUTO-GENERATED DOC START -->\n# Note Module\n...",
  "confidence": 0.75,
  "provider": "ollama-local"
}
```

## Troubleshooting

### Ollama não responde

```bash
# Verificar se Ollama está rodando
ps aux | grep ollama

# Testar endpoint manualmente
curl -X POST http://localhost:11434/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "model": "mistral",
    "prompt": "Hello",
    "stream": false
  }'

# Você deve receber um JSON com resposta
```

### Modelo não encontrado

```bash
# Listar modelos disponíveis
ollama list

# Puxar modelo novamente
ollama pull mistral
```

### Lento demais

Se Ollama está muito lento:

1. Aumentar `timeout` em `llm_generate.py` (linha 67)
2. Usar modelo mais rápido: `ollama pull neural-chat`
3. Reduzir `max_tokens` se necessário

## Next Steps

Após confirmar funcionando localmente:

1. Fazer um commit com mudanças em `lib/src/modules/`
2. Push para seu repositório
3. GitHub Actions rodará Ollama automaticamente
4. Documentação será gerada sem APIs externas

---

**Dica:** Se você NÃO quer testar localmente, pode pular direto para fazer um commit e deixar o GitHub Actions cuidar de tudo!
