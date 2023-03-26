ffmpeg -y -hide_banner -hwaccel_output_format cuda ^
    -c:v h264_cuvid -resize 1920x1080 ^
    -i "%~1" ^
    -c:v h264_nvenc -b:v 3500k ^
    "%~dp1%~n1_3500k.mp4"

pause