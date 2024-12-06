//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

STATIC aEstados

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

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

   oModel := myModel():new()

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

#include "hbclass.ch"

CLASS myModel INHERIT HAbstractTableModelV2

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD headerData

END CLASS

METHOD new(...) CLASS myModel

   ::super:new(...)

   ::setRowCountCB({|...|::rowCount(...)})
   ::setColumnCountCB({|...|::columnCount(...)})
   ::setDataCB({|...|::data(...)})
   ::setHeaderDataCB({|...|::headerData(...)})

RETURN self

METHOD rowCount() CLASS myModel
RETURN len(aEstados)

METHOD columnCount() CLASS myModel
RETURN 2 // coluna 1=imagem coluna 2=nome

METHOD data(oIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole .AND. nColumn == 1
         oVariant := QVariant():new(aEstados[nRow + 1, 2])
      ELSEIF nRole == Qt_DecorationRole .AND. nColumn == 0
         oVariant := QVariant():new(QPixmap():new(aEstados[nRow + 1, 1]):toVariant())
      ELSEIF nRole == Qt_SizeHintRole .AND. nColumn == 0
         oVariant := QVariant():new(QSize():new(150, 107))
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new({"Bandeira", "Estado"}[nSection + 1])
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Linha " + alltrim(str(nSection)))
   ENDIF

RETURN oVariant
