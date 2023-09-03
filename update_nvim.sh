#!/bin/bash

git -C ~/.rice/ricenvim pull
nvim +PackerSync +qall
