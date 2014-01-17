define cls
shell clear
end
document cls
clear the screen
end

define flags
if (($eflags >> 0xB) & 1 )
printf "O "
else
printf "o "
end
if (($eflags >> 0xA) & 1 )
printf "D "
else
printf "d "
end
if (($eflags >> 9) & 1 )
printf "I "
else
printf "i "
end
if (($eflags >> 8) & 1 )
printf "T "
else
printf "t "
end
if (($eflags >> 7) & 1 )
printf "S "
else
printf "s "
end
if (($eflags >> 6) & 1 )
printf "Z "
else
printf "z "
end
if (($eflags >> 4) & 1 )
printf "A "
else
printf "a "
end
if (($eflags >> 2) & 1 )
printf "P "
else
printf "p "
end
if ($eflags & 1)
printf "C "
else
printf "c "
end
printf "\n"
end
document flags
Print flags register
end

define eflags
printf "     OF <%d>  DF <%d>  IF <%d>  TF <%d>",\
        (($eflags >> 0xB) & 1 ), (($eflags >> 0xA) & 1 ), \
        (($eflags >> 9) & 1 ), (($eflags >> 8) & 1 )
printf "  SF <%d>  ZF <%d>  AF <%d>  PF <%d>  CF <%d>\n",\
        (($eflags >> 7) & 1 ), (($eflags >> 6) & 1 ),\
        (($eflags >> 4) & 1 ), (($eflags >> 2) & 1 ), ($eflags & 1)
printf "     ID <%d>  VIP <%d> VIF <%d> AC <%d>",\
        (($eflags >> 0x15) & 1 ), (($eflags >> 0x14) & 1 ), \
        (($eflags >> 0x13) & 1 ), (($eflags >> 0x12) & 1 )
printf "  VM <%d>  RF <%d>  NT <%d>  IOPL <%d>\n",\
        (($eflags >> 0x11) & 1 ), (($eflags >> 0x10) & 1 ),\
        (($eflags >> 0xE) & 1 ), (($eflags >> 0xC) & 3 )
end
document eflags
Print entire eflags register
end
