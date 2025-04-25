#!/bin/bash

# Garante que o script esteja no crontab (se ainda não estiver)
(crontab -l 2>/dev/null | grep -v diagnostico; echo "0 8 * * * diagnostico") | crontab -

echo "[OK] Diagnóstico agendado para rodar todos os dias às 08:00."