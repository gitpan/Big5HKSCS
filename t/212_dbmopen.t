# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use Big5HKSCS;
print "1..1\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F機能') || die "Can't open file: F機能\n";
print FILE "1\n";
close(FILE);

# dbmopen
my %DBM;
if (dbmopen(%DBM,'F機能',0777)) {
    print "ok - 1 dbmopen $^X $__FILE__\n";
    dbmclose(%DBM);
}
else {
    print "not ok - 1 dbmopen: $! $^X $__FILE__\n";
}
system('del F*.* >NUL 2>NUL');

unlink('F機能');

__END__
