function __m_info
    switch "$argv[1]"
        case help
            echo "usage: m info [ help ]"
            echo ""
            echo "Examples:"
            echo "  m info        #  print Mac OS X operating system version information"

        case \*
            sw_vers
            return

    end
end
