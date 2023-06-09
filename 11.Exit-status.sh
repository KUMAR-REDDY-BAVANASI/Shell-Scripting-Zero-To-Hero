#!/bin/bash

lss -ltr

echo "exit status: $?" #If output is other than zero It is always failure

ls -ltr

echo "exit status: $?" #If output is zero It is success