#!/bin/bash
egrep -R /var/log/ACPI*> error.log
egrep error.log "\/*\.[a-z]{1,3}"
