//---------------------------------------------------------------------------
#ifndef CustomScpExplorerH
#define CustomScpExplorerH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <CustomDirView.hpp>
#include <CustomUnixDirView.hpp>
#include <IEListView.hpp>
#include <NortonLikeListView.hpp>
#include <UnixDirView.h>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <AssociatedStatusBar.hpp>
#include <ToolWin.hpp>

#include <WinInterface.h>
//---------------------------------------------------------------------------
class TProgressForm;
class TSynchronizeProgressForm;
//---------------------------------------------------------------------------
enum TActionAllowed { aaShortCut, aaUpdate, aaExecute };
enum TActionFlag { afLocal = 1, afRemote = 2, afExplorer = 4 , afCommander = 8 };
enum TExecuteFileBy { efDefault, efEditor, efAlternativeEditor };
enum TPanelExport { pePath, peFileList, peFullFileList };
enum TPanelExportDestination { pedClipboard, pedCommandLine };
//---------------------------------------------------------------------------
class TCustomScpExplorerForm : public TForm
{
__published:
  TPanel *RemotePanel;
  TAssociatedStatusBar *RemoteStatusBar;
  TUnixDirView *RemoteDirView;
  TCoolBar *TopCoolBar;
  void __fastcall RemoteDirViewGetCopyParam(TUnixDirView *Sender,
    TTransferDirection Direction, TTransferType Type,
    AnsiString &TargetDirectory, TStrings *FileList,
    TCopyParamType &CopyParam);
  void __fastcall RemoteDirViewContextPopup(TObject *Sender,
    const TPoint &MousePos, bool &Handled);
  void __fastcall DirViewEnter(TObject *Sender);
  void __fastcall RemoteDirViewGetSelectFilter(
    TCustomDirView *Sender, bool Select, TFileFilter &Filter);
  void __fastcall SessionStatusBarDrawPanel(TStatusBar *StatusBar,
    TStatusPanel *Panel, const TRect &Rect);
  void __fastcall SessionStatusBarMouseMove(TObject *Sender,
    TShiftState Shift, int X, int Y);
  void __fastcall ApplicationHint(TObject *Sender);
  void __fastcall FormCloseQuery(TObject *Sender, bool &CanClose);
  void __fastcall DropDownButtonMenu(TObject *Sender);
  void __fastcall RemoteDirViewDisplayProperties(TObject *Sender);
  void __fastcall DirViewColumnRightClick(TObject *Sender,
    TListColumn *Column, TPoint &Point);
  void __fastcall DirViewExecFile(TObject *Sender, TListItem *Item, bool &AllowExec);
  void __fastcall ToolBarResize(TObject *Sender);
  void __fastcall RemoteDirViewWarnLackOfTempSpace(TUnixDirView *Sender,
    const AnsiString Path, __int64 RequiredSpace, bool &Continue);
  void __fastcall DirViewDDDragEnter(TObject *Sender,
    _di_IDataObject DataObj, int grfKeyState, const TPoint &Point,
    int &dwEffect, bool &Accept);
  void __fastcall DirViewDDDragLeave(TObject *Sender);
  void __fastcall RemoteDirViewDDCreateDragFileList(TObject *Sender,
    TFileList *FileList, bool &Created);
  void __fastcall RemoteDirViewDDEnd(TObject *Sender);
  void __fastcall RemoteDirViewDDTargetDrop(TUnixDirView *Sender,
    int DropEffect, bool &Continue);
  void __fastcall RemoteDirViewDDCreateDataObject(TObject *Sender,
    TDataObject *&DataObject);
  
private:
  TTerminal * FTerminal;
  bool FFormRestored;
  bool FAutoOperation;
  AnsiString FExecutedFile;
  int FExecutedFileTimestamp;
  TExecuteFileBy FFileExecutedBy;
  bool FForceExecution;
  bool FShowStatusBarHint;
  AnsiString FStatusBarHint;
  bool FIgnoreNextSysCommand;
  TStringList * FErrorList;
  HANDLE FDDExtMutex;
  AnsiString FDragExtFakeDirectory;

  bool __fastcall GetEnableFocusedOperation(TOperationSide Side);
  bool __fastcall GetEnableSelectedOperation(TOperationSide Side);
  void __fastcall SetTerminal(TTerminal * value);
  void __fastcall SessionComboDropDown(TObject * Sender);
  void __fastcall SessionComboDrawItem(TWinControl * Control, int Index,
    const TRect & Rect, TOwnerDrawState State);
  void __fastcall SessionComboChange(TObject * Sender);
  void __fastcall CustomCommandGetParamValue(const AnsiString Name,
    AnsiString & Value);

protected:
  TCustomDirView * FLastDirView;
  TCustomDirView * FDDTargetDirView;
  TProgressForm * FProgressForm;
  AnsiString FCustomCommandName;
  TSynchronizeProgressForm * FSynchronizeProgressForm;
  HANDLE FDDExtMapFile;
  int FDDExtDropEffect;

  virtual bool __fastcall CopyParamDialog(TTransferDirection Direction,
    TTransferType Type, bool DragDrop, TStrings * FileList,
    AnsiString & TargetDirectory, TCopyParamType & CopyParam, bool Confirm);
  virtual bool __fastcall RemoteMoveDialog(TStrings * FileList,
    AnsiString & Target, AnsiString & FileMask, bool NoConfirmation);
  virtual void __fastcall CreateParams(TCreateParams & Params);
  void __fastcall DeleteFiles(TOperationSide Side, TStrings * FileList);
  void __fastcall RemoteMoveFiles(TStrings * FileList, bool NoConfirmation);
  virtual void __fastcall DoDirViewExecFile(TObject * Sender, TListItem * Item, bool & AllowExec);
  virtual TControl * __fastcall GetComponent(Byte Component);
  virtual TCoolBand * __fastcall GetCoolBand(TCoolBar * Coolbar, int ID);
  bool __fastcall GetComponentVisible(Word Component);
  virtual Boolean __fastcall GetHasDirView(TOperationSide Side);
  DYNAMIC void __fastcall KeyDown(Word & Key, Classes::TShiftState Shift);
  virtual void __fastcall RestoreFormParams();
  virtual void __fastcall RestoreParams();
  virtual void __fastcall SetComponentVisible(Word Component, bool value);
  void __fastcall SetProperties(TOperationSide Side, TStrings * FileList);
  virtual void __fastcall TerminalChanged();
  void __fastcall UpdateStatusBar();
  virtual void __fastcall DoOperationFinished(TFileOperation Operation,
    TOperationSide Side, bool DragDrop, const AnsiString FileName, bool Success,
    bool & DisconnectWhenFinished);
  virtual void __fastcall DoOpenDirectoryDialog(TOpenDirectoryMode Mode, TOperationSide Side);
  virtual void __fastcall FileOperationProgress(
    TFileOperationProgressType & ProgressData, TCancelStatus & Cancel);
  void __fastcall ExecutedFileChanged(TObject * Sender);
  void __fastcall CMAppSysCommand(TMessage & Message);
  DYNAMIC void __fastcall DoShow();
  TStrings * __fastcall CreateVisitedDirectories(TOperationSide Side);
  void __fastcall HandleErrorList(TStringList *& ErrorList);
  void __fastcall TerminalSynchronizeDirectory(const AnsiString LocalDirectory,
    const AnsiString RemoteDirectory, bool & Continue);
  bool __fastcall DoFullSynchronizeDirectories(AnsiString & LocalDirectory,
    AnsiString & RemoteDirectory, TSynchronizeMode & Mode);
  void __fastcall BatchStart(void *& Storage);
  void __fastcall BatchEnd(void * Storage);
  void __fastcall ExecuteFileOperation(TFileOperation Operation, TOperationSide Side,
    TStrings * FileList, bool NoConfirmation, void * Param);
  virtual void __fastcall DDGetTarget(AnsiString & Directory);
  virtual void __fastcall DDExtInitDrag(TFileList * FileList, bool & Created);
  virtual void __fastcall DoDirViewEnter(TCustomDirView * DirView);
  virtual TOperationSide __fastcall GetSide(TOperationSide Side);
  virtual void __fastcall PanelExportStore(TOperationSide Side,
    TPanelExport Export, TPanelExportDestination Destination,
    TStringList * ExportData);

  #pragma warn -inl
  BEGIN_MESSAGE_MAP
    VCL_MESSAGE_HANDLER(CM_APPSYSCOMMAND, TMessage, CMAppSysCommand)
  END_MESSAGE_MAP(TForm)
  #pragma warn +inl

public:
  virtual __fastcall ~TCustomScpExplorerForm();
  void __fastcall AddBookmark(TOperationSide Side);
  virtual void __fastcall AddEditLink();
  virtual Boolean __fastcall AllowedAction(TAction * Action, TActionAllowed Allowed) = 0;
  virtual void __fastcall ConfigurationChanged();
  void __fastcall CreateDirectory(TOperationSide Side);
  void __fastcall ExecuteFileOperation(TFileOperation Operation, TOperationSide Side,
    bool OnFocused, bool NoConfirmation = false, void * Param = NULL);
  virtual TCustomDirView * __fastcall DirView(TOperationSide Side);
  virtual void __fastcall ChangePath(TOperationSide Side) = 0;
  virtual void __fastcall StoreParams();
  void __fastcall NewSession();
  void __fastcall CloseSession();
  void __fastcall OpenDirectory(TOperationSide Side);
  void __fastcall OpenStoredSession(TSessionData * Data);
  void __fastcall SessionIdle();
  __fastcall TCustomScpExplorerForm(TComponent* Owner);
  void __fastcall SaveCurrentSession();
  virtual void __fastcall CompareDirectories();
  void __fastcall ExecuteCurrentFile();
  virtual void __fastcall OpenConsole(AnsiString Command = "");
  void __fastcall OpenInPutty();
  virtual void __fastcall UpdateSessionData(TSessionData * Data = NULL);
  virtual void __fastcall SynchronizeDirectories();
  virtual void __fastcall FullSynchronizeDirectories();
  virtual void __fastcall ExploreLocalDirectory();
  virtual void __fastcall GoToCommandLine();
  virtual void __fastcall PanelExport(TOperationSide Side, TPanelExport Export,
    TPanelExportDestination Destination, bool OnFocused = false);
  void __fastcall ExecuteFile(TOperationSide Side, TExecuteFileBy ExecuteFileBy);
  void __fastcall LastTerminalClosed(TObject * Sender);
  void __fastcall TerminalListChanged(TObject * Sender);
  int __fastcall MoreMessageDialog(const AnsiString Message,
    TStrings * MoreMessages, TQueryType Type, int Answers,
    int HelpCtx, int Params = 0);
  void __fastcall OperationFinished(TFileOperation Operation, TOperationSide Side,
    bool DragDrop, const AnsiString FileName, bool Success, bool & DisconnectWhenFinished);
  void __fastcall OperationProgress(TFileOperationProgressType & ProgressData, TCancelStatus & Cancel);

  __property bool ComponentVisible[Word Component] = { read = GetComponentVisible, write = SetComponentVisible };
  __property bool EnableFocusedOperation[TOperationSide Side] = { read = GetEnableFocusedOperation };
  __property bool EnableSelectedOperation[TOperationSide Side] = { read = GetEnableSelectedOperation };
  __property bool HasDirView[TOperationSide Side] = { read = GetHasDirView };
  __property TTerminal * Terminal = { read = FTerminal, write = SetTerminal };
};
//---------------------------------------------------------------------------
#endif