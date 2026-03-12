# Identificar los clientes en sway

function swayclients
    swaymsg -t get_tree | grep -i "app_id\|class"
end
