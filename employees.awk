{printf "%-2d %-15s %2s %5d\n", NR,$1,"RM",$5}
{if ($3 ~ "M") 
  malecount=malecount+1
 else
  femalecount=femalecount+1
}

{sum+=$5}
END { printf "%-18s %2s %5d\n", "# of records =","", NR}
END { printf "%-18s %2s %5d\n", "Total Male   =","", malecount}
END { printf "%-18s %2s %5d\n", "Total Female =","", femalecount}
END { printf "%-18s %2s %5d\n", "Total        =","RM", sum}
END { printf "%-18s %2s %5d\n", "Average      =","RM", sum/NR}

