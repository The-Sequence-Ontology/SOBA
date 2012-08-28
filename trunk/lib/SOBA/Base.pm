package SOBA::Base;

use strict;
use vars qw($VERSION);
use Carp qw(croak cluck);

$VERSION = '0.01';

=head1 NAME

SOBA::Base - Base class for the SOBA Library

=head1 VERSION

This document describes SOBA::Base version 0.01

=head1 SYNOPSIS

    use base qw(SOBA::Base);

=head1 DESCRIPTION

SOBA::Base serves as a base class for all of the other classes in the
SOBA library.  It is not intended to be instantiated directly, but
rather to be used with the 'use base' pragma.  SOBA::Base provides
object instantiation, argument preparation and attribute setting
functions for other classes during object construction.  In addition
it provides a wide range of utility functions that are expected to be
widly applicable throughout the library.

=head1 CONSTRUCTOR

SOBA::Base is not intended to by instantiated on it's own.

=cut

#-----------------------------------------------------------------------------
#--------------------------------- Constructor -------------------------------
#-----------------------------------------------------------------------------

=head2 new

     Title   : new
     Usage   : SOBA::SomeClass->new();
     Function: Creates on object of the calling class
     Returns : An object of the calling class
     Args    : See the attributes described above

=cut

sub new {
	my ($class, @args) = @_;
	$class = ref($class) || $class;
	my $self = bless {}, $class;

	return $self;
}

#-----------------------------------------------------------------------------
#-------------------------------- Attributes ---------------------------------
#-----------------------------------------------------------------------------

=head1  ATTRIBUTES

All attributes can be supplied as parameters to the constructor as a
list (or referenece) of key value pairs.

=cut

=head2 foo

  Title   : foo
  Usage   : $foo = $self->foo($arg);
  Function:
  Returns :
  Args    :

=cut

# sub foo {
#   my ($self, $arg) = @_;
#
#   if ($arg) {
#     $self->{foo} = $arg;
#   }
#   return $self->{foo};
# }

#-----------------------------------------------------------------------------
#------------------------------------ Methods --------------------------------
#-----------------------------------------------------------------------------

=head1 METHODS

=head2 set_attributes

 Title   : set_attributes
 Usage   : $base->set_attributes($args, $valid);
 Function: Set attributes
 Returns : N/A
 Args    : A hash, array or ref of attribute key, value pairs to set.

=cut

sub set_attributes {
  my ($self, $args, $valid) = @_;

  my %valid = map {$_ => 1} @{$valid};

  my $args = $self->prepare_args($args);
  for my $attribute (keys %{$args}) {
    if (! exists $valid{$attribute}) {
      my $message = ("$attribute is an invalid attribute and will be" .
		     "skipped");
      $self->warn('invalid_attribute', $message);
    }
    else {
      $self->$attribute($args->{$attribute})
    }
  }
}

#-----------------------------------------------------------------------------

=head1 METHODS

=head2 throw

 Title   : throw
 Usage   : $base->throw($code, $message);
 Function: A wrapper method to throw an error - print an error message and die.
 Returns : None
 Args    : code:    $err_code # single_word_code_for_error
	   message: $err_msg  # Free text description of error

=cut

sub throw {
	shift->handle_message('FATAL', @_);
}

#-----------------------------------------------------------------------------

=head2 warn

 Title   : warn
 Usage   : $base->warn($code, $message);
 Function: A wrapper method to send a warning to STDERR;
 Returns : None
 Args    : code:    $warn_code # single_word_code_for_warning
	   message: $warn_msg  # Free text description of warning

=cut

sub warn {
	shift->handle_message('WARN', @_);
}

#-----------------------------------------------------------------------------

=head2 info

 Title   : info
 Usage   : $base->info($code, $message);
 Function: A wrapper method to send an INFO message to STDERR;
 Returns : None
 Args    : code:    $info_code # single_word_code_for_info
	   message: $info_msg  # Free text description of info

=cut

sub info {
  my $self = shift;
  return unless $self->{info};
  $self->handle_message('INFO', @_);
}

#-----------------------------------------------------------------------------

=head2 debug

 Title   : debug
 Usage   : $base->debug($code, $message);
 Function: A wrapper method to send an DEBUG message to STDERR;
 Returns : None
 Args    : code:    $debug_code # single_word_code_for_debug
	   message: $debug_msg  # Free text description of debug

=cut

sub debug {
  my $self = shift;
  return unless $self->{debug};
  $self->handle_message('DEBUG', @_);
}

#-----------------------------------------------------------------------------

=head2 handle_message

 Title   : handle_message
 Usage   : $base->handle_message($level, $code, $message);
 Function: Handle a message and report to the user appropriately.
 Returns : None
 Args    : level:   FATAL, WARN, INFO, DEBUG
	   code:    $info_code # single_word_code_for_info
	   message: $info_msg  # Free text description of info

=cut

sub handle_message {
	my ($self, $level, $code, $message) = @_;

	my $caller = ref($self);
	$level ||= 'UNKNOWN';
	$message ||= $caller;
	if (! $code) {
	  $code = 'unspecified_code';
	  $message = join '', ("SOBA::Base is handeling a message " .
				"for $caller without an error code.  "  .
				"Complain to the author of $caller!");
	}
	chomp $message;
	$message .= "\n";

	if ($level eq 'FATAL') {
	  $message = join ' : ', ('FATAL', $code, $message);
	  print STDERR $message;
	  croak;
	}
	elsif ($level eq 'WARN') {
	  $message = join ' : ', ('WARN', $code, $message);
	  print STDERR $message;
	}
	elsif ($level eq 'INFO') {
	  $message = join ' : ', ('INFO', $code, $message);
	  print STDERR $message;
	}
	elsif ($level eq 'DEBUG') {
	  $message = join ' : ', ('DEBUG', $code, $message);
	  print STDERR $message;
	}
	else {
	  $message = join '', ("SOBA::Base is handeling a message " .
			       "for $caller without an error level.  "  .
			       "Complain to the author of $caller!\n");
	  chomp $message;
	  $message = join ' : ', ('UNKNOWN', $code, $message);
	  print $message;
	  croak;
	}
}

#-----------------------------------------------------------------------------

=head2 prepare_args

 Title   : prepare_args
 Usage   : $args = $self->prepare_args(@_);
 Function: Take a list of key value pairs that may be an array, hash or ref
	   to either and return them as a hash or hash reference depending on
	   calling context.
 Returns : Hash or hash reference
 Args    : An array, hash or reference to either

=cut

sub prepare_args {

	my ($self, @args) = @_;

	my %args_hash;

	if (scalar @args == 1 && ref $args[0] eq 'ARRAY') {
		%args_hash = @{$args[0]};
	}
	elsif (scalar @args == 1 && ref $args[0] eq 'HASH') {
		%args_hash = %{$args[0]};
	}
	elsif (scalar @args % 2 == 0) {
		%args_hash = @args;
	}
	else {
		my $class = ref($self);
		my $err_code = 'invalid_arguments_to_prepare_args';
		my $err_msg  = ("Bad arguments passed to $class. A list "   .
				"of key value pairs or a reference to "     .
				"such a list was expected, But we got:\n"   .
				join ' ', @args);
		$self->throw(message => $err_msg,
			     code    => $err_code);
	}

	return wantarray ? %args_hash : \%args_hash;
}

#-----------------------------------------------------------------------------

=head2 load_module

 Title   : load_module
 Usage   : $base->load_module(Some::Module);
 Function: Do runtime loading (require) of a module/class.
 Returns : 1 on success - throws exception on failure
 Args    : A valid module name

=cut

sub load_module {

	my ($self, $module_name) = @_;
	eval "require $module_name";
	if ($@) {
	  my $self_class = ref $self;
	  my $err_code = 'failed_to_load_module';
	  my $err_msg  = "Failed to load $module_name in $self_class:\n$@";
	  $self->throw(message => $err_msg,
		       code    => $err_code);
	}
	return 1;
}

#-----------------------------------------------------------------------------

=head2 random_string

 Title   : random_string
 Usage   : $base->random_string;
 Function: Returns a random alphanumeric string
 Returns : A random alphanumeric string
 Args    : The length of the string to be returned [8]

=cut

sub random_string {
  my ($self, $length) = @_;
  $length ||= 8;
  my $random_string = join "", map { unpack "H*", chr(rand(256)) } (1 .. $length);
  return substr($random_string, 0, $length);
}

#-----------------------------------------------------------------------------

=head1 DIAGNOSTICS

=over

=item C<< invalid_arguments_to_prepare_args >>

C<SOBA::Base::prepare_args> accepts an array, a hash or a reference to
either an array or hash, but it was passed something different.

=item C<< failed_to_load_module >>

C<SOBA::Base::load_module> was unable to load (require) the specified
module.  The module may not be installed or it may have a compile time
error.

=back

=head1 CONFIGURATION AND ENVIRONMENT

<SOBA::Base> requires no configuration files or environment variables.

=head1 DEPENDENCIES

=over

=item C<< Carp qw(croak cluck) >>

=back

=head1 INCOMPATIBILITIES

None reported.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to:
barry.moore@genetics.utah.edu

=head1 AUTHOR

Barry Moore <barry.moore@genetics.utah.edu>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2010, Barry Moore <barry.moore@genetics.utah.edu>.  All rights reserved.

    This module is free software; you can redistribute it and/or
    modify it under the same terms as Perl itself.

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

=cut

1;
