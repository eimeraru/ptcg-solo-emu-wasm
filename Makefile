setup:
	rm -rf .builds
	swift package update
	swift package generate-xcodeproj
run:
	carton dev
test:
	carton test
build:
	carton bundle
