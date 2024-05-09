#!/usr/bin/env sh

ollama pull llama3$LLAMA_VERSION
ollama run llama3$LLAMA_VERSION
