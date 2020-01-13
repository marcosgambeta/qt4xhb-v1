/*

  Qt4xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt4xHb

*/

/*
  Qt4xHb: exemplo de uso da classe QUiLoader
*/

#include "qt4xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAl oLoader
   LOCAL oFile
   LOCAL oWidgets
   LOCAL oPushButton
   LOCAL oCommandLinkButton
   LOCAL oComboBox
   LOCAL oLineEdit
   LOCAL oLCDNumber

   oApp := QApplication():new()

   // aqui criamos a janela

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Qt4xHb - teste com a classe QUiLoader")
   oWindow:resize(800,600)
   oWindow:show()

   // aqui carregamos o conteúdo do arquivo quiloader.ui

   oLoader := QUiLoader():new()
   oFile := QFile():new("quiloader.ui")
   oFile:open(QIODevice_ReadOnly)
   oWidgets := oLoader:load(oFile, oWindow)
   oWidgets:show()
   oFile:close()
   oFile:delete()
   oLoader:delete()

   // aqui personalizamos os widgets (aparência, ações e eventos)

   oPushButton := QPushButton():newFrom( oWidgets:findChild("pushButton") )
   oPushButton:onClicked({||qout("PushButton clicked")})

   oCommandLinkButton := QCommandLinkButton():newFrom( oWidgets:findChild("commandLinkButton") )
   oCommandLinkButton:onClicked({||qout("CommandLinkButton clicked")})
   oCommandLinkButton:setStyleSheet("background-color: yellow")

   oComboBox := QComboBox():newFrom( oWidgets:findChild("comboBox") )
   oComboBox:addItem("Item 1")
   oComboBox:addItem("Item 2")
   oComboBox:addItem("Item 3")
   oComboBox:addItem("Item 4")
   oComboBox:addItem("Item 5")

   oLineEdit := QLineEdit():newFrom( oWidgets:findChild("lineEdit") )
   oLineEdit:setText("testando QLineEdit")
   oLineEdit:onFocusInEvent({||qout("focusin")})
   oLineEdit:onFocusOutEvent({||qout("focusout")})

   oLCDNumber := QLCDNumber():newFrom( oWidgets:findChild("lcdNumber") )
   oLCDNumber:display(1234)

   oApp:exec()
   
   oWindow:delete()

   oApp:delete()

RETURN
