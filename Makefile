demo:
	cargo rustc -- --emit=llvm-bc -o libtrueog.bc	
	${JAVA_HOME}/bin/javac Demo.java
	${JAVA_HOME}/bin/java -Dexperimental-options -Dpolyglot.llvm.verifyBitcode=false Demo
	
