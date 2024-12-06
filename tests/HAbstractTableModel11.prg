//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL aEstados

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   aEstados := {}
   aadd(aEstados, {"images\estados\acre.png"            , "Acre"               })
   aadd(aEstados, {"images\estados\alagoas.png"         , "Alagoas"            })
   aadd(aEstados, {"images\estados\amapa.png"           , "Amap�"              })
   aadd(aEstados, {"images\estados\amazonas.png"        , "Amazonas"           })
   aadd(aEstados, {"images\estados\bahia.png"           , "Bahia"              })
   aadd(aEstados, {"images\estados\ceara.png"           , "Cear�"              })
   aadd(aEstados, {"images\estados\distritofederal.png" , "Distrito Federal"   })
   aadd(aEstados, {"images\estados\espiritosanto.png"   , "Esp�rito Santo"     })
   aadd(aEstados, {"images\estados\goias.png"           , "Goi�s"              })
   aadd(aEstados, {"images\estados\maranhao.png"        , "Maranh�o"           })
   aadd(aEstados, {"images\estados\matogrosso.png"      , "Mato Grosso"        })
   aadd(aEstados, {"images\estados\matogrossodosul.png" , "Mato Grosso do Sul" })
   aadd(aEstados, {"images\estados\minasgerais.png"     , "Minas Gerais"       })
   aadd(aEstados, {"images\estados\para.png"            , "Par�"               })
   aadd(aEstados, {"images\estados\paraiba.png"         , "Para�ba"            })
   aadd(aEstados, {"images\estados\parana.png"          , "Paran�"             })
   aadd(aEstados, {"images\estados\pernambuco.png"      , "Pernambuco"         })
   aadd(aEstados, {"images\estados\piaui.png"           , "Piau�"              })
   aadd(aEstados, {"images\estados\riodejaneiro.png"    , "Rio de Janeiro"     })
   aadd(aEstados, {"images\estados\riograndedonorte.png", "Rio Grande do Norte"})
   aadd(aEstados, {"images\estados\riograndedosul.png"  , "Rio Grande do Sul"  })
   aadd(aEstados, {"images\estados\rondonia.png"        , "Rond�nia"           })
   aadd(aEstados, {"images\estados\roraima.png"         , "Roraima"            })
   aadd(aEstados, {"images\estados\santacatarina.png"   , "Santa Catarina"     })
   aadd(aEstados, {"images\estados\saopaulo.png"        , "S�o Paulo"          })
   aadd(aEstados, {"images\estados\sergipe.png"         , "Sergipe"            })
   aadd(aEstados, {"images\estados\tocantins.png"       , "Tocantins"          })

   oModel := HAbstractTableModel():new()

   oModel:setRowCountCB({||len(aEstados)}) // total de linhas
   oModel:setColumnCountCB({||2}) // total de colunas (1=imagem 2=nome)

   oModel:setDisplayRoleCB({|nRow, nCol|iif(nCol == 1, aEstados[nRow + 1, 2], NIL)}) // conte�do da c�lula (coluna 2)
   oModel:setDecorationRoleCB({|nRow, nCol|iif(nCol == 0, QPixmap():new(aEstados[nRow + 1, 1]), NIL)}) // conte�do da c�lula (coluna 1)
   oModel:setSizeHintRoleCB({|nRow, nCol|iif(nCol == 0, QSize():new(150, 107), NIL)}) // tamanho da c�lula (coluna 1)

   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|{"Bandeira", "Estado"}[nCol + 1]}) // t�tulos das colunas
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|alltrim(str(nRow))}) // t�tulos das linhas

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)
   oView:resizeRowsToContents()
   oView:resizeColumnsToContents()

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL
