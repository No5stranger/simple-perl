#!/usr/bin/perl

use warnings;
use strict;

# cpan LWP::UserAgent
use LWP::UserAgent;

my $user_agent = LWP::UserAgent->new;
my $request = HTTP::Request->new('GET' => 'http://www.baidu.com');
my $response = $user_agent->request($request);
print "Request Headers\n";
show_headers($response->request);
print $response->content;

sub show_headers {
    my $request = shift;
    my $headers = $request->headers;
    for my $header_field_name($headers->header_field_names) {
        printf "%-20s:%s\n", $header_field_name, $headers->header($header_field_name);
    }
}
