# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use Big5HKSCS;
print "1..1\n";

my $chcp = `chcp`;
if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms or $chcp !~ /932|950/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F機能') || die "Can't open file: F機能\n";
print FILE "1\n";
close(FILE);

# lstat
if (lstat('F機能')) {
    print "ok - 1 lstat $^X $__FILE__\n";
}
else {
    print "not ok - 1 lstat: $! $^X $__FILE__\n";
}

unlink('F機能');

__END__
