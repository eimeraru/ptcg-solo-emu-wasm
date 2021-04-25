setup:
	rm -rf .builds
	swift package update
	swift package generate-xcodeproj
run:
	carton dev --custom-index-page custom_index.html
test:
	carton test
build:
	carton bundle --custom-index-page custom_index.html
