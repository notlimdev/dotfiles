
#!/usr/bin/env bash

# Use yt-dlp as scraper/downloader
scraper="yt-dlp"
ytdl_path="$(which yt-dlp)"

# Comandos para reproducir: calidad baja (144p mp4) y player estándar
YTFZF_YTDL_ARGS="--format mp4[height<=144]"  # o ajusta: "bestvideo[height<=144]+bestaudio/best"
video_player="mpv"

# Otras configuraciones opcionales:
# Mantener historial (1 = habilitado, 0 = deshabilitado)
YTFZF_HIST=1

# Selección predeterminada de formato (si quieres otro formato puedes modificarlo)
YTFZF_PREF="bestvideo[height<=480]+bestaudio/best"

# Habilitar bucle automático
YTFZF_LOOP=0

# Utilizar colores por defecto de fzf
YTFZF_ENABLE_FZF_DEFAULT_OPTS=1

# Variables para player personalizado (si usas otro)
# video_player_format="mpv --ytdl-format="
# audio_player="mpv --no-video"

# Directorios (ya configurados por defecto, modificables si lo necesitas)
# cache_dir="$HOME/.cache/ytfzf"
# history_file="$cache_dir/ytfzf_hst"
# thumb_dir="$cache_dir/thumb"

