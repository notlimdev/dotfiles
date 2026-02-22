if status is-interactive
    # Función para Neovim con configuración personalizada
    function nvim_lazyvim
        env NVIM_APPNAME=nvim_lazyvim nvim $argv
    end

    function nvim_nvchad
        env NVIM_APPNAME=nvim_nvchad nvim $argv
    end

    function nvim_astrovim
        env NVIM_APPNAME=nvim_astrovim nvim $argv
    end
end
