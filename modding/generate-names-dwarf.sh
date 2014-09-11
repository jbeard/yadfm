#!/bin/sh
declare -a consonant1=('b' 'd' 'dw' 'f' 'g' 'gl' 'k' 'm' 'n' 'r' 'th' 'thr' 'v' 'z' '');

declare -a vowel=('-');

declare -a consonant2=('d' 'f' 'l' 'm' 'mb' 'n' 'r' 'rz' '');

declare -a consonant3=('n' 'r' '');

for (( i = 0 ; i < ${#consonant1[@]} ; i++ ))
do
	a=${consonant1[$i]}
	for (( j = 0 ; j < ${#vowel[@]} ; j++ ))
	do
		b=${vowel[$j]}
		for (( k = 0 ; k < ${#consonant2[@]} ; k++ ))
		do
			c=${consonant2[$k]}
			for (( m = 0 ; m < ${#vowel[@]} ; m++ ))
			do
				d=${vowel[$m]}
				for (( n = 0 ; n < ${#consonant3[@]} ; n++ ))
				do
					e=${consonant3[$n]}
					if [ "$e" == "n" ]; then
						d='i';
					fi
					if [ "$e" == "r" ]; then
						d='u';
					fi
					if [ "$c" == "l" ]; then
						b='a';
					else
						if [ "$c" == "" ]; then
							if [ "$e" == "r" ]; then
								d='';
								b='o';
							else
								b='a';
							fi
						else
							b='o';
						fi
					fi
					if [ "$e" == "" ]; then
						b='i';
						d='i';
					fi
					name=$a$b$c$d$e;
					b='-';
					d='-';
					echo $name;
				done
			done
		done
	done
done

