function __battery_status
    pmset -g batt
end

function __battery_help
    set -l uline (set_color -u)
    set -l nc (set_color normal)

    echo "Usage: m battery [COMMAND]"
    echo
    echo "where COMMAND can be one of:"
    echo "       status  Get the battery status"
    echo "       help"
    echo
    echo "Examples:"
    echo "       m battery status # get the battery status"
end

function __m_battery
    switch "$argv[1]";
        case help
            set -e $argv[1]
            __battery_help
            return

        case status
            set -e $argv[1]
            __battery_status
            return
    end
end
