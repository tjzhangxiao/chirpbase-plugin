=head1 LICENSE

Copyright [2009-2014] EMBL-European Bioinformatics Institute

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=cut

=head1 MODIFICATIONS

Copyright [2014-2017] University of Edinburgh

All modifications licensed under the Apache License, Version 2.0, as above.

=cut

package EnsEMBL::Web::Document::Element::Copyright;

### Copyright notice for footer (basic version with no logos)

use strict;

sub content {
  my $self = shift;

  my $sd = $self->species_defs;

## BEGIN MODIFICATIONS...
my $site_name = $self->hub->species_defs->ENSEMBL_SITE_NAME_SHORT;
my $site_version = $self->hub->species_defs->SITE_RELEASE_VERSION;
my $site_date = $self->hub->species_defs->SITE_RELEASE_DATE;
my $html = '<div class=lb-ackn-logos>';
$html .= '<a href="http://ed.ac.uk"><img title="University of Edinburgh" class="lb-footer-logo" src="/img/edinburgh_logo.png"></a>';

$html .= '</div>';

  return sprintf( qq(
  <div class="column-two left">
		   %s release %s - %s -
		  %s &copy; <span class="print_hide"><a href="http://ensembl.chirpbase.org/index.html" style="white-space:nowrap">ChirpBase</a> is a community resource to facilitate research on evolutionary, functional and comparative genomics in singing insects, and the ChirpBase project is committed to the principles of open science. Please contact the Bailey lab if you would like to download and use data on this site, and we will be more than happy to discuss possibilities for collaborative work. We request that you please do not publish our data, or analyses that make use of it, until we have had a chance to do so ourselves. Aside from this, we are eager to expand ChirpBase resources to enable large-scale research projects on the evolution of signalling, comparative neurobiology, functional genomics, or any other work using this fascinating taxonomic group. Please get in touch if you would like to contribute, and be assured that the same principles on data sharing and use apply to any group that contributes to the site. Thank you, and happy browsing! &copy; <a href="http://www.flexiblephenotype.org/" style="white-space:nowrap">Bailey lab</a></span>
      %s
  </div>),     $site_name, $site_version, $site_date, $site_name, $html
## ...END MODIFICATIONS
	       );

}

1;
