function __m_dns
    switch "$argv[1]"
        case flush
            set version (sw_vers -productVersion)
            echo "Flushing dns..."
            if echo $version | grep -E '^10\.10(\.[0-3])?$' >/dev/null 2>&1
                sudo discoveryutil mdnsflushcache
            else if echo $VERSION | grep -E '^10\.6(\.[0-8])?$' >/dev/null 2>&1
                sudo dscacheutil -flushcache
            else
                sudo killall -HUP mDNSResponder
            end
            return

        case help \*
            echo "usage:  m dns [ flush | help ]"
            echo ""
            echo "Examples:"
            echo "  m dns flush       # flushes local DNS"

    end
end
