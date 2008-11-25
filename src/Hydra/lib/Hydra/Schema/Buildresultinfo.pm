package Hydra::Schema::Buildresultinfo;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("BuildResultInfo");
__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0, size => undef },
  "iscachedbuild",
  { data_type => "integer", is_nullable => 0, size => undef },
  "buildstatus",
  { data_type => "integer", is_nullable => 0, size => undef },
  "errormsg",
  { data_type => "text", is_nullable => 0, size => undef },
  "starttime",
  { data_type => "integer", is_nullable => 0, size => undef },
  "stoptime",
  { data_type => "integer", is_nullable => 0, size => undef },
  "logfile",
  { data_type => "text", is_nullable => 0, size => undef },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->belongs_to("id", "Hydra::Schema::Builds", { id => "id" });


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-11-25 15:16:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CvVVHVHL2UEZ5XMkgf01OA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
