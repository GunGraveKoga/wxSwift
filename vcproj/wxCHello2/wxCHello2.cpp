#include "stdafx.h"
#if 0
// wxWidgets "Hello world" Program
// For compilers that support precompilation, includes "wx/wx.h".
#include <wx/wxprec.h>
#ifndef WX_PRECOMP
#include <wx/wx.h>
#endif
class MyApp : public wxApp
{
public:
	virtual bool OnInit();
};
class MyFrame : public wxFrame
{
public:
	MyFrame(const wxString& title, const wxPoint& pos, const wxSize& size);
private:
	void OnHello(wxCommandEvent& event);
	void OnExit(wxCommandEvent& event);
	void OnAbout(wxCommandEvent& event);
	wxDECLARE_EVENT_TABLE();
};
enum
{
	ID_Hello = 1
};
wxBEGIN_EVENT_TABLE(MyFrame, wxFrame)
EVT_MENU(ID_Hello, MyFrame::OnHello)
EVT_MENU(wxID_EXIT, MyFrame::OnExit)
EVT_MENU(wxID_ABOUT, MyFrame::OnAbout)
wxEND_EVENT_TABLE()
wxIMPLEMENT_APP(MyApp);
bool MyApp::OnInit()
{
	MyFrame *frame = new MyFrame("Hello World", wxPoint(50, 50), wxSize(450, 340));
	frame->Show(true);
	return true;
}
MyFrame::MyFrame(const wxString& title, const wxPoint& pos, const wxSize& size)
	: wxFrame(NULL, wxID_ANY, title, pos, size)
{
	wxMenu *menuFile = new wxMenu;
	menuFile->Append(ID_Hello, "&Hello...\tCtrl-H",
					 "Help string shown in status bar for this menu item");
	menuFile->AppendSeparator();
	menuFile->Append(wxID_EXIT);
	wxMenu *menuHelp = new wxMenu;
	menuHelp->Append(wxID_ABOUT);
	wxMenuBar *menuBar = new wxMenuBar;
	menuBar->Append(menuFile, "&File");
	menuBar->Append(menuHelp, "&Help");
	SetMenuBar(menuBar);
	CreateStatusBar();
	SetStatusText("Welcome to wxWidgets!");

}
void MyFrame::OnExit(wxCommandEvent& event)
{
	Close(true);
}
void MyFrame::OnAbout(wxCommandEvent& event)
{
	wxMessageBox("This is a wxWidgets' Hello world sample",
				 "About Hello World", wxOK | wxICON_INFORMATION);
}
void MyFrame::OnHello(wxCommandEvent& event)
{
	wxLogMessage("Hello world from wxWidgets!");
}
#else
#include <stdio.h>

#define DLL_STORAGE extern "C" __declspec(dllimport)

#include "../wxCHello/wxc_swift.h"

enum
{
	ID_Hello = 1
};

void *frame;

void MyFrame_OnExit(void *, void *, void *) //  wxCommandEvent& WXUNUSED(event))
{
    wxWindow_Close(frame, true);
}

void MyFrame_About(void *, void *, void *)
{
	void *msgdlg = wxMessageDialog_Create(frame, wxString_CreateUTF8("This is a wxWidgets' Hello world sample"),
										  wxString_CreateUTF8("About Hello World"),
										  0x00000004/*wxOK*/ | 0x00000800/*wxICON_INFORMATION*/);
	wxMessageDialog_ShowModal(msgdlg);
	wxMessageDialog_Delete(msgdlg);
}

void MyFrame_Hello(void *, void *, void *)
{
	void *msgdlg = wxMessageDialog_Create(frame, wxString_CreateUTF8("Hello world from wxWidgets!"), wxString_CreateUTF8(""),
										  0x00000004/*wxOK*/ | 0x00000800/*wxICON_INFORMATION*/);
	wxMessageDialog_ShowModal(msgdlg);
	wxMessageDialog_Delete(msgdlg);
}

void MyApp_OnInit(void* _fun, void* _data, void* _evt)
{
	void *title = wxString_CreateUTF8("Hello World");
	frame = wxFrame_Create(NULL, wxID_ANY, title, 50, 50, 450, 340, wxDEFAULT_FRAME_STYLE);

	// Menu
	void *empty_str = wxString_CreateUTF8("");
	void *menuFile = wxMenu_Create(empty_str, 0);
	wxMenu_Append(menuFile, ID_Hello, wxString_CreateUTF8("&Hello...\tCtrl-H"),
				  wxString_CreateUTF8("Help string shown in status bar for this menu item"), 0/*wxITEM_NORMAL*/);
	wxMenu_AppendSeparator(menuFile);
	wxMenu_Append(menuFile, 5006/*wxID_EXIT*/, empty_str, empty_str, 0/*wxITEM_NORMAL*/);

	void *menuHelp = wxMenu_Create(empty_str, 0);
	wxMenu_Append(menuHelp, 5014/*wxID_ABOUT*/, empty_str, empty_str, 0/*wxITEM_NORMAL*/);

	void *menu_bar = wxMenuBar_Create(0);
	wxMenuBar_Append(menu_bar, menuFile, wxString_CreateUTF8("&File"));
	wxMenuBar_Append(menu_bar, menuHelp, wxString_CreateUTF8("&Help"));
	wxFrame_SetMenuBar(frame, menu_bar);

	// Status Bar
	wxFrame_CreateStatusBar(frame, 1, 65840L);
	void *status_txt = wxString_CreateUTF8("Welcome to wxWidgets!");
	wxFrame_SetStatusText(frame, status_txt, 0);

	//void *ev_h = wxEvtHandler_Create();
	wxEvtHandler_Connect(frame, 5006/*wxID_EXIT*/, 5006/*wxID_EXIT*/, 10018 /*wxEVT_COMMAND_MENU_SELECTED*/, wxClosure_Create(MyFrame_OnExit, 0));
	wxEvtHandler_Connect(frame, 5014/*wxID_ABOUT*/, 5014/*wxID_ABOUT*/, 10018 /*wxEVT_COMMAND_MENU_SELECTED*/, wxClosure_Create(MyFrame_About, 0));
	wxEvtHandler_Connect(frame, ID_Hello, ID_Hello, 10018 /*wxEVT_COMMAND_MENU_SELECTED*/, wxClosure_Create(MyFrame_Hello, 0));

	wxWindow_Show(frame);
}

int CALLBACK WinMain(
	HINSTANCE hInstance,
	HINSTANCE hPrevInstance,
	LPSTR     lpCmdLine,
	int       nCmdShow
)
{
	ELJApp_InitializeC(wxClosure_Create(MyApp_OnInit, NULL), 0, NULL);
	return 0;
};

#endif