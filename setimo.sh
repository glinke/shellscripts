#!/bin/bash
SENHA_CORRETA="Caixa#@2026"
TENTATIVAS=0
MAXTENTATIVAS=3

while [ $TENTATIVAS -lt $MAXTENTATIVAS ]
do
    read -sp "Digite a senha: " senha
    echo

    if [ "$senha" = "$SENHA_CORRETA" ]; then
        echo "Acesso autorizado! Welcome to the jungle baby!"
        exit 0
    else
        TENTATIVAS=$((TENTATIVAS + 1))
        RESTANTES=$((MAXTENTATIVAS - TENTATIVAS))

        if [ $RESTANTES -gt 0 ]; then
            echo "Senha incorreta! CUIDADO! Você ainda tem $restantes tentativa(s)."
        fi
    fi
done

echo "Acesso Bloqueado, numero maximo de tentativas excedido"
