function __m_battery
    switch "$argv[1]"
        case status
            pmset -g batt
            return

        case help \*
            echo "usage: m battery [ status | help ]"
            echo ""
            echo "Examples:"
            echo "  m battery status    # get the battery status"

    end
end
