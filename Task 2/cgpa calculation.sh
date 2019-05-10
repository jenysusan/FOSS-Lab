Jeny Susan Rajan
     S4 D
  Roll No: 28


#!/usr/bin/env bash

pdftotext -nopgbrk result_CHN.pdf
grep --no-group-separator -A3 'CHN17CS' result_CHN.txt | tr '\n' ' ' | sed 's/\ CHN/\nCHN/g' > results.txt
cat result_CHN.txt
cat results.txt
sed -i 's/(O)/ 10  /g' results.txt
sed -i 's/(A+)/ 9  /g' results.txt
sed -i 's/(A)/ 8.5  /g' results.txt
sed -i 's/(B+)/ 8  /g' results.txt
sed -i 's/(B)/ 7  /g' results.txt
sed -i 's/(C)/  6  /g' results.txt
sed -i 's/(P)/  5  /g' results.txt
sed -i 's/(F)/  0  /g' results.txt
sed -i 's/(FE)/  0  /g' results.txt
sed -i 's/(I)/ 0 /g' results.txt
cat results.txt
awk '{s=$3*$24*1+$27*1}{r=s/24}{print r}' results.txt >sgpacalc.txt
cat sgpacalc.txt
awk '{print $1}' results.txt >reg1.txt
cat reg1.txt
paste -d ' \t ' reg1.txt sgpacalc.txt >res.txt
cat res.txt
awk 'NR==FNR {seen[$3]=1; next} seen[$1]==1 {seen[$2]++; print $2}' s4d.txt res.txt >s1sgpa.txt
awk '{print $3}' s4d.txt >reg1.txt
paste -d ' \t ' reg1.txt s1sgpa.txt >s1final.txt
pdftotext -nopgbrk result_CHN2.pdf
grep --no-group-separator -A3 'CHN17CS' result_CHN2.txt | tr '\n' ' ' | sed 's/\ CHN/\nCHN/g' > results2.txt
sed -i 's/(O)/ 10  /g' results2.txt
sed -i 's/(A+)/  9  /g' results2.txt
sed -i 's/(A)/  8.5  /g' results2.txt
sed -i 's/(B+)/  8  /g' results2.txt
sed -i 's/(B)/  7  /g' results2.txt
sed -i 's/(C)/  6  /g' results2.txt
sed -i 's/(P)/  5  /g' results2.txt
sed -i 's/(F)/  0  /g' results2.txt
sed -i 's/(FE)/  0  /g' results2.txt
sed -i 's/(I)/ 0 /g' results2.txt
cat results2.txt
$24*3+$27*1}{r=s/23}{print r}' results2.txt >sgpas2.txt
cat sgpas2.txt
awk '{print $1}' results2.txt >reg2.txt
cat reg2.txt
paste -d ' \t ' reg2.txt sgpas2.txt >result.txt 
cat result.txt
awk 'NR==FNR {seen[$3]=1; next} seen[$1]==1 {seen[$2]++; print $2}' s4d.txt result.txt >s2sgpa.txt
cat s2sgpa.txt
awk '{print $3}' s4d.txt >reg1.txt
paste -d ' \t ' reg1.txt s2sgpa.txt >s2final.txt
paste -d ' \t ' s1final.txt s2sgpa.txt >s1_s2.txt
cat s1_s2.txt
awk '{s=$2+$3}{r=s/2}{print r}' s1_s2.txt >cgpa.txt
paste -d ' \t ' reg1.txt cgpa.txt >final_cgpa.txt
awk '{print $4}' s4d.txt >name.txt
echo "Reg no.  Name  s1 sgpa  s2 sgpa  Final cgpa"
paste -d ' \t  \t ' reg1.txt name.txt >A.txt
paste -d ' \t  \t ' A.txt s1sgpa.txt >B.txt
paste -d ' \t  \t ' B.txt s2sgpa.txt >C.txt
paste -d ' \t  \t ' C.txt cgpa.txt >s4dfinaldoc.txt
echo
cat s4dfinaldoc.txt







