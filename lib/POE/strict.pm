# $Id: strict.pm 410 2004-11-13 20:03:58Z sungo $
package POE::strict;

use warnings;
use strict;

use vars qw($VERSION);

$VERSION = '1.'.sprintf "%04d", (qw($Rev: 410 $))[1];

# Assert when dispatching events to nonexistent sessions
sub POE::Kernel::ASSERT_EVENTS () { 1 }

# Assert if internal parameters are wacky
sub POE::Kernel::ASSERT_USAGE () { 1 }

# Bitch about receiving unknown events
sub POE::Session::ASSERT_STATES () { 1 }

use POE::Kernel;
use POE::Session;
use POE;

sub import {
	my $caller = (caller())[0];
	eval "package $caller; use POE;";
}

1;
__END__

=pod

=head1 NAME

POE::strict - strict mode for POE

=head1 DESCRIPTION

L<POE::strict> acts a lot like the L<strict> pragma in perl. It activates
internal constraints that are not normally active. The runtime behavior of
L<POE> will be a lot more strict (duh) and potentially very loud if your code
is in any way questionable as far as the L<POE> core is concerned. The list of
activated asserts is as follows:

=over

=item POE::Kernel::ASSERT_EVENTS

Assert when dispatching events to nonexistent sessions

=item POE::Kernel::ASSERT_USAGE

Assert if internal parameters are wacky

=item POE::Session::ASSERT_STATES

Yell about receiving unknown events

=back

=head1 AUTHOR

sungo (sungo@cpan.org)

=head1 DATE

$Date: 2004-11-13 15:03:58 -0500 (Sat, 13 Nov 2004) $

=head1 REVISION

$Revision: 410 $

=head1 LICENSE

Copyright (c) 2004, Matt Cashner. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

=over 4

=item * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

=item * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

=item * Neither the name of the Matt Cashner nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

=back

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut


=cut

