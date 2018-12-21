.PHONY: clean assets build all pack

default: all

# Package Info
export short_name=mini-lieb
export theme_name="Mini Lieb"
export version=1.0.0
export repo=dev.azure.com/retinal/config/_git/dotfiles

# Colors
export white=[255, 255, 255]
export dark=[10, 17, 27]

key=${short_name}.pem
dist_dir=dist/${short_name}

package=${short_name}.crx

output_files := manifest.json package.json

all: clean assets build pack

build: $(output_files)

clean:
	rm -rf dist || true
	for out_file in ${output_files} ; do \
		rm $$out_file || true ; \
    done

assets:
	@mkdir -p ${dist_dir}
	@cp -r images ${dist_dir}/

pack: $(package)

$(output_files): %.json : %.tpl
	envsubst < $< > $@
	cp $@ $(dist_dir)/

$(package): | dist/$(key)
	@chromium --pack-extension=$(dist_dir) --pack-extension-key=dist/${key}

dist/$(key):
	@chromium --pack-extension=$(dist_dir)