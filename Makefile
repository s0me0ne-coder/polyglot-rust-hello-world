demo:
	cargo rustc -- --emit=llvm-bc -o libtrueog.bc	
	rm libtrueog-final.bc
	mv libtrueog*.bc libtrueog-final.bc
	${JAVA_HOME}/bin/javac Demo.java
	${JAVA_HOME}/bin/java -Dexperimental-options -Dpolyglot.llvm.verifyBitcode=false Demo
	
