# CHANGE THE NAME
video_name="video_01.avi"



# DO NOT CHANGE THE FOLLOWING SCRIPTS
cd ~/vatic-opencv/vatic

res_txt=$HOME"/vatic-opencv/label_file/"${video_name}".txt"

visual_dir=$HOME"/vatic-opencv/result_show/"

turkic dump ${video_name} -o ${res_txt}

turkic visualize ${video_name} ${visual_dir} --merge


#turkic status
#turkic list

