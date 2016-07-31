function __bluetooth_status
    defaults read /Library/Preferences/com.apple.Bluetooth ControllerPowerState | \
    awk '{ if($1 != 0) { print "Bluetooth: ON" } else { print "Bluetooth: OFF" } }'
end

function __bluetooth_enable
    sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 1; and \
    sudo killall -HUP blued
end

function __bluetooth_disable
    sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0; and \
    sudo killall -HUP blued
end

function __bluetooth_help
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
            __bluetooth_status
            return

        case enable
            __bluetooth_enable
            return

        case disable
            __bluetooth_disable
            return

        case help
            __bluetooth_help
            return

        case \*
            __bluetooth_help

    end
end
