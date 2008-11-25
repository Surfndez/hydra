package Hydra::Schema::Jobsetinputalts;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("JobsetInputAlts");
__PACKAGE__->add_columns(
  "project",
  { data_type => "text", is_nullable => 0, size => undef },
  "jobset",
  { data_type => "text", is_nullable => 0, size => undef },
  "input",
  { data_type => "text", is_nullable => 0, size => undef },
  "altnr",
  { data_type => "integer", is_nullable => 0, size => undef },
  "value",
  { data_type => "text", is_nullable => 0, size => undef },
  "revision",
  { data_type => "integer", is_nullable => 0, size => undef },
  "tag",
  { data_type => "text", is_nullable => 0, size => undef },
);
__PACKAGE__->set_primary_key("project", "jobset", "input", "altnr");
__PACKAGE__->belongs_to(
  "jobsetinput",
  "Hydra::Schema::Jobsetinputs",
  { jobset => "jobset", name => "input", project => "project" },
);


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-11-25 15:16:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zZEUHrrOIOIg1JH0Pgi5xg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
