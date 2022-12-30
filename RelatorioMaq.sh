#!/bin/bash
clear
echo ""
##############################################################################
#RelatorioMaq.sh - Script de Exercicio 2 aula 25
#
# Autor: Rogério Felício do Prado (rogerio@ansatzhub.com.br)
# Data Criação: 17/10/2022
#
# Descrição: Tráz na tela um relatório da maquina usada no momento
#
# Exemplo de uso: ./RelatorioMaq.sh
#
# Alteracoes:ND
##############################################################################
clear
MAQ=$(hostname)
echo "O nome dessa maquina é = " $MAQ
DATE=$(date "+%d/%m/%Y  %H:%M")
echo "Hoje é: " $DATE
UPTIME=$(uptime -s)
echo "A máquina esta ativa desde: " $UPTIME
KERNEL=$(uname -sr)
echo "Esta é sua versão de Kernel: " $KERNEL
QCPU=$(cat /proc/cpuinfo |grep "model name"|cut -c14-|wc -l)
echo "A quantidade de CPU's é: "$QCPU
MCPU=$(cat /proc/cpuinfo |grep "model name"|cut -c14-|head -n1)
echo "o Modelo da CPU é: " $MCPU
RAM=$(cat /proc/meminfo |grep "MemTotal")
echo "As quantidades de memórias são: " $RAM
FILESYS=$(df -h|egrep -v '(tmpfs|udev)')
#PART=$(df -h|egrep -v '(tmpfs|udev)')
echo "Todas as partições são: "
echo "$FILESYS"


#$(cat /proc/cpuinfo |grep "model name" | head -n1 |cut -c14-)


