//---------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "ImportSessions.h"

#include <Configuration.h>
#include <ScpMain.h>

#include <VCLCommon.h>
//---------------------------------------------------------------------
#pragma resource "*.dfm"
//---------------------------------------------------------------------
Boolean __fastcall DoImportSessionsDialog(TStoredSessionList *SessionList)
{
  Boolean Result;
  TImportSessionsDialog *ImportSessionsDialog;
  TStoredSessionList *ImportSessionList;
  try {
    ImportSessionsDialog = new TImportSessionsDialog(Application);
    ImportSessionList = new TStoredSessionList(true);

    ImportSessionList->Load(Configuration->PuttySessionsKey);
    ImportSessionList->SelectSessionsToImport(SessionList, True);
    ImportSessionsDialog->SessionList = ImportSessionList;

    Result = (ImportSessionsDialog->ShowModal() == mrOk);
    if (Result)
      SessionList->Import(ImportSessionsDialog->SessionList, True);
  } __finally {
    delete ImportSessionsDialog;
    delete ImportSessionList;
  }
  return Result;
}
//---------------------------------------------------------------------
__fastcall TImportSessionsDialog::TImportSessionsDialog(TComponent* AOwner)
	: TForm(AOwner)
{
  UseSystemSettings(this);
}
//---------------------------------------------------------------------
void __fastcall TImportSessionsDialog::UpdateControls()
{
  Boolean Checked = False;
  for (Integer Index = 0; Index < SessionListView->Items->Count; Index ++)
    if (SessionListView->Items->Item[Index]->Checked) Checked = True;
  EnableControl(OKButton, Checked);
  AdjustListColumnsWidth(SessionListView);
}
//---------------------------------------------------------------------
void __fastcall TImportSessionsDialog::SetSessionList(TStoredSessionList *value)
{
  if (FSessionList != value)
  {
    FSessionList = value;
    LoadSessions();
  }
}
//---------------------------------------------------------------------
void TImportSessionsDialog::LoadSessions()
{
  SessionListView->Items->BeginUpdate();
  try {
    SessionListView->Items->Clear();
    if (FSessionList)
      for (int Index = 0; Index < FSessionList->Count; Index++)
      {
        TListItem *Item;
        TSessionData *Session =
          (TSessionData*)FSessionList->AtObject(Index);
        Item = SessionListView->Items->Add();
        Item->Data = Session;
        Item->Caption = Session->Name;
        Item->SubItems->Add(Session->ProtocolStr);
        Item->Checked = Session->Selected;
      }
  } __finally {
    SessionListView->Items->EndUpdate();
  }
  UpdateControls();
}
//---------------------------------------------------------------------------
void __fastcall TImportSessionsDialog::FormClose(TObject * /*Sender*/,
      TCloseAction & /*Action*/)
{
  for (Integer Index = 0; Index < SessionListView->Items->Count; Index++)
    ((TSessionData*)SessionListView->Items->Item[Index]->Data)->Selected =
      SessionListView->Items->Item[Index]->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TImportSessionsDialog::SessionListViewInfoTip(
      TObject * /*Sender*/, TListItem * Item, AnsiString & InfoTip)
{
  InfoTip = ((TSessionData*)Item->Data)->InfoTip;
}
//---------------------------------------------------------------------------
void __fastcall TImportSessionsDialog::SessionListViewMouseDown(
      TObject * /*Sender*/, TMouseButton /*Button*/, TShiftState /*Shift*/,
      int /*X*/, int /*Y*/)
{
  UpdateControls();
}
//---------------------------------------------------------------------------
void __fastcall TImportSessionsDialog::SessionListViewKeyUp(
      TObject * /*Sender*/, WORD & /*Key*/, TShiftState /*Shift*/)
{
  UpdateControls();
}
//---------------------------------------------------------------------------
void __fastcall TImportSessionsDialog::FormShow(TObject * /*Sender*/)
{
  UpdateControls();
}
//---------------------------------------------------------------------------