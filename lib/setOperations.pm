package detectDNSEntryChanges;
use strict;
use warnings;

use Exporter qw(import);

our @EXPORT_OK = qw(version);

sub Minus {
    my ( $FileA, $FileB ) = @_;
    
    my ( $Minus ) = SubMinus( $FileA, $FileB);
    
    $ReturnValue = printArraytoFile ($Minus);
    
} # Minus

sub SubMinus {
    my ($SetAFile, $SetBFile) = @_;
    my ($Minus);
    $SetAHash = getFileContents($SetAFile);
    $SetBHash = getFileContents($SetBFile);
    
    foreach $SetAValue (  keys %$SetAHash ) {
        
        if ( exists ( $SetBHash->{$SetAValue} ) ) {
            next;
        } else {
            push (@$Minus, $SetAValue);
        }
    }
    
    return $Minus;
} # SubMinus


sub getFileContents {
    my ($File) = @_;
    my ($Hash);
    
    open(ARRAYFILE, $File);
    while (<ARRAYFILE>) {
        chomp;
        $Hash->{$_} = 1;
    }
    close(ARRAYFILE);
    
    return $Hash;
} # getFileContents

sub  printArraytoFile{
    my ($Array ) = @_;
    
    foreach $Value (@$Array) {
        
        print $Value, "\n";
        
    }
} # printArraytoFile

1;