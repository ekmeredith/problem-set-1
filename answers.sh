#! /usr/bin/env bash

#Which state in states.tab.gz has the lowest murder rate?
 datasets='/Users/eknouf/Desktop/class/prob1/data-sets'

 states=$datasets/states.tab.gz

 answer_1=$(gzcat $states\
 | grep -v '^#'\
 |cut -f1,6\
 |sort -k2n\
 |head -n1\
 |cut -f1\
 |sed 's/"//g')
 echo "answer-1: $answer_1"

#How many sequence records are in the sample.fa file?
datasets='/Users/eknouf/Desktop/class/prob1/data-sets'
sample=$datasets/sample.fa
answer_2=$(cat $sample\
|grep -c  '>' )
echo "answer-2: $answer_2"

#How many unique CpG IDs are in cpg.bed.gz?
datasets='/Users/eknouf/Desktop/class/prob1/data-sets'
cpg=$datasets/cpg.bed.gz
answer_3=$(gzcat $cpg\
| cut -f4 \
| sort -k1 \
| uniq -c \
| wc -l)
echo "answer-3: $answer_3"

# w many sequence records are in the SP1.fq file?
datasets='/Users/eknouf/Desktop/class/prob1/data-sets'
sp1=$datasets/SP1.fq
answer_4=$(cat $sp1 \
|grep '^@cluster' \
|wc -l)
echo "answer-4: $answer_4"

#How many words are on lines containing the word bloody in hamlet.txt?
datasets='/Users/eknouf/Desktop/class/prob1/data-sets'
hamlet=$datasets/hamlet.txt
answer_5=$(cat $hamlet \
|grep -i 'bloody' \
| wc -w)
echo "answer-5: $answer_5"

#What is the length of the sequence in the first record of sample.fa?
datasets='/Users/eknouf/Desktop/class/prob1/data-sets'
sample=$datasets/sample.fa
answer_6=$(cat $sample \
| grep -v '^>' \
| head -n1 \
| tr -d '\n\r'\
| wc -m)
echo "answer-6: $answer_6"

#What is the name of the longest gene in genes.hg19.bed.gz?
datasets='/Users/eknouf/Desktop/class/prob1/data-sets'
genes=$datasets/genes.hg19.bed.gz
answer_7=$(gzcat $genes \
| awk '{print $4, $3-$2}'\
| sort -k2nr \
| cut -f1 -d' '\
|head -n1)
echo "answer-7: $answer_7"

#How many unique chromosomes are in genes.hg19.bed.gz?
datasets='/Users/eknouf/Desktop/class/prob1/data-sets'
genes=$datasets/genes.hg19.bed.gz
answer_8=$(gzcat $genes \
| cut -f1 \
| sort -k1 \
| uniq -c \
| wc -l)
echo "answer-8: $answer_8"

#How many intervals are associated with CTCF (not CTCFL)

datasets='/Users/eknouf/Desktop/class/prob1/data-sets'
peaks=$datasets/peaks.chr22.bed.gz
answer_9=$(gzcat $peaks \
| cut -f4 \
| grep -w 'CTCF' \
| wc -l)
echo "answer-9: $answer_9"


#On what chromosome is the largest interval in lamina.bed?
datasets='/Users/eknouf/Desktop/class/prob1/data-sets'
lamina=$datasets/lamina.bed
answer_10=$(cat $lamina \
| awk '{print $1, $3-$2}'\
|sort -k2nr \
|cut -f1 -d' ' \
|head -n1)
echo "answer-10: $answer_10"

