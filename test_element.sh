#!/bin/bash

set -e

check() {
    actual=$(./element.sh "$1")
    if [[ "$actual" != "$2" ]]; then
        echo "Test failed for: $1"
        exit 1
    fi
}

check 1 "The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."

check He "The element with atomic number 2 is Helium (He). It's a nonmetal, with a mass of 4.0026 amu. Helium has a melting point of -272.2 celsius and a boiling point of -269 celsius."

check xyz "I could not find that element in the database."

echo "All tests passed."
