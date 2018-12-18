#ifndef FILESTEAM_H
#define FILESTEAM_H

/*-----------------------------------------------------------------------------
  Memory Input stream
-----------------------------------------------------------------------------*/

TClass(wxMemoryInputStream) wxMemoryInputStream_Create(void* data,int len);
void wxMemoryInputStream_Delete( TSelf(wxMemoryInputStream) self );

/*-----------------------------------------------------------------------------
  File Input stream
-----------------------------------------------------------------------------*/

TClass(wxFileInputStream) wxFileInputStream_Create(TClass(wxString) ofileName);
void wxFileInputStream_Delete( TSelf(wxFileInputStream) self );
TBool wxFileInputStream_IsOk( TSelf(wxFileInputStream) self);

/*-----------------------------------------------------------------------------
  File Output stream
-----------------------------------------------------------------------------*/

TClass(wxFileOutputStream) wxFileOutputStream_Create(TClass(wxString) ofileName);
void wxFileOutputStream_Delete( TSelf(wxFileOutputStream) self );
TBool wxFileOutputStream_IsOk( TSelf(wxFileOutputStream) self);

/*-----------------------------------------------------------------------------
 File I/O stream
 -----------------------------------------------------------------------------*/

TClass(wxFileStream) wxFileStream_Create(TClass(wxString) ioFileName);
void wxFileStream_Delete( TSelf(wxFileStream) self);
TBool wxFileStream_IsOK( TSelf(wxFileStream) self);

#endif /* FILESTEAM_H */
