function m-cli -d " Swiss Army Knife for Mac OS X"
    set -g m-cli_version 0.0.1

    set -l cmd

    switch "$argv[1]"
        case -h --help help
            __m-cli_usage > /dev/stderr
            return

   　　　case -v --version
            echo "m-cli v$m-cli_version"
            return

        case u use -- ""
    end
end
