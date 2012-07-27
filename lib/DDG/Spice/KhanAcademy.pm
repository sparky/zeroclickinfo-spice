package DDG::Spice::KhanAcademy;

use DDG::Spice;

spice to => join '&',
    'https://gdata.youtube.com/feeds/api/videos?',
    'author=khanacademy',
    'max-results=50',
    'alt=json-in-script',
    'callback={{callback}}',
    'v=2',
    'q=$1';

triggers startend => "khan", "help", "tutorial", "khan academy";

handle remainder => sub {
    return $_ unless !defined $_;
    return;   
};

1;
