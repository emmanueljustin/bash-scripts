#!/usr/bin/bash

CURR_DIR=$(pwd)

BASE_DIR="$CURR_DIR/lib/src"

mkdir -p "$BASE_DIR"

echo "Please select an option:"
echo "1) Clean Architecture (GOAT)"
echo "2) MODEL VIEW CONTROLLER (MVC)"

read -n 1 -s choice

case $choice in
  1)
    read -p "Enter Module Name: " MODULE_NAME

    # Defining the module name
    mkdir -p "$BASE_DIR/$MODULE_NAME"

    # Creating the 3 main layers of clean architecture and with core
    mkdir -p "$BASE_DIR/$MODULE_NAME/core"
    mkdir -p "$BASE_DIR/$MODULE_NAME/data"
    mkdir -p "$BASE_DIR/$MODULE_NAME/domain"
    mkdir -p "$BASE_DIR/$MODULE_NAME/presentation"

    # Creating a folder structure in data layer
    mkdir -p "$BASE_DIR/$MODULE_NAME/data/data_sources"
    mkdir -p "$BASE_DIR/$MODULE_NAME/data/models"
    mkdir -p "$BASE_DIR/$MODULE_NAME/data/repositories"

    # Creating a folder structure in domain layer
    mkdir -p "$BASE_DIR/$MODULE_NAME/domain/entities"
    mkdir -p "$BASE_DIR/$MODULE_NAME/domain/repositories"
    mkdir -p "$BASE_DIR/$MODULE_NAME/domain/usecases"

    # Creating a folder structure in presentation layer
    mkdir -p "$BASE_DIR/$MODULE_NAME/presentation/blocs"
    mkdir -p "$BASE_DIR/$MODULE_NAME/presentation/cubits"
    mkdir -p "$BASE_DIR/$MODULE_NAME/presentation/screens"

    # Creating dummy file for each file layers
    touch "$BASE_DIR/$MODULE_NAME/data/data_sources/data_src"
    touch "$BASE_DIR/$MODULE_NAME/data/models/models"
    touch "$BASE_DIR/$MODULE_NAME/data/repositories/repositories"

    touch "$BASE_DIR/$MODULE_NAME/domain/entities/entities"
    touch "$BASE_DIR/$MODULE_NAME/domain/repositories/repositories"
    touch "$BASE_DIR/$MODULE_NAME/domain/usecases/usecases"

    touch "$BASE_DIR/$MODULE_NAME/presentation/blocs/blocs"
    touch "$BASE_DIR/$MODULE_NAME/presentation/cubits/cubits"
    touch "$BASE_DIR/$MODULE_NAME/presentation/screens/screens"

    echo "File structure created in '$BASE_DIR'."
  ;;
  2)
    read -p "Enter Module Name: " MODULE_NAME
  
    # Defining the module name
    mkdir -p "$BASE_DIR/$MODULE_NAME"

    # Creating the 3 main layers of MVC and with core
    mkdir -p "$BASE_DIR/$MODULE_NAME/core"
    mkdir -p "$BASE_DIR/$MODULE_NAME/controllers"
    mkdir -p "$BASE_DIR/$MODULE_NAME/models"
    mkdir -p "$BASE_DIR/$MODULE_NAME/views"

    # Creating dummy file for each file layers
    touch "$BASE_DIR/$MODULE_NAME/core/cores"
    touch "$BASE_DIR/$MODULE_NAME/controllers/controllers"
    touch "$BASE_DIR/$MODULE_NAME/models/models"
    touch "$BASE_DIR/$MODULE_NAME/views/views"

    echo "File structure created in '$BASE_DIR'."
  ;;
  *)
    echo "Invalid option."
  ;;
esac

chmod +x flutter-arch.sh