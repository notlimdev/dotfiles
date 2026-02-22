let hooks = {
    pre_prompt: [{
        let ignore = [reset exit ls cd clear yazi nvim]

        # Determine last history entry (works for plaintext history too)
        let last = (history | last 1)
        if ($last | length) > 0 {
            let cmd = if ($last | describe) =~ "record" { $last | get command | get 0 } else { $last | get 0 }

            if ($ignore | any {|it| $cmd == $it }) {
                let config_dir = ($nu.config-path | path dirname)
                let history_path = ($config_dir | path join "history.txt")
                if ($history_path | path exists) {
                    let lines = (open $history_path | lines)
                    if ($lines | length) > 0 {
                        let last_line = ($lines | last 1)
                        if $last_line == $cmd {
                            $lines | drop -1 | str join (char newline) | save -f $history_path
                        }
                    }
                }
            }
        }
    }] # run before the prompt is shown
    pre_execution: [{ null }] # run before the repl input is run
    env_change: {
        PWD: [{|before, after| null }] # run if the PWD environment is different since the last repl input
    }
    display_output: "if (term size).columns >= 100 { table -e } else { table }" # run to display the output of a pipeline
    command_not_found: { null } # return an error message when a command is not found
}
