#!/bin/bash -x
function DegreeF {
	degC=$((($degf-32)*5/9))
   echo "Celcius= " $degC

}

function DegreeC {
	degF=$((($degc*9/5)+32))
	echo "Farhenheit= " $degF
}
echo "Choose Conversion (1 or 2):"
echo "1.degF to degC"
echo "2.degC to degF"

read choice

case $choice in
				 1) read -p "Enter degree fahrenheit: " degf
					 if (( $degf<32 || $degf>212))
					 then
						echo "inavlid  Input"
						exit 0
					 fi
					 DegreeF $degf
					;;
				 2) read -p "Enter degree celcius: " degc
					 if (( $degc<0 || $degc>100))
                then
                  echo "inavlid  Input"
                  exit 0
                fi
                DegreeC $degc
               ;;

				 *) echo "Invalid choice" ;;
esac
