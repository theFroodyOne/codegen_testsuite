#!/usr/bin/bash

javac TestCodeGen.java
export JASMIN_JAR=../src/jasmin.jar
for i in {001..061}
do
	../bin/alanc ./codegen_testcases/codegen$i.alan > compilation.out
	java codegen$i > ./codegen_testcases/actual_output/codegen$i.out
	java TestCodeGen ./codegen_testcases/desired_output/codegen$i.out ./codegen_testcases/actual_output/codegen$i.out $i
done
rm compilation.out
echo "Done!"
