# CHANGE THE NAME
video_name="video_02.avi"



cd ~/vatic-opencv/vatic
#source ~/vatic-opencv/.env/bin/activate
# python start_server.py
#sudo apache2ctl restart
#需加入链接
ln -s homographies public/homographies



# DO NOT CHANGE THE FOLLOWING SCRIPTS
video_dir=$HOME"/vatic-opencv/video_file/"
video_path=${video_dir}${video_name}
frame_dir=$HOME"/vatic-opencv/vatic/output_jpg/"${video_name}
#label_dir=$HOME"/vatic-opencv/label_file/"

rm output_jpg/${video_name}/* -r
turkic delete ${video_name}
turkic extract ${video_path} ${frame_dir} --no-resize
# --length表示切割的帧数，--blow-radius表示关键帧至少的帧数
turkic load ${video_name} ${frame_dir} Head --offline --length 3000 --blow-radius 1
turkic publish --offline
