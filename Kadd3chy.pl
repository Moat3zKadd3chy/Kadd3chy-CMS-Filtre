#!/usr/bin/perl

#Author : Kadd3chy
#Date : 09/07/2018
#Kadd3chy CMS Filtre

use HTTP::Request;
use LWP::UserAgent;
use IO::Select;
use HTTP::Response;
use Term::ANSIColor;
print color('reset');
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }

$logo="
                              ,-.
        ___,---.__          /'|`\          __,---,___
     ,-'    \`    `-.____,-'  |  `-.____,-'    //    `-.
   ,'        |           ~'\     /`~           |        `.
  /      ___//              `. ,'          ,  , \___      \      Kadd3chy CMS Filtre
 |    ,-'   `-.__   _         |        ,    __,-'   `-.    |     Now Run Me & See Th3 Magic  :D
 |   /          /\_  `   .    |    ,      _/\          \   |
 \  |           \ \`-.___ \   |   / ___,-'/ /           |  /
  \  \           | `._   `\\  |  //'   _,' |           /  /
   `-.\         /'  _ `---'' , . ``---' _  `\         /,-'
      ``       /     \    ,='/ \`=.    /     \       ''
              |__   /|\_,--.,-.--,--._/|\   __|
              /  `./  \\`\ |  |  | /,//' \,'  \
             /   /     ||--+--|--+-/-|     \   \
            |   |     /'\_\_\ | /_/_/`\     |   |
             \   \__, \_     `~'     _/ .__/   /
              `-._,-'   `-._______,-'   `-._,-'

\n\n
";

print color('bold green');

print $logo;

######################################################
##################### Stating :D #####################
######################################################
print $kadd3chyking;
print color('bold red'),"[";
print color('bold green'),"1";
print color('bold red'),"] ";
print color('bold white'),"Normal Mode\n";
print color('bold red'),"[";
print color('bold green'),"2";
print color('bold red'),"] ";
print color('bold white'),"MultiThread Mode\n";
print color('red'),('[-]')," Choose Number : ";

my $kadd3chyking = <STDIN>;
chomp $kadd3chyking;
if($kadd3chyking eq '1'){
normal();
}
if($kadd3chyking eq '2'){
thread();
}

sub normal($site){
system('cls');


$logo="
                              ,-.
        ___,---.__          /'|`\          __,---,___
     ,-'    \`    `-.____,-'  |  `-.____,-'    //    `-.
   ,'        |           ~'\     /`~           |        `.
  /      ___//              `. ,'          ,  , \___      \      Kadd3chy CMS Filtre [Normal Mode] 
 |    ,-'   `-.__   _         |        ,    __,-'   `-.    |      Now Run Me & See Th3 Magic  :D
 |   /          /\_  `   .    |    ,      _/\          \   |
 \  |           \ \`-.___ \   |   / ___,-'/ /           |  /
  \  \           | `._   `\\  |  //'   _,' |           /  /
   `-.\         /'  _ `---'' , . ``---' _  `\         /,-'
      ``       /     \    ,='/ \`=.    /     \       ''
              |__   /|\_,--.,-.--,--._/|\   __|
              /  `./  \\`\ |  |  | /,//' \,'  \
             /   /     ||--+--|--+-/-|     \   \
            |   |     /'\_\_\ | /_/_/`\     |   |
             \   \__, \_     `~'     _/ .__/   /
              `-._,-'   `-._______,-'   `-._,-'
";

print color('bold green');
print $logo;

print color("bold blue")," Path To Your Website List : ";
my $list = <STDIN>;

open(tarrget,"<$list") or die "Add List Sir \n";
while(<tarrget>){
chomp($_);
$site = $_;
if($site !~ /http:\/\//) { $site = "http://$site/"; };
detecter();
}
system("PAUSE");

sub detecter ($site){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);

my $tnx = $ua->get("$site")->content;
if($tnx =~/wp-content\/themes\/|wp-content\/plugins\/|wordpress/) {
    print color('green');
    print "[WordPress] / $site \n";
    print color('reset');
open(save, '>>WordPress.txt');
    print save "$site\n";
      close(save);
   

}

elsif($tnx =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>|Joomla!|Joomla|joomla/) {
    print color('green');
    print "[Joomla]  / $site \n";
    print color('reset');
open(save, '>>Joomla.txt');
    print save "$site\n";
    close(save);

    }
elsif($tnx =~/\/modules\/system\/system.menus.css|\/sites\/default\/files\/|<meta name=\"Generator\" content=\"Drupal 7/) {
    print color('green');
    print "[Drupal] / $site \n";
    print color('reset');
open(save, '>>Drupal.txt');
    print save "$site\n";
    close(save);
     

    }elsif($tnx =~/\/Prestashop|\/js\/jquery\/plugins\/|<meta name=\"Generator\" content=\"Prestashop/) {
    print ;
    print "[PrestaShop] / $site \n";
    print color('reset');
open(save, '>>PrestaShop.txt');
    print save "$site\n";
    close(save);
    

    
}
}
}

sub thread ($site){

$logo="
                              ,-.
        ___,---.__          /'|`\          __,---,___
     ,-'    \`    `-.____,-'  |  `-.____,-'    //    `-.
   ,'        |           ~'\     /`~           |        `.
  /      ___//              `. ,'          ,  , \___      \      Kadd3chy CMS Filtre [Normal Mode] 
 |    ,-'   `-.__   _         |        ,    __,-'   `-.    |      Now Run Me & See Th3 Magic  :D
 |   /          /\_  `   .    |    ,      _/\          \   |
 \  |           \ \`-.___ \   |   / ___,-'/ /           |  /
  \  \           | `._   `\\  |  //'   _,' |           /  /
   `-.\         /'  _ `---'' , . ``---' _  `\         /,-'
      ``       /     \    ,='/ \`=.    /     \       ''
              |__   /|\_,--.,-.--,--._/|\   __|
              /  `./  \\`\ |  |  | /,//' \,'  \
             /   /     ||--+--|--+-/-|     \   \
            |   |     /'\_\_\ | /_/_/`\     |   |
             \   \__, \_     `~'     _/ .__/   /
              `-._,-'   `-._______,-'   `-._,-'
";

print color('bold green');
print $logo;

print "Path To Your Theards : \n";
my $thr = <STDIN>;
chomp $thr;
print "Path To Your List : \n";

my $file = <STDIN>;
chomp $file;

open(sites,"<".$file) or die $!;
while($site = <sites>)
{
chomp($site);
push(@threads, threads->create (\&bot, $site));
sleep(1) while(scalar threads->list(threads::running) >= $thr);
}
eval {
$_->join foreach @threads;
@threads = ();
};
close(sites);


sub detecter($site){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);

my $tnx = $ua->get("$site")->content;
if($tnx =~/wp-content\/themes\/|wp-content\/plugins\/|wordpress/) {
    print color('green');
    print "[WordPress] = $site \n";
    print color('reset');
open(save, '>>WordPress.txt');
    print save "$site\n";
      close(save);
   

}

elsif($tnx =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>|Joomla!|Joomla|joomla/) {
    print color('green');
    print "[Joomla]  = $site \n";
    print color('reset');
open(save, '>>Joomla.txt');
    print save "$site\n";
    close(save);

    }
elsif($tnx =~/\/modules\/system\/system.menus.css|\/sites\/default\/files\/|<meta name=\"Generator\" content=\"Drupal 7/) {
    print color('green');
    print "[Drupal] = $site \n";
    print color('reset');
open(save, '>>Drupal.txt');
    print save "$site\n";
    close(save);
     

    }elsif($tnx =~/\/Prestashop|\/js\/jquery\/plugins\/|<meta name=\"Generator\" content=\"Prestashop/) {
    print ;
    print "[PrestaShop] = $site \n";
    print color('reset');
open(save, '>>PrestaShop.txt');
    print save "$site\n";
    close(save);
    

    
}
}
}