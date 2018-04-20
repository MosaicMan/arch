#!/bin/bash

secret-tool lookup keepass passdb.kdbx | keepass --pw-stdin passdb.kdbx
