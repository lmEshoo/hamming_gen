#Usage: HammingGen <SEC/SEC-DED> <data width> <project_name>
#SEC - single-error-correction
#DED - double-error-detection
#Description: Generates VHDL package with hamming encoder and decoder

IMAGE=lmestar/hamming_gen:0.1
CONTAINER_NAME=hamming_gen

all: run

build:
	 docker build --no-cache -t $(IMAGE) .

run:
	docker run -it --rm \
	-v $(PWD):/app \
	--name $(CONTAINER_NAME) $(IMAGE) \
	bash -c "cd /src/opencore \
			&& make clean \
			&& make \
			&& ./hamming.exe SEC-DED 32 proj \
			&& cp /src/opencore/*.vhd /app"

stop:
	 docker stop $(CONTAINER_NAME)