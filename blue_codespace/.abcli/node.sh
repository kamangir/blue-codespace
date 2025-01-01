#! /usr/bin/env bash

function blue_codespace_node() {
    local task=$(abcli_unpack_keyword $1 help)

    local function_name=blue_codespace_node_$task
    if [[ $(type -t $function_name) == "function" ]]; then
        $function_name "${@:2}"
        return
    fi
    abcli_log "blue-codespace: node: 🪄"
}

abcli_source_caller_suffix_path /node


