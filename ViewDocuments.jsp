

<jsp:directive.page session="false" import="java.io.*" /> 
<jsp:scriptlet> 
response.setContentType("application/pdf");
try { 
    int len = (int)new File("E://test.pdf").length(); 
    response.setContentLength(len); 
    byte[] buf = new byte[len]; 
    FileInputStream pdfin = new FileInputStream("G://test.pdf");
    pdfin.read(buf); 
    pdfin.close();
    OutputStream pdfout = response.getOutputStream();
    pdfout.write(buf,0,len);
    pdfout.flush();
} catch (Exception e) { 
    response.sendError(HttpServletResponse.SC_BAD_REQUEST);
}
</jsp:scriptlet>
