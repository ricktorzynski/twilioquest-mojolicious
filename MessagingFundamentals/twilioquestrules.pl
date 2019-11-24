#!/usr/bin/env perl
use Mojolicious::Lite;
use SMS::Send;

post '/sms' => sub {
  my $sms = SMS::Send->new('NANP::Twilio');
  my $sent = $sms->send_sms(to =>'+19999999999',
              text=> 'TwilioQuest rules');

};

app->start;
__DATA__
