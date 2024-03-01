import java.io.*;
import org.graalvm.polyglot.*;

class Demo {
    public static void main(String[] args) throws IOException {
        Context polyglot = Context.newBuilder().
        		               allowAllAccess(true).build();
        File file = new File("libtrueog-final.bc");
        Source source = Source.newBuilder("llvm", file).build();
	polyglot.eval(source);
        Value cpart = polyglot.getBindings("llvm").getMember("hello");
	cpart.execute();
    }
}

