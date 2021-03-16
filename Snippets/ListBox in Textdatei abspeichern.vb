Dim sav As New SaveFileDialog
    	sav.Filter = "Textdatei|*.txt"
    	If sav.ShowDialog = Windows.Forms.DialogResult.OK Then
        	Dim text As String = ""
        	For Each Litem As String In ListBox1.Items
            	text &= vbCrLf & Litem
        	Next
        	IO.File.WriteAllText(sav.FileName, text)
    	End If
