function __m_bluetooth
    switch "$argv[1]"
        case status
            defaults read /Library/Preferences/com.apple.Bluetooth ControllerPowerState | \
            awk '{ if($1 != 0) { print "Bluetooth: ON" } else { print "Bluetooth: OFF" } }'
            return

        case enable on
            sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 1; and \
            sudo killall -HUP blued
            return

        case disable off
            sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0; and \
            sudo killall -HUP blued
            return

        case help \*
            echo "usage: m bluetooth [ status | enable | on | disable | off | help ]"
            echo ""
            echo "Examples:"
            echo  "m bluetooth status         # bluetooth status"
            echo  "m bluetooth enable  | on   # turn on bluetooth"
            echo  "m bluetooth disable | off  # turn off bluetooth"

    end
end
