REMOTE_DIR = sbmaxx@rozhdestvenskiy.ru:/var/www/vhosts/rozhdestvenskiy.ru/public/dev/video
LOCAL_DIR = /Users/sbmaxx/Development/video-playground

upload:
	rsync -azh --progress -e "ssh" $(LOCAL_DIR)/ $(REMOTE_DIR)

download:
	rsync -azh --progress -e "ssh" $(REMOTE_DIR)/ $(LOCAL_DIR)

.PHONY: download upload
