#!/bin/bash
#States of citys.

echo "Choose City Name Tirupathi Hyd Bangalore "
read city
case $city in
Tirupathi) echo "it's belongs to AP"
;;
Hyd) echo "it's belongs to TS"
;;
Bangalore) echo "it's belongs to KA"
;;
*) echo "unkown state"
;;
esac

