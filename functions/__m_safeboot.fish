function __m_safeboot
    switch "$argv[1]"
        case enable
            sudo nvram boot-args="-x"
            echo "safeboot: true "
            return

        case disable
            sudo nvram boot-args=""
            echo "safeboot: false"
            return

        case status
            nvram boot-args
            return

        case help \*
            echo "usage: m safeboot [ status | enable | disable | help ]"
            echo ""
            echo "Examples:"
            echo "  m safeboot status     # get the boot args"
            echo "  m safeboot enable     # enable safe boot"
            echo "  m safeboot disable    # disable safeboot"
end
