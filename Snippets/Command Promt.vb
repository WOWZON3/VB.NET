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


Public Class Form1
    Private Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Shell("cmd.exe /k" + TextBox1.Text)
        Close()
    End Sub
End Class
