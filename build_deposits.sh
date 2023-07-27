#!/bin/bash

echo "USE AT YOUR OWN RISK"
read -p "Are you sure? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi


eth2-val-tools deposit-data \
  --source-min=$ACC_START_INDEX \
  --source-max=$ACC_END_INDEX \
  --amount="$DEPOSIT_AMOUNT" \
  --fork-version="$FORK_VERSION" \
  --withdrawals-mnemonic="$WITHDRAWALS_MNEMONIC" \
  --validators-mnemonic="$VALIDATORS_MNEMONIC" > $DEPOSIT_DATAS_FILE


eth2-val-tools deposit-data \
  --source-min=0 \
  --source-max=2048 \
  --amount="32" \
  --fork-version="0x20000092" \
  --withdrawals-mnemonic="2e0834786285daccd064ca17f1654f67b4aef298acbb82cef9ec422fb4975622" \
  --validators-mnemonic="2e0834786285daccd064ca17f1654f67b4aef298acbb82cef9ec422fb4975622" > $DEPOSIT_DATAS_FILE


vessel jungle hotel put crunch nuclear absorb produce advance crime display slot