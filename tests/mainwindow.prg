//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// Exemplo de cria��o da janela principal de uma aplica��o

#include "qt4xhb.ch"

STATIC oApp
STATIC oMainWindow

// a fun��o principal (main) cria um objeto da classe QApplication,
// um objeto da classe HMainWindow e inicia o loop de eventos

PROCEDURE Main()

   oApp := QApplication():new()

   oMainWindow := HMainWindow():new()

   oMainWindow:show()

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN

// a classe HMainWindow � uma classe derivada da classe QMainWindow, com m�todos para:
// . definir as propriedades da janela
// . criar a barra de menus e as a��es
// . criar a barra de ferramentas
// . criar a barra de status
// . confirmar se o usu�rio quer realmente sair do programa
// . exibir mensagens

#include "hbclass.ch"

CLASS HMainWindow INHERIT QMainWindow

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
   DATA oToolBar
   DATA oStatusBar

   METHOD new
   METHOD defineProperties
   METHOD createMenuBar
   METHOD createToolBar
   METHOD createStatusBar
   METHOD defineEvents
   METHOD closeMainWindow
   METHOD showMessage

END CLASS

// o m�todo 'new' executa o m�todo 'new' da classe QMainWindow
// e configura a janela principal

METHOD new() CLASS HMainWindow

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

METHOD defineProperties() CLASS HMainWindow

   ::setWindowTitle("Qt4xHb - exemplo de cria��o da janela principal")
   ::resize(800, 600)

RETURN self

// o m�todo 'createMenuBar' cria os menus da janela principal
// e configura a a��o que cada item do menu ir� executar

METHOD createMenuBar() CLASS HMainWindow

   ::oMenuBar := ::menuBar()

   ::oMenu1 := ::oMenuBar:addMenu("&Arquivo")

   ::oActionNew := ::oMenu1:AddAction(QIcon():new("images\new.png"), "&Novo")
   ::oActionNew:setStatusTip("Executa a op��o NOVO")
   ::oActionNew:onTriggered({||::showMessage("Arquivo/Novo")})

   ::oActionOpen := ::oMenu1:AddAction(QIcon():new("images\open.png"), "&Abrir")
   ::oActionOpen:setStatusTip("Executa a op��o ABRIR")
   ::oActionOpen:onTriggered({||::showMessage("Arquivo/Abrir")})

   ::oActionSave := ::oMenu1:AddAction(QIcon():new("images\save.png"), "&Salvar")
   ::oActionSave:setStatusTip("Executa a op��o SALVAR")
   ::oActionSave:onTriggered({||::showMessage("Arquivo/Salvar")})

   ::oMenu2 := ::oMenuBar:AddMenu("&Editar")

   ::oActionCut := ::oMenu2:AddAction(QIcon():New("images\cut.png"), "&Recortar")
   ::oActionCut:setStatusTip("Executa a op��o RECORTAR")
   ::oActionCut:onTriggered({||::showMessage("Editar/Recortar")})

   ::oActionCopy := ::oMenu2:AddAction(QIcon():new("images\copy.png"), "&Copiar")
   ::oActionCopy:setStatusTip("Executa a op��o COPIAR")
   ::oActionCopy:onTriggered({||::showMessage("Editar/Copiar")})

   ::oActionPaste := ::oMenu2:AddAction(QIcon():New("images\paste.png"), "C&olar")
   ::oActionPaste:setStatusTip("Executa a op��o COLAR")
   ::oActionPaste:onTriggered({||::showMessage("Editar/Colar")})

   ::oMenu3 := ::oMenuBar:AddMenu("&Sobre")

   ::oActionAbout := ::oMenu3:AddAction("&Exemplo")
   ::oActionAbout:setStatusTip("Exibe informa��es sobre este exemplo")
   ::oActionAbout:onTriggered({||::showMessage("Este exemplo demonstra a cria��o da janela principal de uma aplica��o")})

   ::oActionAboutxH := ::oMenu3:AddAction("&xHarbour")
   ::oActionAboutxH:setStatusTip("Exibe a vers�o do Harbour/xHarbour")
   ::oActionAboutxH:onTriggered({||::showMessage(version())})

   ::oActionAboutCC := ::oMenu3:AddAction("&C/C++ Compiler")
   ::oActionAboutCC:setStatusTip("Exibe informa��es sobre o compilador C/C++")
   ::oActionAboutCC:onTriggered({||::showMessage(hb_compiler())})

   ::oActionAboutQt := ::oMenu3:AddAction("&Qt Framework")
   ::oActionAboutQt:setStatusTip("Exibe informa��es sobre o Qt Framework")
   ::oActionAboutQt:onTriggered({||oApp:aboutQt()})

RETURN self

// o m�todo 'createToolBar' cria a barra de ferramentas da janela principal
// e configura a a��o que cada bot�o ir� executar

METHOD createToolBar() CLASS HMainWindow

   ::oToolBar := ::addToolBar("")

   ::oToolBar:addAction(::oActionNew)
   ::oToolBar:addAction(::oActionOpen)
   ::oToolBar:addAction(::oActionSave)

   ::oToolBar:addSeparator()

   ::oToolBar:addAction(::oActionCut)
   ::oToolBar:addAction(::oActionCopy)
   ::oToolBar:addAction(::oActionPaste)

RETURN self

// o m�todo 'createStatusBar' cria a barra de status

METHOD createStatusBar() CLASS HMainWindow

   ::oStatusBar := ::statusBar()

RETURN self

// o m�todo 'defineEvent' define os eventos que ser�o processados

METHOD defineEvents() CLASS HMainWindow

   ::onCloseEvent({|oSender, oEvent|::CloseMainWindow(oSender, oEvent)})

RETURN self

// o m�todo 'closeMainWindow' confirma, com o usu�rio, se quer
// realmente sair do programa

METHOD closeMainWindow(oSender, oCloseEvent) CLASS HMainWindow

   LOCAL oMB
   LOCAL nRet

   oMB := QMessageBox():new(QMessageBox_Question, ;
                             "Aten��o", ;
                             "Quer realmente sair do programa ?", ;
                             QMessageBox_Yes + QMessageBox_No, ;
                             self, ;
                             Qt_Dialog + Qt_MSWindowsFixedSizeDialogHint)

   nRet := oMB:exec()

   oMB:delete()

   IF nRet == QMessageBox_Yes
      oCloseEvent:accept()
   endif

   IF nRet == QMessageBox_No
      oCloseEvent:ignore()
   endif

RETURN .T.

// o m�todo 'showMessage' exibe uma janela com uma mensagem,
// usando a classe QMessageBox

METHOD showMessage(cText) CLASS HMainWindow

   LOCAL oMB

   oMB := QMessageBox():new(QMessageBox_Information, "Informa��o", cText, QMessageBox_Ok, self)

   oMB:exec()

   oMB:delete()

RETURN NIL
