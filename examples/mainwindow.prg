//
// Qt4xHb Project - Example Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// Exemplo de cria��o da janela principal de uma aplica��o

// ATEN��O: por causa de diferen�as entre Harbour e xHarbour, este exemplo
// cont�m linhas de programa��o espec�ficas, conforme o projeto utilizado.

#include "qt4xhb.ch"

// a fun��o principal (main) cria um objeto da classe QApplication,
// um objeto da classe MainWindow e inicia o loop de eventos

PROCEDURE Main()

   LOCAL oApp
   LOCAL oMainWindow

   oApp := QApplication():new()

   oMainWindow := MainWindow():new()

   oMainWindow:show()

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN

// a classe MainWindow � uma classe derivada da classe QMainWindow, com m�todos para:
// . definir as propriedades da janela
// . criar a barra de menus e as a��es
// . criar a barra de ferramentas
// . criar a barra de status
// . confirmar se o usu�rio quer realmente sair do programa
// . exibir mensagens

#include "hbclass.ch"

CLASS MainWindow INHERIT QMainWindow

   DATA oMenuBar
   DATA oMenu1
   DATA oActionNew
   DATA oActionOpen
   DATA oActionSave
   DATA oMenu2
   DATA oActionCut
   DATA oActionCopy
   DATA oActionPaste
   DATA oMenu3
   DATA oActionAbout
   DATA oActionAboutxH
   DATA oActionAboutCC
   DATA oActionAboutQt
   DATA oActionAboutQt4xHb
   DATA oToolBar
   DATA oStatusBar

   METHOD new()
   METHOD defineProperties()
   METHOD createMenuBar()
   METHOD createToolBar()
   METHOD createStatusBar()
   METHOD defineEvents()
   METHOD closeMainWindow( oSender, oEvent )
   METHOD showMessage( cText )

END CLASS

// o m�todo 'new' executa o m�todo 'new' da classe QMainWindow
// e configura a janela principal

METHOD new() CLASS MainWindow

   #ifdef __XHARBOUR__
   super:new()
   #else
   ::super:new()
   #endif

   ::defineProperties()
   ::createMenuBar()
   ::createToolBar()
   ::createStatusBar()
   ::defineEvents()

RETURN self

// o m�todo 'defineProperties' define as propriedades
// 'title' e 'size' da janela principal

METHOD defineProperties() CLASS MainWindow

   ::setWindowTitle( "Exemplo de cria��o da janela principal" )
   ::resize( 800, 600 )

RETURN self

// o m�todo 'createMenuBar' cria os menus da janela principal
// e configura a a��o que cada item do menu ir� executar

METHOD createMenuBar() CLASS MainWindow

   ::oMenuBar := ::menuBar()

   ::oMenu1 := ::oMenuBar:addMenu( "&Arquivo" )

   ::oActionNew := ::oMenu1:AddAction( QIcon():new( "images\new.png" ), "&Novo" )
   ::oActionNew:setStatusTip( "Executa a op��o NOVO" )
   ::oActionNew:onTriggered( {||::showMessage("Arquivo/Novo")} )

   ::oActionOpen := ::oMenu1:AddAction( QIcon():new( "images\open.png" ), "&Abrir" )
   ::oActionOpen:setStatusTip( "Executa a op��o ABRIR" )
   ::oActionOpen:onTriggered( {||::showMessage("Arquivo/Abrir")} )

   ::oActionSave := ::oMenu1:AddAction( QIcon():new( "images\save.png" ), "&Salvar" )
   ::oActionSave:setStatusTip( "Executa a op��o SALVAR" )
   ::oActionSave:onTriggered( {||::showMessage("Arquivo/Salvar")} )

   ::oMenu2 := ::oMenuBar:AddMenu( "&Editar" )

   ::oActionCut := ::oMenu2:AddAction( QIcon():New( "images\cut.png" ), "&Recortar" )
   ::oActionCut:setStatusTip( "Executa a op��o RECORTAR" )
   ::oActionCut:onTriggered( {||::showMessage("Editar/Recortar")} )

   ::oActionCopy := ::oMenu2:AddAction( QIcon():new( "images\copy.png" ), "&Copiar" )
   ::oActionCopy:setStatusTip( "Executa a op��o COPIAR" )
   ::oActionCopy:onTriggered( {||::showMessage("Editar/Copiar")} )

   ::oActionPaste := ::oMenu2:AddAction( QIcon():New( "images\paste.png" ), "C&olar" )
   ::oActionPaste:setStatusTip( "Executa a op��o COLAR" )
   ::oActionPaste:onTriggered( {||::showMessage("Editar/Colar")} )

   ::oMenu3 := ::oMenuBar:AddMenu( "&Sobre" )

   ::oActionAbout := ::oMenu3:AddAction( "&Exemplo" )
   ::oActionAbout:setStatusTip( "Exibe informa��es sobre este exemplo" )
   ::oActionAbout:onTriggered( {||::showMessage("Este exemplo demonstra a cria��o da janela principal de uma aplica��o")} )

   ::oActionAboutxH := ::oMenu3:AddAction( "&[x]Harbour" )
   ::oActionAboutxH:setStatusTip( "Exibe a vers�o do Harbour/xHarbour" )
   ::oActionAboutxH:onTriggered( {||::showMessage(version())} )

   ::oActionAboutCC := ::oMenu3:AddAction( "&C/C++ Compiler" )
   ::oActionAboutCC:setStatusTip( "Exibe informa��es sobre o compilador C/C++" )
   ::oActionAboutCC:onTriggered( {||::showMessage(hb_compiler())} )

   ::oActionAboutQt := ::oMenu3:AddAction( "&Qt Framework" )
   ::oActionAboutQt:setStatusTip( "Exibe informa��es sobre o Qt Framework" )
   ::oActionAboutQt:onTriggered( {||QCoreApplication():instance():aboutQt()} )

   ::oActionAboutQt4xHb := ::oMenu3:AddAction( "&Qt4xHb" )
   ::oActionAboutQt4xHb:setStatusTip( "Exibe a vers�o do Qt4xHb" )
   ::oActionAboutQt4xHb:onTriggered( {||::showMessage(qt4xhb_version())} )

RETURN self

// o m�todo 'createToolBar' cria a barra de ferramentas da janela principal
// e configura a a��o que cada bot�o ir� executar

METHOD createToolBar() CLASS MainWindow

   ::oToolBar := ::addToolBar( "" )

   ::oToolBar:addAction( ::oActionNew )
   ::oToolBar:addAction( ::oActionOpen )
   ::oToolBar:addAction( ::oActionSave )

   ::oToolBar:addSeparator()

   ::oToolBar:addAction( ::oActionCut )
   ::oToolBar:addAction( ::oActionCopy )
   ::oToolBar:addAction( ::oActionPaste )

RETURN self

// o m�todo 'createStatusBar' cria a barra de status

METHOD createStatusBar() CLASS MainWindow

   ::oStatusBar := ::statusBar()

RETURN self

// o m�todo 'defineEvent' define os eventos que ser�o processados

METHOD defineEvents() CLASS MainWindow

   ::onCloseEvent( {|oSender,oEvent|::CloseMainWindow(oSender,oEvent)} )

RETURN self

// o m�todo 'closeMainWindow' confirma, com o usu�rio, se quer
// realmente sair do programa

METHOD closeMainWindow( oSender, oEvent ) CLASS MainWindow

   LOCAL oMB
   LOCAL nRet

   HB_SYMBOL_UNUSED( oSender )

   oMB := QMessageBox():new( QMessageBox_Question, ;
                             "Aten��o", ;
                             "Quer realmente sair do programa ?", ;
                             QMessageBox_Yes + QMessageBox_No, ;
                             self, ;
                             Qt_Dialog + Qt_MSWindowsFixedSizeDialogHint )

   nRet := oMB:exec()

   oMB:delete()

   IF nRet == QMessageBox_Yes
      oEvent:accept()
   endif

   IF nRet == QMessageBox_No
      oEvent:ignore()
   endif

RETURN .T.

// o m�todo 'showMessage' exibe uma janela com uma mensagem,
// usando a classe QMessageBox

METHOD showMessage( cText ) CLASS MainWindow

   LOCAL oMB

   oMB := QMessageBox():new( QMessageBox_Information, "Informa��o", cText, QMessageBox_Ok, self )

   oMB:exec()

   oMB:delete()

RETURN NIL
