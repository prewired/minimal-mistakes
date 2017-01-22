# build local Jekyll pages
PORT := 4004

local: clean
	bundle exec jekyll serve --port $(PORT) --config _config.yml,_config_dev.yml

build: clean
	bundle exec jekyll build

check:
	bundle exec htmlproofer ./_site

check-internal:
	bundle exec htmlproofer ./_site --disable-external


debug: clean
	bundle exec jekyll build --trace --config _config.yml,_config_dev.yml

clean:
	rm -rf _site/*
	@echo "cleaning _site"




