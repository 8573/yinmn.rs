
build:
	@nix-shell --run 'cargo build'

run: build
	@nix-shell --run 'cargo run'

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
