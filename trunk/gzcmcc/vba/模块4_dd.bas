
Sub CombineWorkbooks()
	Dim FilesToOpen
	Dim x As Integer
	Application.ScreenUpdating =True
	FilesToOpen = Application.GetOpenFilename(FileFilter:="Micrsofe Excel�ļ�(*.xls), *.xls", MultiSelect:=True, Title:="Ҫ�ϲ����ļ�")
	If FilesToOpen = False then GoTo Cancel
	Set sk = Workbooks.Open(Filename:="E:\book1.xls")         'ע���Լ��޸�·��
	For x=1 to  UBound(FilesToOpen)
		Set wk = Workbooks.Open(Filename:=FilesToOpen(x))
		wk.Sheets("ԭʼ��ͳ").Activate
		Range("E1:G1,AF1:AH1").Select
		Range(Selection, Selection.End(xlDown)).Select
		Selection.Copy

		sk.Sheets("sheet1").Activate
		Cells(Range("a65536").End(xlUp).Row + 1, 1).Select
		ActiveSheet.Paste
		
		sk.ActiveWorkbook.Save                     '�����޸�
		Windows(sk).Close
		Windows(wk).Close
	next x
    MsgBox "�ϲ��ɹ���ɣ�"
 End Sub

