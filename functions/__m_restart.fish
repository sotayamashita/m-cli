function __m_restart
    switch "$argv[1]"
        case help
            echo "usage:  m restart [ -f | --force | help ]"
            echo ""
            echo "Examples:"
            echo "  m restart     # restart computer (needs confirmation)"
            echo "  m restart -f  # restart computer (without confirmation)"

        case -f --force
            osascript -e 'tell app "System Events" to restart'
            return

        case \*
            osascript -e 'tell app "loginwindow" to «event aevtrrst»'
            return

    end
end
