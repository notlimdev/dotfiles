#.·:'''''''''''''''''''''''''''''''''''''''''''''''''''':·.
#: : ┌┬┐┌─┐┌┬┐┌─┐┬┬  ┌─┐┌─┐  ┌┐┌┌─┐┌┬┐┬  ┬┌┬┐┌┬┐┌─┐┬  ┬ : :
#: :  │││ │ │ ├┤ ││  ├┤ └─┐  ││││ │ │ │  ││││ ││├┤ └┐┌┘ : :
#: : ─┴┘└─┘ ┴ └  ┴┴─┘└─┘└─┘  ┘└┘└─┘ ┴ ┴─┘┴┴ ┴─┴┘└─┘ └┘  : :
#: :                  [FISH]                            : : 
#: :                                                    : : 
#: :  [🚀 GITHUB]:https://github.com/notlimdev          : : 
#'·:....................................................:·'

if status is-interactive

    # Lista archivos con iconos y color.
    function ls
        eza --icons always --color always $argv
    end

    # Lista con detalles en formato largo.
    function ll
        eza --icons always --color always -la $argv
    end

    # Muestra arbol excluyendo carpetas comunes.
    function lt
        eza -T --icons --color always --group-directories-first \
            --ignore-glob 'node_modules|.git|dist|build' $argv
    end

    # Muestra arbol con profundidad 2.
    function lt2
        eza -T -L 2 --icons --color always --group-directories-first $argv
    end

    # Lista en largo ordenando por tipo.
    function la
        eza -la --icons --color always --group-directories-first --sort=type $argv
    end

    # Lista solo directorios.
    function ld
        eza -a --only-dirs --icons --color always $argv
    end

    # Lista solo archivos (sin dirs).
    function lf
        eza -a --only-files --icons --color always $argv
    end

    # Lista en largo ordenando por fecha.
    function ltnew
        eza -la --icons --color always --sort=modified $argv
    end
end
