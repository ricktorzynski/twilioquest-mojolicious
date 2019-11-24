#!/usr/bin/perl 
use SMS::Send;

# Send a message to me with an image
my $sms = SMS::Send->new('NANP::Twilio');
my $sent = $sms->send_sms(to =>'+19999999999',
              text=> 'Message sent from Perl script.');


# Did it send?
if ( $sent ) {
  print "Woohoo! Message sent - get SID from Twilio Dashboard\n";
} else {
  print "Looks like the Twilio API returned an error\n";
}