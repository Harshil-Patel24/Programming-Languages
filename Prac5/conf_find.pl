#!/usr/bin/perl

use File::Find;

find(
{
	wanted => \&findFiles,
},
'/home/'
);


sub findFiles
{
	$match = $File::Find::name if /(\.conf$)/;
	print "$match\n";
}
exit;








