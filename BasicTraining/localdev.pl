#!/usr/bin/env perl
use Mojolicious::Lite;

post '/hello' => sub {
  my $c = shift;
  $c->render(template => 'twilioquest', format => 'xml');
};

app->start;
__DATA__

@@ twilioquest.xml.ep
<?xml version="1.0" encoding="utf-8"?>
<Response>
  <Say>Hello there! You have successfully configured a web hook.</Say>
  <Say>Good luck on your Twilio quest!</Say>
</Response>

