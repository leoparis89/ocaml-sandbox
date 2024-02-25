dev:
	dune build --watch
test_watch:
	dune test --watch
build_atd_types:
	atdgen -t ./bin/atd/my_atd.atd
build_atd_json:
	atdgen -t ./bin/atd/my_atd.atd
