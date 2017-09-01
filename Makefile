
build:
	@nix-shell --run 'cargo build'

check:
	@nix-shell --run 'cargo check'

run:
	@nix-shell --run 'cargo run'

docs:
	@nix-shell --run 'cargo doc --no-deps --all-features'

view-docs:
	@nix-shell --run '\
	   BROWSER=chromium-browser \
	   cargo doc --no-deps --all-features --open \
	 '

clean:
	@nix-shell --run 'cargo clean'

fmt:
	@nix-shell --run 'cargo-fmt'

shell:
	@nix-shell

logo.svg: logo.gnuplot
	@nix-shell --run 'gnuplot -e "set terminal svg size 512,512 dynamic rounded background rgbcolor \"black\"; set output \"logo.svg\"" logo.gnuplot'

logo.png: logo.gnuplot
	@nix-shell --run 'gnuplot -e "set terminal png size 512,512 rounded background rgbcolor \"black\"; set output \"logo.png\"" logo.gnuplot'
