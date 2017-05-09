
#define DLL_STORAGE extern "C" __declspec(dllimport)

#include "wxc_swift.h"

enum
{
	ID_Hello = 1
};

void *frame;
/*
void MyFrame_OnExit(wxCommandEvent& WXUNUSED(event))
{
	wxWindow_Close(frame, true);
}
*/
void MyFrame_About()
{
//	wxMessageBox("This is a wxWidgets' Hello world sample",
//				 "About Hello World", 0x00000004/*wxOK*/ | 0x00000800/*wxICON_INFORMATION*/);
	LogMessageMsg(wxString_CreateUTF8("This is a wxWidgets' Hello world sample"));
}

void MyFrame_Hello()
{
	LogMessageMsg(wxString_CreateUTF8("Hello world from wxWidgets!"));
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

	wxWindow_Show(frame);

	/*
	EVT_MENU(ID_Hello, MyFrame::OnHello)
	EVT_MENU(wxID_EXIT, MyFrame::OnExit)
	EVT_MENU(wxID_ABOUT, MyFrame::OnAbout)
	*/
//	 Connect(5006/*wxID_EXIT*/, wxEVT_COMMAND_MENU_SELECTED,
//			wxCommandEventHandler(MyFrame_OnExitt));
//	Connect(ID_About, wxEVT_COMMAND_MENU_SELECTED,
//			wxCommandEventHandler(MyFrame::OnAbout));
//	 void *ev_h = wxEvtHandler_Create();
//	 wxEvtHandler_Connect( ev_h, 5006/*wxID_EXIT*/, 5006/*wxID_EXIT*/, type, NULL);
}

int main(int argc, char **argv)
{
	ELJApp_InitializeC(wxClosure_Create(MyApp_OnInit, NULL), 0, NULL);
	return 0;
};

