/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QStateMachine::Error
*/
#define QStateMachine_NoError                                        0
#define QStateMachine_NoInitialStateError                            1
#define QStateMachine_NoDefaultStateInHistoryStateError              2
#define QStateMachine_NoCommonAncestorForTransitionError             3

/*
enum QStateMachine::EventPriority
*/
#define QStateMachine_NormalPriority                                 0
#define QStateMachine_HighPriority                                   1

/*
enum QStateMachine::RestorePolicy
*/
#define QStateMachine_DontRestoreProperties                          0
#define QStateMachine_RestoreProperties                              1
