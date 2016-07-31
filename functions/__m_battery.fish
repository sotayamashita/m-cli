function __status
    pmset -g batt
end

function __help
    echo "Usage: m battery [COMMAND]"
    echo
    echo "where COMMAND can be one of:"
    echo "       status  Get the battery status"
    echo "       help"
end

function __m_battery
    switch "$argv[1]"
        case status
            __status
            return

        case help
            __help
            return

        case \*
            __help

    end
end
