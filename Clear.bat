@REM  Name: Recursively delete the specified directory or file, please put this file in the same level directory you want to execute.
@REM  Desciption:   
@REM  Author: amosryan/ych  
@REM  Date: 2010-11-01/2022-0128  
@REM  Version: 1.0/1.1  
@REM  Copyright: Up to you.  
@REM #########################################################  
  
@echo off 
setlocal enabledelayedexpansion  
  
set Dir=Debug,Release,ipch,obj,bin,.vs
set Ext=*.sdf,*.exp,*.pdb,*.manifest,*.ilk,*.aps

@REM delete files of the specified type
for /r . %%f in (%Ext%) do (
	if exist %%f (
		@echo %%f 
		del %%f
	) 
)

@REM delete the specified directory
for /r . %%a in (%Dir%) do (  
	if exist %%a (
		@echo %%a
		rd /s /q "%%a"
	)  
)

echo Delete completed
@pause