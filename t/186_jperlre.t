# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

use Big5HKSCS;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あAい' =~ /あ[^-]い/) {
    print "ok - 1 $^X $__FILE__ ('あAい' =~ /あ[^-]い/)\n";
}
else {
    print "not ok - 1 $^X $__FILE__ ('あAい' =~ /あ[^-]い/)\n";
}

__END__
