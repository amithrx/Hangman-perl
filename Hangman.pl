#!/usr/local/bin/perl

use strict;
use warnings;
use diagnostics;
use feature 'say';

my @empty_list=(); #array,where the sample word is listed
open (my $fh, "<", "sampleword.txt" );
my $i=0;
while (my $line = <$fh> ){
    $empty_list[$i]=$line;
    $i+=1;
}

my $size_array=scalar @empty_list;
my $rand=int(rand $size_array);
my $word=$empty_list[$rand]; #word to be guessed
chomp $word;
my @word_array=(); #word array,used to display the modified word's after each moves
my @guess_array=(); #guess array,to store all the correct as well as incorrect guesses
my $guess;

for( $i=0;$i<length $word;$i++){
    $word_array[$i]='_';  
}

my $temp=0;
my $left=6; #we can make in total 6 wrong attempt's
my $check=0; #condition to terminate the while loop
my $guess_index=0;

#subroutines to print the array
sub printarray{
    my @list=@_;
    for($i=0;$i<scalar @list;$i++){
        print"$list[$i] ";
    }
    print"\n";
}

#subroutines to display the verdict
sub display{
    my $val=$_[0];
    if($val==1){
        print "<-----------Yeah,you got it----------->\n";
    }
    else{
        print "<-----------OOPs,you losses the game----------->\n";
    }
    print "Given word is:$word\n";
    $check=1;
}

while($check==0){
   print "Here is your word:: "; 
printarray(@word_array);

print "Guesses so far::";
printarray(@guess_array);

print "Make a guess::";
my $guess=<STDIN>;
chomp $guess;

my $checking=0;
for(my $p=0;$p<scalar @guess_array;$p++){
if($guess eq $guess_array[$p]){
  $checking=1;
  last;
}
}
if($checking==1){
print "Already guessed before,you have $left body part's left\n";
$checking=0;
}

else{
my $len=(length $guess);
$guess_array[$guess_index]=$guess;
$guess_index+=1;

if($len==1)
{
    for( $i=0;$i<length $word;$i++){
    if($guess eq substr($word,$i,1)){
        $word_array[$i]=$guess;
        $temp=1;
    }
    }
if($temp==1){
   print "Good guess,you have $left body part's left\n"; 
   $temp=0;
}
else{
    $left=$left-1;
    print "Sorry!!wrong guess,you have $left body part's left\n";
}
}
elsif($len==length $word){

    if($guess eq $word){
    display(1);
    }
    else{
        $left=$left-1;
    print "Sorry!!wrong guess,you have $left body part's left\n";
    }
}
else{
    $left=$left-1;
    print "Sorry!!wrong guess,you have $left body part's left\n";
}
}
my $cnt=0;
for( $i=0;$i<length $word;$i++){
    if($word_array[$i] eq'_'){
        $cnt+=1;
    }
}
if($cnt==0){
    display(1);
    
}
elsif($left==0){
    display(2);
}
if($left==6){
   print "  _______\n";
    print"  :     |\n";
    print"        |\n";
    print"        |\n";
    print"        |\n";
    print"        |\n";
    print"        |\n";
    print"==========\n";
}
elsif($left==5){
    print "  _______\n";
    print"  :     |\n";
    print"  O     |\n";
    print"        |\n";
    print"        |\n";
    print"        |\n";
    print"        |\n";
    print"==========\n";
}
elsif($left==4){
    print "  _______\n";
    print"  :     |\n";
    print"  O     |\n";
    print"  |     |\n";
    print"  |     |\n";
    print"        |\n";
    print"        |\n";
    print"==========\n";
}
elsif($left==3){
    print "  _______\n";
    print"  :     |\n";
    print"  O     |\n";
    print" \\|     |";
    print"\n";
    print"  |     |\n";
    print"        |\n";
    print"        |\n";
    print"==========\n";
}
elsif($left==2){
    print "  _______\n";
    print"  :     |\n";
    print"  O     |\n";
    print" \\|/    |";
    print"\n";
    print"  |     |\n";
    print"        |\n";
    print"        |\n";
    print"==========\n";
}
elsif($left==1){
    print "  _______\n";
    print"  :     |\n";
    print"  O     |\n";
    print" \\|/    |";
    print"\n";
    print"  |     |\n";
    print" /      |\n";
    print"        |\n";
    print"==========\n";
}
else{
    print "  _______\n";
    print"  :     |\n";
    print"  O     |\n";
    print" \\|/    |";
    print"\n";
    print"  |     |\n";
    print" / \\    |\n";
    print"        |\n";
    print"==========\n";
}
print"\n";
}

close($fh);
