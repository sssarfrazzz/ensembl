use strict;
use warnings;
use Bio::EnsEMBL::Registry;


my $registry = 'Bio::EnsEMBL::Registry';

#port 3337 is GRCh37
#port 3306 is for ensemble 38 onwords
$registry->load_registry_from_db(
    -host => 'ensembldb.ensembl.org', # alternatively '   .ensembl.org'
    -user => 'anonymous',
    -port => 3306
);

my $slice_adaptor = $registry->get_adaptor('Human','Core','Slice');

my $slice=$slice_adaptor->fetch_by_region('chromosome','10',25000,30000);
printf( "#input slice %s\n", $slice->name() );
print "\n GRCh37 Projections \n";
foreach my $segment ( @{ $slice->project('chromosome','GRCh37') } ) {
print   $segment->to_Slice()->name(),"\n" ;
}
