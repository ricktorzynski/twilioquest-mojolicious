#!/usr/bin/perl 
use SMS::Send;

# Send a message to me with an image
my $sms = SMS::Send->new('NANP::Twilio');
my $sent = $sms->send_sms(to =>'+19999999999',
              text=> 'Image Attached',
              _MediaUrl=> ['https://i.ytimg.com/vi/U_JbTHp6uzI/maxresdefault.jpg','https://c1.staticflickr.com/3/2899/14341091933_1e92e62d12_b.jpg']);


# Did it send?
if ( $sent ) {
  print "Woohoo! Message and image sent - get SID from Twilio Dashboard\n";
} else {
  print "Looks like the Twilio API returned an error\n";
}
exit;