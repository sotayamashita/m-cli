function __m_ntp
    switch "$argv[1]"
        case status
            sudo systemsetup -getusingnetworktime
            sudo systemsetup -getnetworktimeserver 2>/dev/null
            return

        case enable
            sudo systemsetup -setusingnetworktime on
            return

        case disable
            sudo systemsetup -setusingnetworktime off
            return

        case set
            set -e argv[1]
            if test "$argv[1]"
                sudo systemsetup -setnetworktimeserver $argv[1]
            end
            return

        case help \*
            echo "usage: m ntp [ status | enable | disable | set | help ]"
            echo ""
            echo "Examples:"
            echo "  m ntp status                          # status of the network time service"
            echo "  m ntp enable                          # enable clock to use network time"
            echo "  m ntp disable                         # disable clock to use network time"
            echo "  m ntp set timehost1.net.sap.corp      # set network time server"

    end
end
