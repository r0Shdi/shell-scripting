#!/bin/bash
read -p "serverName or IP to Ping: "  server

ping -c7  $server