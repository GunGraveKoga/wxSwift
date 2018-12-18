#include "wrapper.h"
#include "wx/process.h"

extern "C"

{

EWXWEXPORT(void*,wxProcess_CreateDefault)(wxEvtHandler* _prt,int _id)
{
	return (void*)new wxProcess (_prt, _id);
}

EWXWEXPORT(void*,wxProcess_CreateRedirect)(wxEvtHandler* _prt,bool _rdr)
{
	return (void*)new wxProcess (_prt, _rdr);
}

EWXWEXPORT(void,wxProcess_Delete)(wxProcess* self)
{
	delete self;
}

EWXWEXPORT(void,wxProcess_Redirect)(wxProcess* self)
{
	self->Redirect();
}
	
EWXWEXPORT(bool,wxProcess_IsRedirected)(wxProcess* self)
{
	return self->IsRedirected();
}
	
EWXWEXPORT(void,wxProcess_Detach)(wxProcess* self)
{
	self->Detach();
}
	
EWXWEXPORT(void*,wxProcess_GetInputStream)(wxProcess* self)
{
	return (void*)self->GetInputStream();
}
	
EWXWEXPORT(void*,wxProcess_GetErrorStream)(wxProcess* self)
{
	return (void*)self->GetErrorStream();
}
	
EWXWEXPORT(void*,wxProcess_GetOutputStream)(wxProcess* self)
{
	return (void*)self->GetOutputStream();
}
	
EWXWEXPORT(void,wxProcess_CloseOutput)(wxProcess* self)
{
	self->CloseOutput();
}
	

EWXWEXPORT(int,wxProcessEvent_GetPid)(wxProcessEvent* self)
{
	return self->GetPid();
}

EWXWEXPORT(int,wxProcessEvent_GetExitCode)(wxProcessEvent* self)
{
	return self->GetExitCode();
}


EWXWEXPORT(int,wxStreamBase_GetLastError)(wxStreamBase* self)
{
	return (int)self->GetLastError();
}
	
EWXWEXPORT(bool,wxStreamBase_IsOk)(wxStreamBase* self)
{
	return self->IsOk();
}
	
EWXWEXPORT(size_t,wxStreamBase_GetSize)(wxStreamBase* self)
{
	return self->GetSize();
}
	

EWXWEXPORT(void,wxOutputStream_Delete)(wxOutputStream* self)
{
	delete self;
}

EWXWEXPORT(void,wxOutputStream_PutC)(wxOutputStream* self,char c)
{
	self->PutC(c);
}
	
EWXWEXPORT(void,wxOutputStream_Write)(wxOutputStream* self,void* buffer,size_t size)
{
	self->Write((const void*)buffer, size);
}
	
EWXWEXPORT(off_t,wxOutputStream_Seek)(wxOutputStream* self,off_t pos,int mode)
{
	return self->SeekO(pos, (wxSeekMode)mode);
}
	
EWXWEXPORT(off_t,wxOutputStream_Tell)(wxOutputStream* self)
{
	return self->TellO();
}
	
EWXWEXPORT(size_t,wxOutputStream_LastWrite)(wxOutputStream* self)
{
	return self->LastWrite();
}
	
EWXWEXPORT(void,wxOutputStream_Sync)(void* self)
{
	((wxOutputStream*)self)->Sync();
}
	

EWXWEXPORT(void,wxInputStream_Delete)(wxInputStream* self)
{
	delete self;
}

EWXWEXPORT(bool,wxInputStream_Eof)(wxInputStream* self)
{
	return self->Eof();
}
	
EWXWEXPORT(char,wxInputStream_Peek)(wxInputStream* self)
{
	return self->Peek();
}
	
EWXWEXPORT(int,wxInputStream_GetC)(wxInputStream* self)
{
	return self->GetC();
}
	
EWXWEXPORT(void,wxInputStream_Read)(wxInputStream* self,void* buffer,size_t size)
{
	self->Read(buffer, size);
}
	
EWXWEXPORT(off_t,wxInputStream_SeekI)(wxInputStream* self,off_t pos,int mode)
{
	return self->SeekI(pos, (wxSeekMode)mode);
}
	
EWXWEXPORT(off_t,wxInputStream_Tell)(wxInputStream* self)
{
	return self->TellI();
}
	
EWXWEXPORT(size_t,wxInputStream_LastRead)(wxInputStream* self)
{
	return self->LastRead();
}	

EWXWEXPORT(size_t,wxInputStream_UngetBuffer)(wxInputStream* self,void* buffer,size_t size)
{
	return self->Ungetch((const void*)buffer, size);
}
	
EWXWEXPORT(bool,wxInputStream_Ungetch)(wxInputStream* self,char c)
{
	return self->Ungetch(c);
}
	
}
