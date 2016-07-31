function __status
    defaults read /Library/Preferences/com.apple.Bluetooth ControllerPowerState | \
    awk '{ if($1 != 0) { print "Bluetooth: ON" } else { print "Bluetooth: OFF" } }'
end

function __enable
    sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 1; and \
    sudo killall -HUP blued
end

function __disable
    sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0; and \
    sudo killall -HUP blued
end

function __help
    echo "Usage: m bluetooth [COMMAND]"
    echo
    echo "where COMMAND can be one of:"
    echo "       status  Get bluetooth status"
    echo "       enable  Turn on bluetooth"
    echo "       disalbe Turn off bluetooth"
    echo "       help"
end

function __m_bluetooth
    switch "$argv[1]"
        case status
            __status
            return

        case enable
            __enable
            return

        case disable
            __disable
            return

        case help
            __help
            return

        case \*
            __help

    end
end
