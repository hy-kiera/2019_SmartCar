# -----------------------------------------------------------------------------
#
# Copyright (C) 2015-2017 Infineon Technologies AG. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# - Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the following disclaimer.
# - Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation.
#   and/or other materials provided with the distribution.
# - Neither the name of the copyright holders nor the names of its
#   contributors may be used to endorse or promote products derived from this
#   software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
# TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# To improve the quality of the software, users are encouraged to share
# modifications, enhancements or bug fixes with Infineon Technologies AG
# (support@infineon.com).
# 
# -----------------------------------------------------------------------------
# Subdirectory make file for 0_Src/BaseSw/Infra/Platform/Tricore/Compilers
# !! Generated make file, modifications could be overwritten !!
#------------------------------------------------------------------------------


# Make-Rules:
# Make-rules for architecture: Tricore

#Make-rule to build file: CompilerDcc.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerDcc.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerDcc.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerDcc.o: 0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerDcc.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file CompilerDcc.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: CompilerGhs.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGhs.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGhs.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGhs.o: 0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGhs.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file CompilerGhs.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: CompilerGnuc.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.o: 0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file CompilerGnuc.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: CompilerTasking.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerTasking.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerTasking.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerTasking.o: 0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerTasking.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file CompilerTasking.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD