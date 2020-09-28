set -x

ionice -c 3 nice stack build \
	--test --no-run-tests \
	--bench --no-run-benchmarks \
	--haddock --haddock-deps \
	--no-haddock-hyperlink-source \
	--no-haddock-internal \
	--haddock-arguments "--no-print-missing-docs" \
	--only-dependencies

ionice -c 3 nice stack build \
	--test --no-run-tests \
	--bench --no-run-benchmarks \
	--haddock --haddock-deps \
	--no-haddock-hyperlink-source \
	--no-haddock-internal \
	--haddock-arguments "--no-print-missing-docs"
