//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QSCRIPTVALUE_CH
#define QSCRIPTVALUE_CH

/*
enum QScriptValue::PropertyFlag
flags QScriptValue::PropertyFlags
*/
#define QScriptValue_ReadOnly                                        0x00000001
#define QScriptValue_Undeletable                                     0x00000002
#define QScriptValue_SkipInEnumeration                               0x00000004
#define QScriptValue_PropertyGetter                                  0x00000008
#define QScriptValue_PropertySetter                                  0x00000010
#define QScriptValue_KeepExistingFlags                               0x00000800

/*
enum QScriptValue::ResolveFlag
flags QScriptValue::ResolveFlags
*/
#define QScriptValue_ResolveLocal                                    0x00
#define QScriptValue_ResolvePrototype                                0x01

/*
enum QScriptValue::SpecialValue
*/
#define QScriptValue_UndefinedValue                                  1
#define QScriptValue_NullValue	                                     0

#endif /* QSCRIPTVALUE_CH */
