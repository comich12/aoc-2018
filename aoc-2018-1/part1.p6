#!/home/cchick/rakudo/bin/perl6

sub to-int($str) {
    if $str.starts-with("-") {
        return -($str.substr(1).Int);
    }
    else {
        return $str.substr(1).Int;
    }
}

sub MAIN() {
    my @input = "part1-input".IO.lines;
    say @input.map(&to-int).sum;
}
