#!/bin/perl




open(DATA,"./Dataset/data");

@a=<DATA>;
chomp(@a);

print"Please input your file name,set time and what you want to remember\n\n";
print "filename:";
chomp($FileName=<STDIN>);
print "Input username:";
chomp($Username=<STDIN>);
print "set time:";
chomp($SetTime=<STDIN>);
print "content:";
chomp($Remember=<STDIN>);
if(-e "./Dataset/data"){
open(write_file,">./Dataset/Data.sh")or"open file error";
    my $file1=("crontab -l|{ cat; echo \"$SetTime /home/$Username/final/Dataset/$FileName\"; }| crontab -\nchmod u+x /home/$Username/final/Dataset/$FileName");
    my $file11=($FileName);
    my $file5=("$Remember");

print write_file"$file1";
open(write_file,">>./Dataset/data")or"open file error";
    my $file2=($SetTime);
    my $file3=($Remember);
    my $file4=($FileName);
print write_file"FileName:$file4\n";
print write_file"Time:$file2\n";
print write_file"Remember:$file3\n";
open(write_file,">>./Dataset/$FileName")or"open file error";
 my $file8=("#!/bin/bash");
 my $file9=("\n");
 my $file10=($Remember);
    print write_file"$file8";
    print write_file"$file9";
    print write_file"$file9";
    print write_file"$file9";
    print write_file"DISPLAY=:0 notify-send  \"$file10\"";
}
else{
open(write_file,">./Dataset/Data.sh")or"open file error";
    my $file6=("#!/bin/bash");
    my $file7=("\n");
    my $file11=($FileName);
    my $file1=("crontab -l|{ cat; echo \"$SetTime /home/$Username/final/Dataset/$FileName\"; }| crontab -\nchmod u+x /home/$Username/final/Dataset/$FileName");
    my $file5=("$Remember");
print write_file"$file6";
print write_file"$file7";
print write_file"$file1";
open(write_file,">>./Dataset/data")or"open file error";
    my $file2=($SetTime);
    my $file3=($Remember);
    my $file4=($FileName);
print write_file"FileName:$file4\n";
print write_file"Time:$file2\n";
print write_file"Remember:$file3\n";
open(write_file,">>./Dataset/$FileName")or"open file error";
 my $file8=("#!/bin/bash");
 my $file9=("\n");
 my $file10=($Remember);
    print write_file"$file8";
    print write_file"$file9";
    print write_file"$file9";
    print write_file"$file9";
    print write_file"DISPLAY=:0 notify-send  \"$file10\"";
}



close(write_file);
