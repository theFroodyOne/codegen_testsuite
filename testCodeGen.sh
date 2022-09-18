#!/usr/bin/bash

javac TestCodeGen.java
#cd codegen_testcases || exit
export JASMIN_JAR=../src/jasmin.jar
for i in {001..002}
do
	#cd codegen_testcases
	../bin/alanc ./codegen_testcases/codegen$i.alan > compilation.out
	java codegen$i > ./codegen_testcases/actual_output/codegen$i.out
	#cd ..
	java TestCodeGen ./codegen_testcases/desired_output/codegen$i.out ./codegen_testcases/actual_output/codegen$i.out $i
done
rm compilation.out
