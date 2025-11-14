//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oVariant
   LOCAL lOk

   oVariant := QVariant():new()

   oVariant:setValue(12345)

   ? oVariant:toString()
   ? oVariant:toInt()
   ? lOk
   ? oVariant:toInt(@lOk)
   ? lOk
   
   WAIT

RETURN NIL
