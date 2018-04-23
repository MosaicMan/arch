#!/bin/bash

secret-tool lookup keepass passdb.kdbx | keepass --pw-stdin /sync/System/Shared/KeePass/passdb.kdbx
