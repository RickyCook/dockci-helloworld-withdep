#!/bin/bash
case "$1" in
ci)
    python testfile.py
    exit $?
    ;;
*)
    echo "Unknown command"
    exit 1
    ;;
esac
