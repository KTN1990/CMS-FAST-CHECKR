#!/usr/bin/perl 

use WWW::Mechanize;
use LWP::Simple;
use URI::URL;
use LWP::UserAgent;
use Getopt::Long;
use Parallel::ForkManager;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
use Getopt::Long;
use HTTP::Request;
use LWP::UserAgent;
use Digest::MD5 qw(md5 md5_hex);
use MIME::Base64;
use IO::Select;
use HTTP::Cookies;
use HTTP::Response;
use Term::ANSIColor;
use HTTP::Request::Common qw(POST);
use URI::URL;
use DBI;
use IO::Socket;
use IO::Socket::INET;
$ag = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });#Https websites accept
#$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);
system('cls');
my $datestring = localtime();
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
 
our($list,$thread); 
sub randomagent {
my @array = ('Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0',
'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20120101 Firefox/29.0',
'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)',
'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36',
'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36',
'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31'
);
my $random = $array[rand @array];
return($random);
}
GetOptions(
    'url|u=s' => \$list,
    'threads|t=i'	=> \$thread,
) || &flag();
 
if(!defined($list) || !defined($thread)){
	&flag();
        exit;
}
 
print "[+] Started : $datestring\n";


my $ua = LWP::UserAgent->new;
$ua->timeout(20);

@months = qw(01 02 03 04 05 06 07 08 09 10 11 12);
($second, $minute, $hour, $dayOfMonth, $month, $yearOffset, $dayOfWeek, $dayOfYear, $daylightSavings) = localtime();
$year = 1900 + $yearOffset;
$month = "$months[$month] ";
my $datetime    = localtime;

system("MEGATRONE666");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print color('bold green');

$ok="rzlt";
    if (-e $ok) 
    {
    }
    else
    {
        mkdir $ok or die "Error creating directory: $ok";
    }




print color('bold blue');
print q(

.dP"Y8 88   88 88  dP""b8 88 8888b.  888888     888888 888888    db    8b    d8 
`Ybo." 88   88 88 dP   `" 88  8I  Yb 88__         88   88__     dPYb   88b  d88 
o.`Y8b Y8   8P 88 Yb      88  8I  dY 88""         88   88""    dP__Yb  88YbdP88 
8bodP' `YbodP' 88  YboodP 88 8888Y"  888888       88   888888 dP""""Yb 88 YY 88 
                                                                                                                    
);

print color('reset');
print "                       ";
print colored ("[ FAST CMS CHECKER]",'red on_white'); 
print colored ("[ KILL THE NET X Tr0jaN_DZ ]\n",'blue on_white'),"\n";
print "                           ";
print colored ("[ Start At $datetime ]",'green on_red'),"\n\n";

$a = 0;
open (THETARGET, "<$list") || die "[-] Can't open the file";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;


print color("bold green"), "[*-*] Total sites : ";
print color("bold red"), "".scalar(@TARGETS)."\n\n";
print color('reset');
my $pm = new Parallel::ForkManager($thread);# preparing fork
OUTER: foreach $site(@TARGETS){#loop => working
my $pid = $pm->start and next;
chomp($site);
if($site !~ /http:\/\//) { $site = "$site/"; };
$a++;
cms();
    $pm->finish;
}
$pm->wait_all_children();

################ CMS DETCTER #####################
sub cms(){
##$ua = LWP::UserAgent->new(keep_alive => 1);
$ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (20);
my $cms = $ua->get("$site")->content;
my $cmsd = $ua->get("$site/wp-includes/js/jquery/jquery.js")->content;
$wpsite = $site . '/wp-login.php';
my $wpcms = $ua->get("$wpsite")->content;
my $wpcmsx = $ua->get("$site/wp-login.php")->content;
$jsite2 = $site . '/language/en-GB/en-GB.xml';
my $jcms = $ua->get("$jsite2")->content;
my $cms1 = $ua->get("$site/forum/register.php")->content;
my $jx = $ua->get("$site/administrator/")->content;
my $jxx = $ua->get("$site/joomla/")->content;
$magsite = $site . '/admin';
my $magcms = $ua->get("$magsite")->content;
$dursite = $site . '/user/login';
my $durcms = $ua->get("$dursite")->content;
$lokomedia = "$site/smiley/1.gif";
my $lokomediacms = $ua->get("$lokomedia")->content_type;
$loko = "$site/rss.xml";
my $lokomediacmstow = $ua->get("$loko")->content;

if($cms =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|mootools-core.js|com_content|Joomla!/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Joomla\n\n";
    print color('reset');
    open(save, '>>rzlt/joomla.txt');
    print save "$site\n";   
    close(save);

}
elsif($cms =~/vBulletin|register.php|vbulletin|<meta name="description" content="vBulletin Forums" \/>|<meta name="generator" content="vBulletin" \/>|vBulletin.version =|"baseurl_core":/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Vbulletin\n\n";
    print color('reset');
    open(save, '>>rzlt/vbulletin.txt');
    print save "$site\n";   
    close(save);

}
elsif($cms1 =~/vBulletin|vb_meta_bburl|vb_login_md5password|"baseurl_core":/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Vbulletin-forum\n\n";
    print color('reset');
    open(save, '>>rzlt/vbulletin.txt');
    print save "$site\n";   
    close(save);

}
elsif($cms =~/wp-content/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "WordPress\n\n"; 
    print color('reset'); 
    open(save, '>>rzlt/Wordpress.txt');
    print save "$site\n"; 
    close(save);
}
elsif($wpcms =~/WordPress/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "WordPress\n\n"; 
    print color('reset'); 
    open(save, '>>rzlt/Wordpress.txt');
    print save "$site\n"; 
    close(save);
}
elsif($wpcmsx =~/WordPress/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "WordPress\n\n"; 
    print color('reset'); 
    open(save, '>>rzlt/Wordpress.txt');
    print save "$site\n"; 
    close(save);
}
elsif($cmsd =~/password/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "WordPress\n\n"; 
    print color('reset'); 
    open(save, '>>rzlt/Wordpress.txt');
    print save "$site\n"; 
    close(save);
}
elsif($durcms =~/Drupal|drupal|sites/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "DruPal\n\n";
    print color('reset');
    open(save, '>>rzlt/drupal.txt');
    print save "$site\n";   
    close(save);
}
elsif($magcms =~/Log into Magento Admin Page|name=\"dummy\" id=\"dummy\"|Magento/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Magento\n\n";
    print color('reset');
    open(save, '>>rzlt/magento.txt');
    print save "$site\n";   
    close(save);
}

elsif($cms =~/route=product|OpenCart|route=common|catalog\/view\/theme/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Opencart\n\n";
    print color('reset');
    open(save, '>>rzlt/opencart.txt');
    print save "$site\n";   
    close(save);
}
elsif($cms =~/xenforo|XenForo|uix_sidePane_content/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "XenForo\n\n"; 
    print color('reset'); 
    open(save, '>>rzlt/XenForo.txt');
    print save "$site\n"; 
    close(save);

}
elsif($jcms =~/joomla|com_content|Joomla!/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Joomla\n\n";
    print color('reset');
    open(save, '>>rzlt/joomla.txt');
    print save "$site\n";   
    close(save);
}
elsif($jx =~/com_option|com_content|Joomla!/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Joomla\n\n";
    print color('reset');
    open(save, '>>rzlt/joomla.txt');
    print save "$site\n";   
    close(save);
$site = $site . '/joomla/';	
}
elsif($jxx =~/com_option|com_content|Joomla!/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Joomla\n\n";
    print color('reset');
    open(save, '>>rzlt/joomla.txt');
    print save "$site\n";   
    close(save);
}
elsif($cms =~/Prestashop|prestashop/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Prestashop\n\n";
    print color('reset');
    open(save, '>>rzlt/Prestashop.txt');
    print save "$site\n";   
    close(save);

}
elsif($lokomediacms =~/image\/gif/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Lokomedia\n\n";
    print color('reset');
    open(save, '>>rzlt/lokomedia.txt');
    print save "$site\n";   
    close(save);
}

elsif($lokomediacmstow =~/lokomedia/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Lokomedia\n\n";
    print color('reset');
    open(save, '>>rzlt/lokomedia.txt');
    print save "$site\n";   
    close(save);
}



else{
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Unknown\n\n"; 
    open(save, '>>rzlt/Unknown.txt');
    print color('reset'); 
    print save "$site\n";   
    close(save);

}

}
sub flag {
    print color('bold green');
print q(


                                   `-/+oyyhdmmNNmmmdhs+:.                                           
                              `:ohmMMMMMMMMMMMMMMMMMMMMMMNds/.                                      
                           .+hNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMms:                                   
                         .yNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNs-                                
                        -mMMMMMMyosMyyyyyhhhhhdmMmmNMMMMMMMMMMMMMMMNy-                              
                       -NMMMMMMMh` o.  +-  -/  .m``oMMMMMMMMMMMMMMMMMNo`                            
                      `mMMMMMMMMM/    `N+  oh   -  oMMMMMMMMMMMMMMMMMMMh`                           
                      oMMMMMMMMMy  :  `N/  yy  :   yMMMMMMMMMMMMMMMMMMMMy                           
                      mMMMMMMMMm:-:d-.:M/``hs `d-  yMMMMMMMMMMMMMMMMMMMMM.                          
                    .:MMMMNmddhhyyyyyyydhdmNNNNMNmmNMMMMMMMMMMMMMMMMMMMMM.                          
               -+syyso+:-.`````        `````.:/oyhmMMMMMMMMMMMMMMMMMMMMMN`                          
             /ds/.``                             ``.:+ydNMMMMMMMMMMMMMMMd                           
            `Ns`                                       `.:ohNMMMMMMMMMMMy                           
             -yho:.     `.:/+oosssssyyssssssssoo+/::-.``   `.:smMMMMMMMM+                           
               .:osyyoshys+/:-...`````````....--:/++ossyysso+/:-/sdMMMMM:                           
                   `.om-`   `....`              ````   ```.-sMydmddmMMMM.                           
                    `d.    `..``.::.        `-://::::-.    .NMmdNdNmmmNd                            
                    /y `/ydmmmdhs/.`        ```...-..`     /MMNMNMNNNNMo                            
                    /y sMMMNdNdNmNNy-     .:ohmmNNNNNdy/.  `yMMMMMMMMMM/                            
                    -m hMMN+y/y+ysMMm    /smNMNhyyhhhhdMms` `hMMMMMMMMM.                            
                    `N-odMMd+-+/+mMMm    sNMMMN/s:o/o+sMMM/  hMMMMMMMMm                             
                    yy..yyhNNhhdNMdds...`oMMMMMm+//-+sNMMM+  mMMMMMMMMy                             
                   -M:  .:/odNNmh/`ohmmNd:+o+hNMNdyhmMMMNN. `NMMMMMMMM:                             
                   .mo`    `-:-.   +MMMMMm:   -smmmmmdhys-   hNMMMMMMd                              
                    -yhysyyso+-    /MMNdMMN+   `-+oss+:.     `-ohmdNN-                              
                      .:+yMMMMNo`  -mMs-dMMs       ```.`   ``/ymNMMN+                               
                          yMMMMm`   .s-o.//`       ydmmmyoyhdMMMMMd/                                
                          -MNMMN+  `   `         -`NMMMMMMMMMMMMMo`                                 
                          `NhyMMN+::.``. `  `  . d.hmMMMMMNMMMMMN`                                  
                           mm`hMM+yody/:--:`+`-/.hsyhMMMMNmMMMMMh                                   
                           oM:/dMdh`y::h::Nsshoyood-mMMMMhNmMMMMo                                   
                           `md`-NMMoy..s  h..d`osomdmMMMNyhdMMMm.                                   
                            :Ny ommydy+h+/doos/NomdmNMMm/dohMMN/                                    
                             +Mo -/ddosd//N.:o/NyNNmNho.+shhMN+                                     
                              oMo  `..`--/o/+d+y/:/-:  `hdMNy-                                      
                               oNs`       .  `       `/hMNs-                                        
                                +Nh.               .smMmo.                                          
          ``           `-`  `-`  :dm/.-.-``     `:oyNd/`                                            
         .//:         .//: .//:   `omNMmNmdyo+/omh+//                                               
        -///.        .///-.///-     `:oooshmNNNmy///`                -:.                            
       :///.   `:-  `///:.///:     `....----:/..///.                .///.  `.`           `...------.
     `:///-.` `://` ://:`://:      ://///::--`.///..------.        .////- `///` -------..//////:--` 
    `://////- .//:`-///`-///`      `.///-./:..///.`::/::-.        ./////:`///- `::/::-.  `:///`     
   `//////-.`-/:-`-//:`://:`       `///--///:///.-::::::.        .///.///://- -::::::.   ://:`      
  `//////`  :///`-//- -//-        `///-.///////. .----.`        `//:` .////-  ----..`   -//:        
 `://..//: `//:`.//- -//-         ://.`///`-//.::///////:.     `//:`   ://-`:////////:.-//-         
 ://.  .//`./:`.//- .//-         -//. `/:` //.`-.....``        :/:      .:``-.....``  .//-          
://`    `-- .``//- .//-          :/`   .   -`                 `/-                     ./-           
//`           :/-  :/.           `                            `.                       `            
:`            `.   `.                                                                        `                                                                         
                                                                                                         
);
print color('reset');
print colored ("[FAST CMS CHECKER]",'red on_white'),"\n"; 
print colored ("[X]: CODER: KILL THE NET",'red on_white',"\n"); 
print colored ("[X]: install : cpan Parallel::ForkManager + move to Parallel-ForkManager directory + do this (perl Makefile.PL && make test && make install) or (perl Makefile.PL && dmake test && dmake install) ",'red on_white',"\n"); 
    print "\nUASGE: perl script.pl -u list.txt -t 5 \n\n";

}
