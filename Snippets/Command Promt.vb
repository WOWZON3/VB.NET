Public Class MyUtilities
    Shared Sub RunCommandCom(command as String, arguments as String, permanent as Boolean) 
        Dim p as Process = new Process() 
        Dim pi as ProcessStartInfo = new ProcessStartInfo() 
        pi.Arguments = " " + if(permanent = true, "/K" , "/C") + " " + command + " " + arguments 
        pi.FileName = "cmd.exe" 
        p.StartInfo = pi 
        p.Start() 
    End Sub
End Class
