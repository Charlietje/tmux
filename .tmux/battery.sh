if [ -d /sys/class/power_supply/BAT0 ];
then    
    now=`cat /sys/class/power_supply/BAT0/energy_now`
    full=`cat /sys/class/power_supply/BAT0/energy_full`
    out=`echo $now/$full*100 | bc -l | cut -c 1-5`

    LC_NUMERIC="en_US.UTF-8"
    printf "B: %.f%% ⡇ " $out
else
    echo ""
fi
