function m -d " Swiss Army Knife for Mac OS X"

    set -g m_version 0.0.1

    set -l cmd

    switch "$argv[1]";
        case -v --version
            echo "m v$m_version"
            return

        case battery
            set -e argv[1]
            set cmd "battery"

        case \*
            echo "OK"
    end

    switch "$cmd";
      case battery;
        __m_battery $argv
    end
end
