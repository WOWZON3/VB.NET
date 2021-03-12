Public WithEvents download As WebClient

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            download = New WebClient
            download.DownloadFileAsync(New Uri(TextBox1.Text), TextBox2.Text)
            Button1.Enabled = False
        Catch ex As Exception
            MsgBox("Fehler! " & ex.Message)
        End Try
    End Sub

Private Sub download_DownloadFileCompleted(sender As Object, e As System.ComponentModel.AsyncCompletedEventArgs) Handles download.DownloadFileCompleted
        Try
            Button1.Enabled = True
        Catch ex As Exception

        End Try

    End Sub

Private Sub download_DownloadProgressChanged(ByVal sender As System.Object, ByVal e As System.Net.DownloadProgressChangedEventArgs) Handles download.DownloadProgressChanged
        Dim totalbytes As Long = e.TotalBytesToReceive / 1024
        Dim mtotalbytes As Long = totalbytes / 1024
        Dim bytes As Long = e.BytesReceived / 1024
        Dim mbytes As Long = bytes / 1024
        If totalbytes < 1 Then totalbytes = 1
        If bytes < 1 Then bytes = 1
        If totalbytes > 1024 Then
            Label1.Text = mbytes.ToString & " MB von " & mtotalbytes & " MB"
        Else
            Label1.Text = bytes.ToString & " KB von " & totalbytes & " KB"
        End If
        ProgressBar1.Value = e.ProgressPercentage
        Label2.Text = ProgressBar1.Value & "%"
    End Sub
