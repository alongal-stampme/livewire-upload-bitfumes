#!/bin/bash
set -e

mysql -uroot -p'secret' -h mysql -P 3306 -e "
  CREATE DATABASE IF NOT EXISTS livewire_upload_bitfumes
  DEFAULT CHARACTER SET = 'utf8mb4'
  DEFAULT COLLATE 'utf8mb4_general_ci'
;"
