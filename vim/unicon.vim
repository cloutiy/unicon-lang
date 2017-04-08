" Vim syntax file
" Language: Unicon
" Maintainer:   Brian Tiffin (btiffin@gnu.org)
" URL: https://sourceforge.net/projects/unicon
" Last Change:  2016 Oct 22

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Read the Icon syntax to start with
runtime! syntax/icon.vim
unlet b:current_syntax

" Unicon function extensions
syn keyword uniconFunction Abort Any Arb Arbno array
syn keyword uniconFunction Break Breakx chmod chown
syn keyword uniconFunction chroot classname cofail Color
syn keyword uniconFunction condvar constructor 
syn keyword uniconFunction crypt ctime dbcolumns dbdriver
syn keyword uniconFunction dbkeys dblimits dbproduct dbtables display
syn keyword uniconFunction eventmask EvGet EvSend
syn keyword uniconFunction exec Fail fdup Fence fetch fieldnames
syn keyword uniconFunction filepair
syn keyword uniconFunction flock fork
syn keyword uniconFunction getegid geteuid getgid getgr
syn keyword uniconFunction gethost getpgrp getpid getppid getpw
syn keyword uniconFunction getrusage getserv gettimeofday
syn keyword uniconFunction getuid globalnames gtime
syn keyword uniconFunction ioctl istate
syn keyword uniconFunction keyword kill Len link load localnames lock
syn keyword uniconFunction max membernames methodnames
syn keyword uniconFunction methods min mkdir mutex name
syn keyword uniconFunction NotAny Nspan opencl oprec
syn keyword uniconFunction paranames parent pipe
syn keyword uniconFunction Pos proc
syn keyword uniconFunction readlink ready
syn keyword uniconFunction receive Rem rmdir Rpos Rtab
syn keyword uniconFunction select send setenv setgid setgrent
syn keyword uniconFunction sethostent setpgrp setpwent setservent setuid
syn keyword uniconFunction signal Span spawn sql stat staticnames
syn keyword uniconFunction structure Succeed symlink
syn keyword uniconFunction sys_errstr syswrite Tab
syn keyword uniconFunction trap truncate trylock
syn keyword uniconFunction umask unlock utime wait

" Unicon graphics, audio and VOIP
syn keyword uniconGraphics Active Alert
syn keyword uniconGraphics Attrib Bg
syn keyword uniconGraphics Clip Clone Color
syn keyword uniconGraphics ColorValue CopyArea
syn keyword uniconGraphics Couple 
syn keyword uniconGraphics DrawArc DrawCircle DrawCube DrawCurve
syn keyword uniconGraphics DrawCylinder DrawDisk DrawImage DrawLine
syn keyword uniconGraphics DrawPoint DrawPolygon DrawRectangle
syn keyword uniconGraphics DrawSegment DrawSphere DrawString DrawTorus
syn keyword uniconGraphics EraseArea Event
syn keyword uniconGraphics Eye Fg
syn keyword uniconGraphics FillArc FillCircle FillPolygon
syn keyword uniconGraphics FillRectangle Font FreeColor
syn keyword uniconGraphics GotoRC GotoXY
syn keyword uniconGraphics IdentityMatrix
syn keyword uniconGraphics Lower MatrixMode
syn keyword uniconGraphics MultMatrix
syn keyword uniconGraphics NewColor Normals
syn keyword uniconGraphics PaletteChars PaletteColor PaletteKey
syn keyword uniconGraphics Pattern Pending
syn keyword uniconGraphics Pixel PlayAudio PopMatrix
syn keyword uniconGraphics PushMatrix PushRotate PushScale PushTranslate
syn keyword uniconGraphics QueryPointer Raise ReadImage
syn keyword uniconGraphics Refresh Rotate
syn keyword uniconGraphics Scale
syn keyword uniconGraphics StopAudio
syn keyword uniconGraphics Texcoord Texture
syn keyword uniconGraphics TextWidth Translate
syn keyword uniconGraphics Uncouple
syn keyword uniconGraphics VAttrib
syn keyword uniconGraphics WAttrib WDefault WFlush
syn keyword uniconGraphics WindowContents
syn keyword uniconGraphics WriteImage WSection WSync

" Unicon system specific
syn keyword uniconSpecific FreeSpace GetSpace InPort Int86
syn keyword uniconSpecific OutPort Peek Poke Swi
syn keyword uniconSpecific WinAssociate WinButton WinColorDialog
syn keyword uniconSpecific WinEditRegion WinFontDialog WinMenuBar
syn keyword uniconSpecific WinOpenDialog WinPlayMedia WinSaveDialog
syn keyword uniconSpecific WinScrollBar WinSelectDialog

" Unicon and Icon Graphic Keywords
syn match uniconKeyword "&col"
syn match uniconKeyword "&column"
syn match uniconKeyword "&control"
syn match uniconKeyword "&errno"
syn match uniconKeyword "&eventcode"
syn match uniconKeyword "&eventsource"
syn match uniconKeyword "&eventvalue"
syn match uniconKeyword "&interval"
syn match uniconKeyword "&ldrag"
syn match uniconKeyword "&lpress"
syn match uniconKeyword "&lrelease"
syn match uniconKeyword "&mdrag"
syn match uniconKeyword "&meta"
syn match uniconKeyword "&mpress"
syn match uniconKeyword "&mrelease"
syn match uniconKeyword "&pick"
syn match uniconKeyword "&now"
syn match uniconKeyword "&rdrag"
syn match uniconKeyword "&resize"
syn match uniconKeyword "&row"
syn match uniconKeyword "&rpress"
syn match uniconKeyword "&rrelease"
syn match uniconKeyword "&shift"
syn match uniconKeyword "&window"
syn match uniconKeyword "&x"
syn match uniconKeyword "&y"

" New reserved words
syn keyword uniconReserved critical import initially invocable method
syn keyword uniconReserved package thread 

" Storage class reserved words
syn keyword uniconStorageClass  abstract class

" Define the highlighting colour groups
hi def link uniconStorageClass  StorageClass
hi def link uniconFunction      Statement
hi def link uniconGraphics      Special
hi def link uniconSpecific      SpecialComment
hi def link uniconReserved      Label
hi def link uniconKeyword       Operator

let b:current_syntax = "unicon"
