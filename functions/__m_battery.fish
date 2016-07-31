function __battery_status
    pmset -g batt
end

function __battery_help
    echo "Usage: m battery [COMMAND]"
    echo
    echo "where COMMAND can be one of:"
    echo "       status  Get the battery status"
    echo "       help"
end

function __m_battery
    switch "$argv[1]"
        case status
            __battery_status
            return

        case help
            __battery_help
            return

        case \*
            __battery_help

    end
end
