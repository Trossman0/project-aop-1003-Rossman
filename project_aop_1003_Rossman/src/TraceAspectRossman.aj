
public aspect TraceAspectRossman {
	
	pointcut classToTrace(): within(*App) && execution(String getName());
	
	before(): classToTrace(){
		String binfo = thisJoinPointStaticPart.getSignature() + ", " + thisJoinPointStaticPart.getSourceLocation().getLine();
		System.out.println("[BGN] " + binfo);
	}
	
	after(): classToTrace(){
		String einfo = thisJoinPointStaticPart.getSourceLocation().getFileName();
		System.out.println("[END] " + einfo);
	}
}
