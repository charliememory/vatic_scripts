rm ~/vatic-opencv/vatic/output_jpg/* -rf
rm ~/vatic-opencv/label_file/* -rf
rm ~/vatic-opencv/result_show/* -rf

cd ~/vatic-opencv/vatic/
turkic setup --database --reset
rm public/turkic
turkic setup --public-symlink
