import java.util.Objects;

public class TestCodeGen {
	public static void main(String[] args){
		In properOut = new In(args[0]);
		In actualOut = new In(args[1]);
		int num = Integer.parseInt(args[2]);
		while(properOut.hasNextLine()){
			String pOut = properOut.readLine();
			String aOut = actualOut.readLine();
			if(!Objects.equals(pOut, aOut)){
				System.out.println("Test case " + num + " failed");
				System.out.println("Expected output: " + pOut);
				System.out.println("Actual output: " + aOut);
				return;
			}
		}
		System.out.println("Test case " + num + " passed");
	}
}
