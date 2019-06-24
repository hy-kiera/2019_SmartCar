	.file	"IfxAsclin.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxAsclin_disableModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_disableModule
	.type	IfxAsclin_disableModule, @function
IfxAsclin_disableModule:
.LFB383:
	.file 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Asclin/Std/IfxAsclin.c"
	.loc 1 36 0
.LVL0:
	.loc 1 36 0
	mov.aa	%a15, %a4
	.loc 1 37 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL1:
	.loc 1 38 0
	mov	%d4, %d2
	.loc 1 37 0
	mov	%d15, %d2
.LVL2:
	.loc 1 38 0
	call	IfxScuWdt_clearCpuEndinit
.LVL3:
.LBB66:
.LBB67:
	.file 2 "0_Src/BaseSw/iLLD/TC27D/Tricore/Asclin/Std/IfxAsclin.h"
	.loc 2 2217 0
	ld.w	%d2, [%a15]0
.LBE67:
.LBE66:
	.loc 1 40 0
	mov	%d4, %d15
.LBB69:
.LBB68:
	.loc 2 2217 0
	or	%d2, %d2, 1
	st.w	[%a15]0, %d2
.LBE68:
.LBE69:
	.loc 1 40 0
	j	IfxScuWdt_setCpuEndinit
.LVL4:
.LFE383:
	.size	IfxAsclin_disableModule, .-IfxAsclin_disableModule
.section .text.IfxAsclin_enableAscErrorFlags,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableAscErrorFlags
	.type	IfxAsclin_enableAscErrorFlags, @function
IfxAsclin_enableAscErrorFlags:
.LFB384:
	.loc 1 45 0
.LVL5:
.LBB70:
.LBB71:
	.loc 2 1806 0
	movh	%d15, 1
	sel	%d4, %d4, %d15, 0
.LVL6:
	ld.w	%d15, [%a4] 64
	insert	%d15, %d15, 0, 16, 1
	or	%d4, %d15
.LBE71:
.LBE70:
.LBB73:
.LBB74:
	.loc 2 1836 0
	movh	%d15, 1024
	sel	%d5, %d5, %d15, 0
.LVL7:
.LBE74:
.LBE73:
.LBB76:
.LBB72:
	.loc 2 1806 0
	st.w	[%a4] 64, %d4
.LVL8:
.LBE72:
.LBE76:
.LBB77:
.LBB75:
	.loc 2 1836 0
	ld.w	%d15, [%a4] 64
	insert	%d15, %d15, 0, 26, 1
	or	%d5, %d15
	st.w	[%a4] 64, %d5
	ret
.LBE75:
.LBE77:
.LFE384:
	.size	IfxAsclin_enableAscErrorFlags, .-IfxAsclin_enableAscErrorFlags
.section .text.IfxAsclin_enableModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableModule
	.type	IfxAsclin_enableModule, @function
IfxAsclin_enableModule:
.LFB385:
	.loc 1 52 0
.LVL9:
	.loc 1 52 0
	mov.aa	%a15, %a4
	.loc 1 53 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL10:
	.loc 1 54 0
	mov	%d4, %d2
	.loc 1 53 0
	mov	%d15, %d2
.LVL11:
	.loc 1 54 0
	call	IfxScuWdt_clearCpuEndinit
.LVL12:
.LBB78:
.LBB79:
	.loc 2 2223 0
	ld.w	%d2, [%a15]0
.LBE79:
.LBE78:
	.loc 1 56 0
	mov	%d4, %d15
.LBB81:
.LBB80:
	.loc 2 2223 0
	andn	%d2, %d2, ~(-2)
	st.w	[%a15]0, %d2
.LBE80:
.LBE81:
	.loc 1 56 0
	j	IfxScuWdt_setCpuEndinit
.LVL13:
.LFE385:
	.size	IfxAsclin_enableModule, .-IfxAsclin_enableModule
.section .text.IfxAsclin_getAddress,"ax",@progbits
	.align 1
	.global	IfxAsclin_getAddress
	.type	IfxAsclin_getAddress, @function
IfxAsclin_getAddress:
.LFB386:
	.loc 1 61 0
.LVL14:
	.loc 1 70 0
	mov.a	%a2, 0
	.loc 1 64 0
	jge	%d4, 4, .L5
	.loc 1 66 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	addsc.a	%a15, %a15, %d4, 3
	ld.a	%a2, [%a15]0
.LVL15:
.L5:
	.loc 1 74 0
	ret
.LFE386:
	.size	IfxAsclin_getAddress, .-IfxAsclin_getAddress
.section .text.IfxAsclin_getFaFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getFaFrequency
	.type	IfxAsclin_getFaFrequency, @function
IfxAsclin_getFaFrequency:
.LFB387:
	.loc 1 78 0
.LVL16:
.LBB82:
.LBB83:
	.loc 2 1914 0
	ld.w	%d2, [%a4] 76
	and	%d2, %d2, 31
.LBE83:
.LBE82:
	.loc 1 82 0
	add	%d2, -1
	ge.u	%d15, %d2, 16
	jz	%d15, .L16
.L9:
.LVL17:
	.loc 1 108 0
	mov	%d2, 0
	ret
.LVL18:
.L16:
	.loc 1 82 0
	movh.a	%a15, hi:.L11
	lea	%a15, [%a15] lo:.L11
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L11:
	.code32
	j	.L10
	.code32
	j	.L12
	.code32
	j	.L9
	.code32
	j	.L13
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L14
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L15
.L14:
	.loc 1 97 0
	j	IfxScuCcu_getBaud2Frequency
.LVL19:
.L10:
	.loc 1 88 0
	j	IfxScuCcu_getSpbFrequency
.LVL20:
.L12:
	.loc 1 91 0
	j	IfxScuCcu_getOsc0Frequency
.LVL21:
.L13:
	.loc 1 94 0
	j	IfxScuCcu_getPllErayFrequency
.LVL22:
.L15:
	.loc 1 100 0
	j	IfxScuCcu_getBaud1Frequency
.LVL23:
.LFE387:
	.size	IfxAsclin_getFaFrequency, .-IfxAsclin_getFaFrequency
.section .text.IfxAsclin_getIndex,"ax",@progbits
	.align 1
	.global	IfxAsclin_getIndex
	.type	IfxAsclin_getIndex, @function
IfxAsclin_getIndex:
.LFB388:
	.loc 1 112 0
.LVL24:
	movh.a	%a3, hi:IfxAsclin_cfg_indexMap
	.loc 1 118 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxAsclin_cfg_indexMap
	mov.a	%a15, 3
.LVL25:
.L20:
	.loc 1 120 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a5, %a4, .L22
	.loc 1 118 0 discriminator 2
	add	%d15, 1
.LVL26:
	loop	%a15, .L20
	.loc 1 116 0
	mov	%d2, -1
.LVL27:
	.loc 1 128 0
	ret
.LVL28:
.L22:
	.loc 1 122 0
	ld.b	%d2, [%a2] 4
.LVL29:
	.loc 1 123 0
	ret
.LFE388:
	.size	IfxAsclin_getIndex, .-IfxAsclin_getIndex
.section .text.IfxAsclin_getOvsFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getOvsFrequency
	.type	IfxAsclin_getOvsFrequency, @function
IfxAsclin_getOvsFrequency:
.LFB389:
	.loc 1 132 0
.LVL30:
	.loc 1 132 0
	mov.aa	%a15, %a4
.LVL31:
.LBB84:
.LBB85:
	.loc 1 139 0
	call	IfxAsclin_getFaFrequency
.LVL32:
	ld.w	%d4, [%a15] 20
.LBE85:
.LBE84:
	.loc 1 133 0
	ld.w	%d3, [%a15] 32
.LBB89:
.LBB86:
	.loc 1 139 0
	insert	%d4, %d4, 0, 12, 20
.LBE86:
.LBE89:
	.loc 1 133 0
	ld.w	%d15, [%a15] 32
.LBB90:
.LBB87:
	.loc 1 139 0
	add	%d4, 1
	itof	%d4, %d4
.LBE87:
.LBE90:
	.loc 1 133 0
	extr.u	%d3, %d3, 16, 12
.LBB91:
.LBB88:
	.loc 1 139 0
	div.f	%d2, %d2, %d4
.LBE88:
.LBE91:
	.loc 1 133 0
	itof	%d3, %d3
	insert	%d15, %d15, 0, 12, 20
	mul.f	%d2, %d3, %d2
	itof	%d15, %d15
	.loc 1 134 0
	div.f	%d2, %d2, %d15
	ret
.LFE389:
	.size	IfxAsclin_getOvsFrequency, .-IfxAsclin_getOvsFrequency
.section .text.IfxAsclin_getPdFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getPdFrequency
	.type	IfxAsclin_getPdFrequency, @function
IfxAsclin_getPdFrequency:
.LFB390:
	.loc 1 138 0
.LVL33:
	.loc 1 138 0
	mov.aa	%a15, %a4
	.loc 1 139 0
	call	IfxAsclin_getFaFrequency
.LVL34:
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 12, 20
	add	%d15, 1
	itof	%d15, %d15
	.loc 1 140 0
	div.f	%d2, %d2, %d15
	ret
.LFE390:
	.size	IfxAsclin_getPdFrequency, .-IfxAsclin_getPdFrequency
.section .text.IfxAsclin_getShiftFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getShiftFrequency
	.type	IfxAsclin_getShiftFrequency, @function
IfxAsclin_getShiftFrequency:
.LFB391:
	.loc 1 144 0
.LVL35:
	.loc 1 144 0
	mov.aa	%a15, %a4
	.loc 1 145 0
	call	IfxAsclin_getOvsFrequency
.LVL36:
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 16, 4
	itof	%d15, %d15
	.loc 1 146 0
	div.f	%d2, %d2, %d15
	ret
.LFE391:
	.size	IfxAsclin_getShiftFrequency, .-IfxAsclin_getShiftFrequency
.section .text.IfxAsclin_getSrcPointerEr,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerEr
	.type	IfxAsclin_getSrcPointerEr, @function
IfxAsclin_getSrcPointerEr:
.LFB392:
	.loc 1 150 0
.LVL37:
	movh.a	%a3, hi:IfxAsclin_cfg_indexMap
.LBB92:
.LBB93:
	.loc 1 118 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxAsclin_cfg_indexMap
	mov.a	%a15, 3
.LVL38:
.L29:
	.loc 1 120 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a4, %a5, .L31
	.loc 1 118 0
	add	%d15, 1
.LVL39:
	loop	%a15, .L29
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32644
.LVL40:
.LBE93:
.LBE92:
	.loc 1 152 0
	ret
.LVL41:
.L31:
	ld.b	%d15, [%a2] 4
.LVL42:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32632
	addih.a	%a2, %a2, 61444
	ret
.LFE392:
	.size	IfxAsclin_getSrcPointerEr, .-IfxAsclin_getSrcPointerEr
.section .text.IfxAsclin_getSrcPointerRx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerRx
	.type	IfxAsclin_getSrcPointerRx, @function
IfxAsclin_getSrcPointerRx:
.LFB393:
	.loc 1 156 0
.LVL43:
	movh.a	%a3, hi:IfxAsclin_cfg_indexMap
.LBB94:
.LBB95:
	.loc 1 118 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxAsclin_cfg_indexMap
	mov.a	%a15, 3
.LVL44:
.L35:
	.loc 1 120 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a4, %a5, .L37
	.loc 1 118 0
	add	%d15, 1
.LVL45:
	loop	%a15, .L35
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32648
.LVL46:
.LBE95:
.LBE94:
	.loc 1 158 0
	ret
.LVL47:
.L37:
	ld.b	%d15, [%a2] 4
.LVL48:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32636
	addih.a	%a2, %a2, 61444
	ret
.LFE393:
	.size	IfxAsclin_getSrcPointerRx, .-IfxAsclin_getSrcPointerRx
.section .text.IfxAsclin_getSrcPointerTx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerTx
	.type	IfxAsclin_getSrcPointerTx, @function
IfxAsclin_getSrcPointerTx:
.LFB394:
	.loc 1 162 0
.LVL49:
	movh.a	%a3, hi:IfxAsclin_cfg_indexMap
.LBB96:
.LBB97:
	.loc 1 118 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxAsclin_cfg_indexMap
	mov.a	%a15, 3
.LVL50:
.L41:
	.loc 1 120 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a4, %a5, .L43
	.loc 1 118 0
	add	%d15, 1
.LVL51:
	loop	%a15, .L41
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32652
.LVL52:
.LBE97:
.LBE96:
	.loc 1 164 0
	ret
.LVL53:
.L43:
	ld.b	%d15, [%a2] 4
.LVL54:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32640
	addih.a	%a2, %a2, 61444
	ret
.LFE394:
	.size	IfxAsclin_getSrcPointerTx, .-IfxAsclin_getSrcPointerTx
.section .text.IfxAsclin_read16,"ax",@progbits
	.align 1
	.global	IfxAsclin_read16
	.type	IfxAsclin_read16, @function
IfxAsclin_read16:
.LFB395:
	.loc 1 168 0
.LVL55:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 171 0
	jz	%d4, .L50
.LVL56:
.L48:
	.loc 1 173 0
	ld.w	%d15, [%a4] 72
	st.h	[%a5]0, %d15
	add.a	%a5, 2
.LVL57:
	loop	%a15, .L48
.L50:
	.loc 1 178 0
	mov	%d2, 0
	ret
.LFE395:
	.size	IfxAsclin_read16, .-IfxAsclin_read16
.section .text.IfxAsclin_read32,"ax",@progbits
	.align 1
	.global	IfxAsclin_read32
	.type	IfxAsclin_read32, @function
IfxAsclin_read32:
.LFB396:
	.loc 1 182 0
.LVL58:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 185 0
	jz	%d4, .L57
.LVL59:
.L55:
	.loc 1 187 0
	ld.w	%d15, [%a4] 72
	st.w	[%a5]0, %d15
	add.a	%a5, 4
.LVL60:
	loop	%a15, .L55
.L57:
	.loc 1 192 0
	mov	%d2, 0
	ret
.LFE396:
	.size	IfxAsclin_read32, .-IfxAsclin_read32
.section .text.IfxAsclin_read8,"ax",@progbits
	.align 1
	.global	IfxAsclin_read8
	.type	IfxAsclin_read8, @function
IfxAsclin_read8:
.LFB397:
	.loc 1 196 0
.LVL61:
	addsc.a	%a15, %a5, %d4, 0
	mov.d	%d15, %a5
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 199 0
	jz	%d4, .L64
.LVL62:
.L62:
	.loc 1 201 0
	ld.w	%d15, [%a4] 72
	st.b	[%a5]0, %d15
.LVL63:
	add.a	%a5, 1
.LVL64:
	loop	%a15, .L62
.LVL65:
.L64:
	.loc 1 206 0
	mov	%d2, 0
	ret
.LFE397:
	.size	IfxAsclin_read8, .-IfxAsclin_read8
.section .text.IfxAsclin_resetModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_resetModule
	.type	IfxAsclin_resetModule, @function
IfxAsclin_resetModule:
.LFB398:
	.loc 1 210 0
.LVL66:
	.loc 1 210 0
	mov.aa	%a15, %a4
	.loc 1 211 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL67:
	.loc 1 212 0
	mov	%d4, %d2
	.loc 1 211 0
	mov	%d8, %d2
.LVL68:
	.loc 1 212 0
	call	IfxScuWdt_clearCpuEndinit
.LVL69:
	.loc 1 214 0
	ld.w	%d15, [%a15] 244
	.loc 1 216 0
	mov	%d4, %d8
	.loc 1 214 0
	or	%d15, %d15, 1
	st.w	[%a15] 244, %d15
	.loc 1 215 0
	ld.w	%d15, [%a15] 240
	or	%d15, %d15, 1
	st.w	[%a15] 240, %d15
	.loc 1 216 0
	call	IfxScuWdt_setCpuEndinit
.LVL70:
.L66:
	.loc 1 218 0 discriminator 1
	ld.w	%d15, [%a15] 244
	jz.t	%d15, 1, .L66
	.loc 1 221 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL71:
	.loc 1 222 0
	ld.w	%d15, [%a15] 236
	.loc 1 224 0
	mov	%d4, %d8
	.loc 1 222 0
	or	%d15, %d15, 1
	st.w	[%a15] 236, %d15
	.loc 1 224 0
	j	IfxScuWdt_setCpuEndinit
.LVL72:
.LFE398:
	.size	IfxAsclin_resetModule, .-IfxAsclin_resetModule
.section .text.IfxAsclin_setBaudrateBitFields,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBaudrateBitFields
	.type	IfxAsclin_setBaudrateBitFields, @function
IfxAsclin_setBaudrateBitFields:
.LFB399:
	.loc 1 229 0
.LVL73:
.LBB98:
.LBB99:
	.loc 2 1914 0
	ld.w	%d2, [%a4] 76
.LBE99:
.LBE98:
.LBB101:
.LBB102:
	.loc 1 341 0
	ld.w	%d15, [%a4] 76
.LBE102:
.LBE101:
.LBB106:
.LBB100:
	.loc 2 1914 0
	and	%d2, %d2, 31
.LVL74:
.LBE100:
.LBE106:
.LBB107:
.LBB105:
	.loc 1 341 0
	andn	%d15, %d15, ~(-32)
	st.w	[%a4] 76, %d15
.L70:
.LVL75:
.LBB103:
.LBB104:
	.loc 2 1920 0
	ld.w	%d15, [%a4] 76
.LBE104:
.LBE103:
	.loc 1 346 0
	jltz	%d15, .L70
.LVL76:
.LBE105:
.LBE107:
.LBB108:
.LBB109:
	.loc 2 2319 0
	ld.w	%d15, [%a4] 20
	add	%d4, -1
.LVL77:
	insert	%d4, %d15, %d4, 0, 12
.LVL78:
	st.w	[%a4] 20, %d4
.LVL79:
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	.loc 2 2301 0
	ld.w	%d15, [%a4] 32
	insert	%d5, %d15, %d5, 16, 12
.LVL80:
	st.w	[%a4] 32, %d5
.LVL81:
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	.loc 2 2211 0
	ld.w	%d15, [%a4] 32
	insert	%d6, %d15, %d6, 0, 12
.LVL82:
	st.w	[%a4] 32, %d6
.LVL83:
.LBE113:
.LBE112:
.LBB114:
.LBB115:
	.loc 2 2307 0
	ld.w	%d15, [%a4] 20
	insert	%d7, %d15, %d7, 16, 4
.LVL84:
	st.w	[%a4] 20, %d7
.LVL85:
.LBE115:
.LBE114:
.LBB116:
.LBB117:
	.loc 1 341 0
	ld.w	%d15, [%a4] 76
	andn	%d15, %d15, ~(-32)
	or	%d15, %d2
	st.w	[%a4] 76, %d15
	.loc 1 344 0
	jnz	%d2, .L77
.L72:
.LVL86:
.LBB118:
.LBB119:
	.loc 2 1920 0
	ld.w	%d15, [%a4] 76
.LBE119:
.LBE118:
	.loc 1 346 0
	jltz	%d15, .L72
	ret
.LVL87:
.L77:
.LBB120:
.LBB121:
	.loc 2 1920 0
	ld.w	%d15, [%a4] 76
.LBE121:
.LBE120:
	.loc 1 351 0
	jgez	%d15, .L77
	ret
.LBE117:
.LBE116:
.LFE399:
	.size	IfxAsclin_setBaudrateBitFields, .-IfxAsclin_setBaudrateBitFields
	.global	__extendsfdf2
	.global	__muldf3
	.global	__truncdfsf2
.section .rodata,"a",@progbits
.LC0:
	.string	"FALSE"
.LC1:
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Asclin/Std/IfxAsclin.c"
.section .text.IfxAsclin_setBitTiming,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBitTiming
	.type	IfxAsclin_setBitTiming, @function
IfxAsclin_setBitTiming:
.LFB400:
	.loc 1 241 0
.LVL88:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 241 0
	st.w	[%SP] 12, %d7
.LBB122:
.LBB123:
	.loc 2 1914 0
	ld.w	%d2, [%a4] 76
.LBE123:
.LBE122:
	.loc 1 241 0
	mov.aa	%a15, %a4
.LBB125:
.LBB124:
	.loc 2 1914 0
	and	%d2, %d2, 31
	mov.a	%a14, %d2
.LVL89:
.LBE124:
.LBE125:
	.loc 1 241 0
	mov	%e8, %d5, %d6
	mov	%d15, %d4
.LBB126:
.LBB127:
	.loc 1 139 0
	call	IfxAsclin_getFaFrequency
.LVL90:
	ld.w	%d3, [%a15] 20
.LBE127:
.LBE126:
	.loc 1 249 0
	addi	%d5, %d9, 1
.LBB130:
.LBB128:
	.loc 1 139 0
	insert	%d3, %d3, 0, 12, 20
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d3, %d2, %d3
.LBE128:
.LBE130:
.LBB131:
.LBB132:
	.file 3 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 151 0
	mov	%d2, 4
.LBE132:
.LBE131:
.LBB134:
.LBB129:
	.loc 1 139 0
	mov.a	%a12, %d3
.LVL91:
.LBE129:
.LBE134:
.LBB135:
.LBB133:
	.loc 3 151 0
#APP
	# 151 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d5, %d2
	# 0 "" 2
.LVL92:
#NO_APP
.LBE133:
.LBE135:
	.loc 1 249 0
	and	%d3, %d2, 255
.LBB136:
.LBB137:
	.loc 3 151 0
	mov	%d4, 1
.LBE137:
.LBE136:
	.loc 1 249 0
	st.w	[%SP] 4, %d3
.LVL93:
.LBB139:
.LBB138:
	.loc 3 151 0
#APP
	# 151 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d8, %d8, %d4
	# 0 "" 2
.LVL94:
#NO_APP
	and	%d13, %d2, 255
.LBE138:
.LBE139:
	.loc 1 251 0
	itof	%d13, %d13
	.loc 1 250 0
	and	%d8, %d8, 255
.LVL95:
	.loc 1 251 0
	mul.f	%d13, %d13, %d15
	.loc 1 253 0
	mov	%d4, %d13
	.loc 1 250 0
	st.w	[%SP] 8, %d8
.LVL96:
	.loc 1 253 0
	call	__extendsfdf2
.LVL97:
	mov	%e4, %d3, %d2
	movh	%d7, 16208
	movh	%d6, 54002
	addi	%d7, %d7, 25165
	addi	%d6, %d6, -22020
	call	__muldf3
.LVL98:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL99:
	.loc 1 259 0
	mov.d	%d4, %a12
	.loc 1 253 0
	mov.a	%a13, %d2
.LVL100:
	.loc 1 259 0
	div.f	%d2, %d4, %d13
.LVL101:
	ftouz	%d2, %d2
.LVL102:
	.loc 1 262 0
	sh	%d4, %d2, -12
	jz	%d4, .L80
	.loc 1 264 0
	movh	%d4, 16768
	mul.f	%d4, %d15, %d4
	mov.d	%d5, %a12
	div.f	%d4, %d5, %d4
	.loc 1 267 0
	movh.a	%a2, hi:Assert_verboseLevel
	ld.w	%d15, [%a2] lo:Assert_verboseLevel
.LVL103:
	.loc 1 264 0
	ftouz	%d4, %d4
	sh	%d4, %d4, -12
	jz	%d4, .L81
	.loc 1 267 0
	movh.a	%a4, hi:.LC0
	movh.a	%a5, hi:.LC1
	mov	%d4, 3
	lea	%a4, [%a4] lo:.LC0
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 267
	jge.u	%d15, 3, .L120
.LVL104:
.L80:
	.loc 1 279 0
	utof	%d3, %d2
	mov.d	%d15, %a12
	div.f	%d3, %d15, %d3
.LVL105:
	.loc 1 280 0
	mov	%d14, 0
	.loc 1 259 0
	mov	%d8, %d2
	.loc 1 280 0
	sub.f	%d3, %d13, %d3
.LVL106:
	.loc 1 287 0
	mov	%d0, 1
	.loc 1 280 0
	cmp.f	%d15, %d3, %d14
	extr.u	%d15, %d15, 0, 1
	addih	%d4, %d3, 0x8000
	cmov	%d3, %d15, %d4
.LVL107:
	.loc 1 287 0
	mov.d	%d4, %a13
	cmp.f	%d15, %d3, %d4
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L84
.LVL108:
	sh	%d15, %d2, 1
	mov	%d4, 4096
.LVL109:
	jge.u	%d15, %d4, .L84
	mul	%d5, %d2, 3
	mov.a	%a4, %d15
	mov	%d1, 0
	mov.a	%a2, %d5
	mov	%d11, 2
	sub.a	%a3, %a4, %a2
	lea	%a4, 4096
.LVL110:
.L96:
	add.a	%a5, %a2, %a3
	mov.d	%d7, %a5
.LVL111:
	.loc 1 289 0
	jeq	%d11, 2, .L102
	.loc 1 296 0
	mul	%d12, %d1, %d11
	div.u	%e4, %d12, %d0
	.loc 1 297 0
	addi	%d12, %d4, 1
	.loc 1 296 0
	mov	%d6, %d4
.LVL112:
	.loc 1 300 0
	jlt.u	%d12, %d4, .L86
.LVL113:
.L85:
	utof	%d4, %d11
	mov.d	%d5, %a12
	mul.f	%d4, %d5, %d4
.LVL114:
.L91:
	add	%d9, %d7, %d6
.LVL115:
	.loc 1 302 0
	utof	%d15, %d9
	div.f	%d15, %d4, %d15
.LVL116:
	.loc 1 303 0
	sub.f	%d15, %d13, %d15
.LVL117:
	cmp.f	%d5, %d15, %d14
	extr.u	%d5, %d5, 0, 1
	addih	%d10, %d15, 0x8000
	sel	%d15, %d5, %d10, %d15
.LVL118:
	.loc 1 305 0
	cmp.f	%d5, %d15, %d3
	extr.u	%d5, %d5, 0, 1
	seln	%d1, %d5, %d1, %d6
.LVL119:
	.loc 1 300 0
	add	%d6, 1
.LVL120:
	.loc 1 305 0
	seln	%d3, %d5, %d3, %d15
.LVL121:
	seln	%d0, %d5, %d0, %d11
.LVL122:
	seln	%d8, %d5, %d8, %d9
.LVL123:
	.loc 1 300 0
	jge.u	%d12, %d6, .L91
.LVL124:
.L86:
	.loc 1 314 0
	mov.d	%d4, %a13
	cmp.f	%d15, %d4, %d3
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L118
.LVL125:
	mov.d	%d15, %a2
	.loc 1 287 0
	mov.d	%d4, %a2
.LVL126:
	mov.d	%d5, %a4
	add	%d11, 1
.LVL127:
	add	%d15, %d2
	jge.u	%d4, %d5, .L118
	mov.a	%a2, %d15
	j	.L96
.LVL128:
.L102:
	.loc 1 292 0
	mov	%d12, 1
	.loc 1 291 0
	mov	%d6, 1
	j	.L85
.LVL129:
.L118:
	insert	%d0, %d0, 0, 12, 20
.LVL130:
.L84:
.LBB140:
.LBB141:
	.loc 1 341 0
	ld.w	%d4, [%a15] 76
	andn	%d4, %d4, ~(-32)
	st.w	[%a15] 76, %d4
.LVL131:
.L92:
.LBB142:
.LBB143:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE143:
.LBE142:
	.loc 1 346 0
	jltz	%d15, .L92
.LBE141:
.LBE140:
	.loc 1 321 0
	ld.w	%d2, [%a15] 32
.LVL132:
	.loc 1 322 0
	sh	%d0, %d0, 16
	.loc 1 321 0
	insert	%d8, %d2, %d8, 0, 12
.LVL133:
	.loc 1 325 0
	ld.w	%d15, [%SP] 4
	add	%d15, -1
	.loc 1 321 0
	st.w	[%a15] 32, %d8
	.loc 1 322 0
	ld.w	%d4, [%a15] 32
	insert	%d4, %d4, 0, 16, 12
	or	%d0, %d4
	st.w	[%a15] 32, %d0
	.loc 1 325 0
	ld.w	%d3, [%a15] 20
.LVL134:
	insert	%d3, %d3, %d15, 16, 4
	.loc 1 328 0
	ld.w	%d15, [%SP] 8
	.loc 1 325 0
	st.w	[%a15] 20, %d3
	.loc 1 328 0
	ld.w	%d2, [%a15] 20
.LBB144:
.LBB145:
	.loc 1 341 0
	mov.d	%d3, %a14
.LBE145:
.LBE144:
	.loc 1 328 0
	insert	%d2, %d2, %d15, 24, 4
	.loc 1 331 0
	movh	%d15, 32768
	.loc 1 328 0
	st.w	[%a15] 20, %d2
	.loc 1 331 0
	ld.w	%d2, [%SP] 12
	sel	%d7, %d2, %d15, 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 31, 1
	or	%d15, %d7
	st.w	[%a15] 20, %d15
.LVL135:
.LBB154:
.LBB152:
	.loc 1 341 0
	ld.w	%d15, [%a15] 76
	andn	%d15, %d15, ~(-32)
	or	%d15, %d3
	st.w	[%a15] 76, %d15
	.loc 1 344 0
	jnz.a	%a14, .L114
.L94:
.LVL136:
.LBB146:
.LBB147:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE147:
.LBE146:
	.loc 1 346 0
	jltz	%d15, .L94
.LVL137:
.L117:
.LBE152:
.LBE154:
	.loc 1 336 0
	mov	%d2, 1
	ret
.L114:
.LVL138:
.LBB155:
.LBB153:
.LBB148:
.LBB149:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE149:
.LBE148:
	.loc 1 351 0
	jltz	%d15, .L117
.LBB151:
.LBB150:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE150:
.LBE151:
	.loc 1 351 0
	jgez	%d15, .L114
	j	.L117
.LVL139:
.L81:
.LBE153:
.LBE155:
	.loc 1 272 0
	jlt.u	%d15, 3, .L80
	.loc 1 272 0 is_stmt 0 discriminator 1
	movh.a	%a4, hi:.LC0
	movh.a	%a5, hi:.LC1
	mov	%d4, 3
	lea	%a4, [%a4] lo:.LC0
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 272
.L120:
	movh.a	%a6, hi:__func__.10191
	lea	%a6, [%a6] lo:__func__.10191
	st.w	[%SP]0, %d2
	call	Ifx_Assert_doLevel
.LVL140:
	ld.w	%d2, [%SP]0
	j	.L80
.LFE400:
	.size	IfxAsclin_setBitTiming, .-IfxAsclin_setBitTiming
.section .text.IfxAsclin_setClockSource,"ax",@progbits
	.align 1
	.global	IfxAsclin_setClockSource
	.type	IfxAsclin_setClockSource, @function
IfxAsclin_setClockSource:
.LFB401:
	.loc 1 340 0 is_stmt 1
.LVL141:
	.loc 1 341 0
	ld.w	%d15, [%a4] 76
	insert	%d15, %d15, %d4, 0, 5
	st.w	[%a4] 76, %d15
	.loc 1 344 0
	jnz	%d4, .L128
.L124:
.LVL142:
.LBB156:
.LBB157:
	.loc 2 1920 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE157:
.LBE156:
	.loc 1 346 0 discriminator 1
	jltz	%d15, .L124
	ret
.LVL143:
.L128:
.LBB158:
.LBB159:
	.loc 2 1920 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE159:
.LBE158:
	.loc 1 351 0 discriminator 1
	jgez	%d15, .L128
	ret
.LFE401:
	.size	IfxAsclin_setClockSource, .-IfxAsclin_setClockSource
.section .text.IfxAsclin_write16,"ax",@progbits
	.align 1
	.global	IfxAsclin_write16
	.type	IfxAsclin_write16, @function
IfxAsclin_write16:
.LFB402:
	.loc 1 358 0
.LVL144:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 361 0
	jz	%d4, .L136
.LVL145:
.L134:
	.loc 1 363 0
	ld.hu	%d15, [%a5]0
	st.w	[%a4] 68, %d15
	add.a	%a5, 2
.LVL146:
	loop	%a15, .L134
.L136:
	.loc 1 368 0
	mov	%d2, 0
	ret
.LFE402:
	.size	IfxAsclin_write16, .-IfxAsclin_write16
.section .text.IfxAsclin_write32,"ax",@progbits
	.align 1
	.global	IfxAsclin_write32
	.type	IfxAsclin_write32, @function
IfxAsclin_write32:
.LFB403:
	.loc 1 372 0
.LVL147:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 375 0
	jz	%d4, .L143
.LVL148:
.L141:
	.loc 1 377 0
	ld.w	%d15, [%a5]0
	st.w	[%a4] 68, %d15
	add.a	%a5, 4
.LVL149:
	loop	%a15, .L141
.L143:
	.loc 1 382 0
	mov	%d2, 0
	ret
.LFE403:
	.size	IfxAsclin_write32, .-IfxAsclin_write32
.section .text.IfxAsclin_write8,"ax",@progbits
	.align 1
	.global	IfxAsclin_write8
	.type	IfxAsclin_write8, @function
IfxAsclin_write8:
.LFB404:
	.loc 1 386 0
.LVL150:
	addsc.a	%a15, %a5, %d4, 0
	mov.d	%d15, %a5
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 389 0
	jz	%d4, .L150
.LVL151:
.L148:
	.loc 1 391 0
	ld.bu	%d15, [%a5]0
	st.w	[%a4] 68, %d15
.LVL152:
	add.a	%a5, 1
.LVL153:
	loop	%a15, .L148
.LVL154:
.L150:
	.loc 1 396 0
	mov	%d2, 0
	ret
.LFE404:
	.size	IfxAsclin_write8, .-IfxAsclin_write8
.section .rodata.__func__.10191,"a",@progbits
	.type	__func__.10191, @object
	.size	__func__.10191, 23
__func__.10191:
	.string	"IfxAsclin_setBitTiming"
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB384
	.uaword	.LFE384-.LFB384
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB385
	.uaword	.LFE385-.LFB385
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB386
	.uaword	.LFE386-.LFB386
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB387
	.uaword	.LFE387-.LFB387
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB388
	.uaword	.LFE388-.LFB388
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB389
	.uaword	.LFE389-.LFB389
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB390
	.uaword	.LFE390-.LFB390
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB391
	.uaword	.LFE391-.LFB391
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB392
	.uaword	.LFE392-.LFB392
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB393
	.uaword	.LFE393-.LFB393
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB394
	.uaword	.LFE394-.LFB394
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB395
	.uaword	.LFE395-.LFB395
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB396
	.uaword	.LFE396-.LFB396
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB397
	.uaword	.LFE397-.LFB397
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB398
	.uaword	.LFE398-.LFB398
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB399
	.uaword	.LFE399-.LFB399
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB400
	.uaword	.LFE400-.LFB400
	.byte	0x4
	.uaword	.LCFI0-.LFB400
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB401
	.uaword	.LFE401-.LFB401
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB402
	.uaword	.LFE402-.LFB402
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB403
	.uaword	.LFE403-.LFB403
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB404
	.uaword	.LFE404-.LFB404
	.align 2
.LEFDE42:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxAsclin_regdef.h"
	.file 7 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxAsclin_cfg.h"
	.file 8 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_regdef.h"
	.file 9 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 10 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 11 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
	.file 12 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5bd4
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Asclin/Std/IfxAsclin.c"
	.string	"C:\\\\Users\\\\kdh95\\\\Desktop\\\\ws\\\\2019_SmartCar\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x158
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x1eb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x217
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x1a7
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1b3
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x18e
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x68
	.uaword	0x1eb
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"pchar"
	.byte	0x5
	.byte	0x27
	.uaword	0x2a9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2af
	.uleb128 0x5
	.uaword	0x2b4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2c2
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x7e
	.uaword	0x2e9
	.uleb128 0x8
	.string	"module"
	.byte	0x5
	.byte	0x80
	.uaword	0x2bc
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x5
	.byte	0x81
	.uaword	0x22d
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x82
	.uaword	0x2c3
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x51a
	.uleb128 0xa
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x303
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x568
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x6
	.byte	0x54
	.uaword	0x197
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x538
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_BITCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x62e
	.uleb128 0xa
	.string	"PRESCALER"
	.byte	0x6
	.byte	0x5a
	.uaword	0x197
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.byte	0x5b
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"OVERSAMPLING"
	.byte	0x6
	.byte	0x5c
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"reserved_20"
	.byte	0x6
	.byte	0x5d
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"SAMPLEPOINT"
	.byte	0x6
	.byte	0x5e
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x6
	.byte	0x5f
	.uaword	0x197
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"SM"
	.byte	0x6
	.byte	0x60
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BITCON_Bits"
	.byte	0x6
	.byte	0x61
	.uaword	0x586
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_BRD_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x64
	.uaword	0x6b9
	.uleb128 0xa
	.string	"LOWERLIMIT"
	.byte	0x6
	.byte	0x66
	.uaword	0x197
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"UPPERLIMIT"
	.byte	0x6
	.byte	0x67
	.uaword	0x197
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"MEASURED"
	.byte	0x6
	.byte	0x68
	.uaword	0x197
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x6
	.byte	0x69
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRD_Bits"
	.byte	0x6
	.byte	0x6a
	.uaword	0x64c
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_BRG_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6d
	.uaword	0x73c
	.uleb128 0xa
	.string	"DENOMINATOR"
	.byte	0x6
	.byte	0x6f
	.uaword	0x197
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.byte	0x70
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"NUMERATOR"
	.byte	0x6
	.byte	0x71
	.uaword	0x197
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x6
	.byte	0x72
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRG_Bits"
	.byte	0x6
	.byte	0x73
	.uaword	0x6d4
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x76
	.uaword	0x7c3
	.uleb128 0xa
	.string	"DISR"
	.byte	0x6
	.byte	0x78
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"DISS"
	.byte	0x6
	.byte	0x79
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x6
	.byte	0x7a
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"EDIS"
	.byte	0x6
	.byte	0x7b
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.byte	0x7c
	.uaword	0x197
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CLC_Bits"
	.byte	0x6
	.byte	0x7d
	.uaword	0x757
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_CSR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x80
	.uaword	0x833
	.uleb128 0xa
	.string	"CLKSEL"
	.byte	0x6
	.byte	0x82
	.uaword	0x197
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"reserved_5"
	.byte	0x6
	.byte	0x83
	.uaword	0x197
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"CON"
	.byte	0x6
	.byte	0x84
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CSR_Bits"
	.byte	0x6
	.byte	0x85
	.uaword	0x7de
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_DATCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x88
	.uaword	0x8de
	.uleb128 0xa
	.string	"DATLEN"
	.byte	0x6
	.byte	0x8a
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.byte	0x8b
	.uaword	0x197
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"HO"
	.byte	0x6
	.byte	0x8c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"RM"
	.byte	0x6
	.byte	0x8d
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"CSM"
	.byte	0x6
	.byte	0x8e
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"RESPONSE"
	.byte	0x6
	.byte	0x8f
	.uaword	0x197
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x6
	.byte	0x90
	.uaword	0x197
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_DATCON_Bits"
	.byte	0x6
	.byte	0x91
	.uaword	0x84e
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x94
	.uaword	0xaa6
	.uleb128 0xa
	.string	"TH"
	.byte	0x6
	.byte	0x96
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"TR"
	.byte	0x6
	.byte	0x97
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"RH"
	.byte	0x6
	.byte	0x98
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"RR"
	.byte	0x6
	.byte	0x99
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.byte	0x9a
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"FED"
	.byte	0x6
	.byte	0x9b
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"RED"
	.byte	0x6
	.byte	0x9c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x6
	.byte	0x9d
	.uaword	0x197
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"TWRQ"
	.byte	0x6
	.byte	0x9e
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"THRQ"
	.byte	0x6
	.byte	0x9f
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"TRRQ"
	.byte	0x6
	.byte	0xa0
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PE"
	.byte	0x6
	.byte	0xa1
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"TC"
	.byte	0x6
	.byte	0xa2
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"FE"
	.byte	0x6
	.byte	0xa3
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"HT"
	.byte	0x6
	.byte	0xa4
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"RT"
	.byte	0x6
	.byte	0xa5
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"BD"
	.byte	0x6
	.byte	0xa6
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"LP"
	.byte	0x6
	.byte	0xa7
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"LA"
	.byte	0x6
	.byte	0xa8
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"LC"
	.byte	0x6
	.byte	0xa9
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"CE"
	.byte	0x6
	.byte	0xaa
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"RFO"
	.byte	0x6
	.byte	0xab
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"RFU"
	.byte	0x6
	.byte	0xac
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"RFL"
	.byte	0x6
	.byte	0xad
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	.LASF7
	.byte	0x6
	.byte	0xae
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"TFO"
	.byte	0x6
	.byte	0xaf
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"TFL"
	.byte	0x6
	.byte	0xb0
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x6
	.byte	0xb1
	.uaword	0x8fc
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb4
	.uaword	0xc8a
	.uleb128 0xa
	.string	"THC"
	.byte	0x6
	.byte	0xb6
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"TRC"
	.byte	0x6
	.byte	0xb7
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"RHC"
	.byte	0x6
	.byte	0xb8
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"RRC"
	.byte	0x6
	.byte	0xb9
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.byte	0xba
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"FEDC"
	.byte	0x6
	.byte	0xbb
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"REDC"
	.byte	0x6
	.byte	0xbc
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x6
	.byte	0xbd
	.uaword	0x197
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"TWRQC"
	.byte	0x6
	.byte	0xbe
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"THRQC"
	.byte	0x6
	.byte	0xbf
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"TRRQC"
	.byte	0x6
	.byte	0xc0
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PEC"
	.byte	0x6
	.byte	0xc1
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"TCC"
	.byte	0x6
	.byte	0xc2
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"FEC"
	.byte	0x6
	.byte	0xc3
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"HTC"
	.byte	0x6
	.byte	0xc4
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"RTC"
	.byte	0x6
	.byte	0xc5
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"BDC"
	.byte	0x6
	.byte	0xc6
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"LPC"
	.byte	0x6
	.byte	0xc7
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"LAC"
	.byte	0x6
	.byte	0xc8
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"LCC"
	.byte	0x6
	.byte	0xc9
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"CEC"
	.byte	0x6
	.byte	0xca
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"RFOC"
	.byte	0x6
	.byte	0xcb
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"RFUC"
	.byte	0x6
	.byte	0xcc
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"RFLC"
	.byte	0x6
	.byte	0xcd
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	.LASF7
	.byte	0x6
	.byte	0xce
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"TFOC"
	.byte	0x6
	.byte	0xcf
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"TFLC"
	.byte	0x6
	.byte	0xd0
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x6
	.byte	0xd1
	.uaword	0xac3
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd4
	.uaword	0xe41
	.uleb128 0xa
	.string	"THE"
	.byte	0x6
	.byte	0xd6
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"TRE"
	.byte	0x6
	.byte	0xd7
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"RHE"
	.byte	0x6
	.byte	0xd8
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"RRE"
	.byte	0x6
	.byte	0xd9
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.byte	0xda
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"FEDE"
	.byte	0x6
	.byte	0xdb
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"REDE"
	.byte	0x6
	.byte	0xdc
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x6
	.byte	0xdd
	.uaword	0x197
	.byte	0x4
	.byte	0x9
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PEE"
	.byte	0x6
	.byte	0xde
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"TCE"
	.byte	0x6
	.byte	0xdf
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"FEE"
	.byte	0x6
	.byte	0xe0
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"HTE"
	.byte	0x6
	.byte	0xe1
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"RTE"
	.byte	0x6
	.byte	0xe2
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"BDE"
	.byte	0x6
	.byte	0xe3
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"LPE"
	.byte	0x6
	.byte	0xe4
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"ABE"
	.byte	0x6
	.byte	0xe5
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"LCE"
	.byte	0x6
	.byte	0xe6
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"CEE"
	.byte	0x6
	.byte	0xe7
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"RFOE"
	.byte	0x6
	.byte	0xe8
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"RFUE"
	.byte	0x6
	.byte	0xe9
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"RFLE"
	.byte	0x6
	.byte	0xea
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	.LASF7
	.byte	0x6
	.byte	0xeb
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"TFOE"
	.byte	0x6
	.byte	0xec
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"TFLE"
	.byte	0x6
	.byte	0xed
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x6
	.byte	0xee
	.uaword	0xcac
	.uleb128 0x9
	.string	"_Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf1
	.uaword	0x1037
	.uleb128 0xa
	.string	"THS"
	.byte	0x6
	.byte	0xf3
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"TRS"
	.byte	0x6
	.byte	0xf4
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"RHS"
	.byte	0x6
	.byte	0xf5
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"RRS"
	.byte	0x6
	.byte	0xf6
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.byte	0xf7
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"FEDS"
	.byte	0x6
	.byte	0xf8
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"REDS"
	.byte	0x6
	.byte	0xf9
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x6
	.byte	0xfa
	.uaword	0x197
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"TWRQS"
	.byte	0x6
	.byte	0xfb
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"THRQS"
	.byte	0x6
	.byte	0xfc
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"TRRQS"
	.byte	0x6
	.byte	0xfd
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PES"
	.byte	0x6
	.byte	0xfe
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"TCS"
	.byte	0x6
	.byte	0xff
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"FES"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"HTS"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"RTS"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"BDS"
	.byte	0x6
	.uahalf	0x103
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"LPS"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"LAS"
	.byte	0x6
	.uahalf	0x105
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"LCS"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"CES"
	.byte	0x6
	.uahalf	0x107
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"RFOS"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"RFUS"
	.byte	0x6
	.uahalf	0x109
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"RFLS"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"TFOS"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"TFLS"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0xe64
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x111
	.uaword	0x1138
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x113
	.uaword	0x197
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"IDLE"
	.byte	0x6
	.uahalf	0x114
	.uaword	0x197
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"STOP"
	.byte	0x6
	.uahalf	0x115
	.uaword	0x197
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"LEAD"
	.byte	0x6
	.uahalf	0x116
	.uaword	0x197
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"reserved_15"
	.byte	0x6
	.uahalf	0x117
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"MODE"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x197
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x119
	.uaword	0x197
	.byte	0x4
	.byte	0xa
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"MSB"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"CEN"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"PEN"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"ODD"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1058
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_ID_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x121
	.uaword	0x11b4
	.uleb128 0xc
	.string	"MODREV"
	.byte	0x6
	.uahalf	0x123
	.uaword	0x197
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"MODTYPE"
	.byte	0x6
	.uahalf	0x124
	.uaword	0x197
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"MODNUMBER"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x197
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_ID_Bits"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1159
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_IOCR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x129
	.uaword	0x12ce
	.uleb128 0xc
	.string	"ALTI"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0x197
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"reserved_3"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"DEPTH"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x197
	.byte	0x4
	.byte	0x6
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x197
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"CTS"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x197
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x130
	.uaword	0x197
	.byte	0x4
	.byte	0x7
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"RCPOL"
	.byte	0x6
	.uahalf	0x131
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"CPOL"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"SPOL"
	.byte	0x6
	.uahalf	0x133
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"LB"
	.byte	0x6
	.uahalf	0x134
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"CTSEN"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"RXM"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"TXM"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_IOCR_Bits"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x11cf
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x1340
	.uleb128 0xc
	.string	"RST"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"RSTSTAT"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x197
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_KRST0_Bits"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x12eb
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x143
	.uaword	0x139f
	.uleb128 0xc
	.string	"RST"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x146
	.uaword	0x197
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_KRST1_Bits"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x135e
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x1400
	.uleb128 0xc
	.string	"CLR"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x14d
	.uaword	0x197
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x13bd
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x151
	.uaword	0x146f
	.uleb128 0xc
	.string	"BREAK"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x197
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"reserved_6"
	.byte	0x6
	.uahalf	0x154
	.uaword	0x197
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x1420
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1525
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x197
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"CSI"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"CSEN"
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"MS"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"ABD"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x160
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x6
	.uahalf	0x161
	.uaword	0x1492
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x164
	.uaword	0x158e
	.uleb128 0xc
	.string	"HEADER"
	.byte	0x6
	.uahalf	0x166
	.uaword	0x197
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x6
	.uahalf	0x167
	.uaword	0x197
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x6
	.uahalf	0x168
	.uaword	0x1545
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_OCS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x162d
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x197
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"SUS"
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"SUS_P"
	.byte	0x6
	.uahalf	0x16f
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"SUSSTA"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"reserved_30"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x197
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_OCS_Bits"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x15b1
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x175
	.uaword	0x167c
	.uleb128 0xc
	.string	"DATA"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x197
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x6
	.uahalf	0x178
	.uaword	0x1649
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x16cf
	.uleb128 0xc
	.string	"DATA"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x197
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x6
	.uahalf	0x17e
	.uaword	0x169b
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x181
	.uaword	0x17a8
	.uleb128 0xc
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"ENI"
	.byte	0x6
	.uahalf	0x184
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x185
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"OUTW"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x197
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x187
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x188
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"FILL"
	.byte	0x6
	.uahalf	0x189
	.uaword	0x197
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x197
	.byte	0x4
	.byte	0xa
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"BUF"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x16ef
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x17fd
	.uleb128 0xc
	.string	"DATA"
	.byte	0x6
	.uahalf	0x191
	.uaword	0x197
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x6
	.uahalf	0x192
	.uaword	0x17ca
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x195
	.uaword	0x18c4
	.uleb128 0xc
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x197
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"ENO"
	.byte	0x6
	.uahalf	0x198
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x199
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"INW"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x197
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x19b
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x197
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"FILL"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x197
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x197
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x181c
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x190e
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x51a
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_ACCEN0"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x18e6
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x1950
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1b1
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1b3
	.uaword	0x568
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_ACCEN1"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0x1928
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x1992
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1b9
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x62e
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_BITCON"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x196a
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x19d4
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0x6b9
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_BRD"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0x19ac
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x1a13
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1cb
	.uaword	0x73c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_BRG"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x19eb
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x1a52
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1d1
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x7c3
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_CLC"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1a2a
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1a91
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x833
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_CSR"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0x1a69
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1df
	.uaword	0x1ad0
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x8de
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_DATCON"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0x1aa8
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x1b12
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0xaa6
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_FLAGS"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0x1aea
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x1b53
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0xc8a
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0x1b2b
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x1b99
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0xe41
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_FLAGSENABLE"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x1b71
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x1be0
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x202
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x203
	.uaword	0x1037
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_FLAGSSET"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1bb8
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x207
	.uaword	0x1c24
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x1138
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_FRAMECON"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x1bfc
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1c68
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x11b4
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_ID"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x1c40
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x217
	.uaword	0x1ca6
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x21a
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x21b
	.uaword	0x12ce
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_IOCR"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x1c7e
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x1ce6
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x221
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x222
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x223
	.uaword	0x1340
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_KRST0"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1cbe
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x227
	.uaword	0x1d27
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x229
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x139f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_KRST1"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0x1cff
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1d68
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x231
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x232
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x233
	.uaword	0x1400
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_KRSTCLR"
	.byte	0x6
	.uahalf	0x234
	.uaword	0x1d40
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x237
	.uaword	0x1dab
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x23a
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0x146f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_LIN_BTIMER"
	.byte	0x6
	.uahalf	0x23c
	.uaword	0x1d83
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x23f
	.uaword	0x1df1
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x241
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x242
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x1525
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_LIN_CON"
	.byte	0x6
	.uahalf	0x244
	.uaword	0x1dc9
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x247
	.uaword	0x1e34
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x249
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x24a
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x24b
	.uaword	0x158e
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_LIN_HTIMER"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x1e0c
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x24f
	.uaword	0x1e7a
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x251
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x252
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x253
	.uaword	0x162d
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_OCS"
	.byte	0x6
	.uahalf	0x254
	.uaword	0x1e52
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1eb9
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x259
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x25a
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x25b
	.uaword	0x167c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_RXDATA"
	.byte	0x6
	.uahalf	0x25c
	.uaword	0x1e91
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x25f
	.uaword	0x1efb
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x262
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x263
	.uaword	0x16cf
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_RXDATAD"
	.byte	0x6
	.uahalf	0x264
	.uaword	0x1ed3
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x267
	.uaword	0x1f3e
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x269
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x26a
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x17a8
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_RXFIFOCON"
	.byte	0x6
	.uahalf	0x26c
	.uaword	0x1f16
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x26f
	.uaword	0x1f83
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x271
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x272
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x273
	.uaword	0x17fd
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_TXDATA"
	.byte	0x6
	.uahalf	0x274
	.uaword	0x1f5b
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x277
	.uaword	0x1fc5
	.uleb128 0x11
	.string	"U"
	.byte	0x6
	.uahalf	0x279
	.uaword	0x197
	.uleb128 0x11
	.string	"I"
	.byte	0x6
	.uahalf	0x27a
	.uaword	0x1c8
	.uleb128 0x11
	.string	"B"
	.byte	0x6
	.uahalf	0x27b
	.uaword	0x18c4
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_TXFIFOCON"
	.byte	0x6
	.uahalf	0x27c
	.uaword	0x1f9d
	.uleb128 0xf
	.string	"_Ifx_ASCLIN_LIN"
	.byte	0xc
	.byte	0x6
	.uahalf	0x287
	.uaword	0x2029
	.uleb128 0x12
	.string	"CON"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x1df1
	.byte	0
	.uleb128 0x12
	.string	"BTIMER"
	.byte	0x6
	.uahalf	0x28a
	.uaword	0x1dab
	.byte	0x4
	.uleb128 0x12
	.string	"HTIMER"
	.byte	0x6
	.uahalf	0x28b
	.uaword	0x1e34
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"Ifx_ASCLIN_LIN"
	.byte	0x6
	.uahalf	0x28c
	.uaword	0x2040
	.uleb128 0x13
	.uaword	0x1fe2
	.uleb128 0x14
	.string	"_Ifx_ASCLIN"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x299
	.uaword	0x21fb
	.uleb128 0x12
	.string	"CLC"
	.byte	0x6
	.uahalf	0x29b
	.uaword	0x1a52
	.byte	0
	.uleb128 0x12
	.string	"IOCR"
	.byte	0x6
	.uahalf	0x29c
	.uaword	0x1ca6
	.byte	0x4
	.uleb128 0x12
	.string	"ID"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x1c68
	.byte	0x8
	.uleb128 0x12
	.string	"TXFIFOCON"
	.byte	0x6
	.uahalf	0x29e
	.uaword	0x1fc5
	.byte	0xc
	.uleb128 0x12
	.string	"RXFIFOCON"
	.byte	0x6
	.uahalf	0x29f
	.uaword	0x1f3e
	.byte	0x10
	.uleb128 0x12
	.string	"BITCON"
	.byte	0x6
	.uahalf	0x2a0
	.uaword	0x1992
	.byte	0x14
	.uleb128 0x12
	.string	"FRAMECON"
	.byte	0x6
	.uahalf	0x2a1
	.uaword	0x1c24
	.byte	0x18
	.uleb128 0x12
	.string	"DATCON"
	.byte	0x6
	.uahalf	0x2a2
	.uaword	0x1ad0
	.byte	0x1c
	.uleb128 0x12
	.string	"BRG"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x1a13
	.byte	0x20
	.uleb128 0x12
	.string	"BRD"
	.byte	0x6
	.uahalf	0x2a4
	.uaword	0x19d4
	.byte	0x24
	.uleb128 0x12
	.string	"LIN"
	.byte	0x6
	.uahalf	0x2a5
	.uaword	0x2029
	.byte	0x28
	.uleb128 0x12
	.string	"FLAGS"
	.byte	0x6
	.uahalf	0x2a6
	.uaword	0x1b12
	.byte	0x34
	.uleb128 0x12
	.string	"FLAGSSET"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1be0
	.byte	0x38
	.uleb128 0x12
	.string	"FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x2a8
	.uaword	0x1b53
	.byte	0x3c
	.uleb128 0x12
	.string	"FLAGSENABLE"
	.byte	0x6
	.uahalf	0x2a9
	.uaword	0x1b99
	.byte	0x40
	.uleb128 0x12
	.string	"TXDATA"
	.byte	0x6
	.uahalf	0x2aa
	.uaword	0x1f83
	.byte	0x44
	.uleb128 0x12
	.string	"RXDATA"
	.byte	0x6
	.uahalf	0x2ab
	.uaword	0x1eb9
	.byte	0x48
	.uleb128 0x12
	.string	"CSR"
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x1a91
	.byte	0x4c
	.uleb128 0x12
	.string	"RXDATAD"
	.byte	0x6
	.uahalf	0x2ad
	.uaword	0x1efb
	.byte	0x50
	.uleb128 0x12
	.string	"reserved_54"
	.byte	0x6
	.uahalf	0x2ae
	.uaword	0x21fb
	.byte	0x54
	.uleb128 0x12
	.string	"OCS"
	.byte	0x6
	.uahalf	0x2af
	.uaword	0x1e7a
	.byte	0xe8
	.uleb128 0x12
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x2b0
	.uaword	0x1d68
	.byte	0xec
	.uleb128 0x12
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x2b1
	.uaword	0x1d27
	.byte	0xf0
	.uleb128 0x12
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x1ce6
	.byte	0xf4
	.uleb128 0x12
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x2b3
	.uaword	0x1950
	.byte	0xf8
	.uleb128 0x12
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x2b4
	.uaword	0x190e
	.byte	0xfc
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x220b
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xe
	.string	"Ifx_ASCLIN"
	.byte	0x6
	.uahalf	0x2b5
	.uaword	0x222a
	.uleb128 0x13
	.uaword	0x2045
	.uleb128 0x17
	.byte	0x1
	.byte	0x7
	.byte	0x3b
	.uaword	0x229f
	.uleb128 0x18
	.string	"IfxAsclin_Index_none"
	.sleb128 -1
	.uleb128 0x18
	.string	"IfxAsclin_Index_0"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxAsclin_Index_1"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxAsclin_Index_2"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxAsclin_Index_3"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Index"
	.byte	0x7
	.byte	0x41
	.uaword	0x222f
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x22c6
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x22d6
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x22e6
	.uleb128 0x16
	.uaword	0x220b
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x22f6
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x1b
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2306
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x27
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2316
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x17
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2326
	.uleb128 0x16
	.uaword	0x220b
	.byte	0xb
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2336
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x2454
	.uleb128 0xa
	.string	"SRPN"
	.byte	0x8
	.byte	0x2f
	.uaword	0x197
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0x8
	.byte	0x30
	.uaword	0x197
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"SRE"
	.byte	0x8
	.byte	0x31
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"TOS"
	.byte	0x8
	.byte	0x32
	.uaword	0x197
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"reserved_13"
	.byte	0x8
	.byte	0x33
	.uaword	0x197
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"ECC"
	.byte	0x8
	.byte	0x34
	.uaword	0x197
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"reserved_22"
	.byte	0x8
	.byte	0x35
	.uaword	0x197
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"SRR"
	.byte	0x8
	.byte	0x36
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"CLRR"
	.byte	0x8
	.byte	0x37
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"SETR"
	.byte	0x8
	.byte	0x38
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"IOV"
	.byte	0x8
	.byte	0x39
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"IOVCLR"
	.byte	0x8
	.byte	0x3a
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"SWS"
	.byte	0x8
	.byte	0x3b
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"SWSCLR"
	.byte	0x8
	.byte	0x3c
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"reserved_31"
	.byte	0x8
	.byte	0x3d
	.uaword	0x197
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x8
	.byte	0x3e
	.uaword	0x2336
	.uleb128 0x19
	.byte	0x4
	.byte	0x8
	.byte	0x46
	.uaword	0x2491
	.uleb128 0x1a
	.string	"U"
	.byte	0x8
	.byte	0x48
	.uaword	0x197
	.uleb128 0x1a
	.string	"I"
	.byte	0x8
	.byte	0x49
	.uaword	0x1c8
	.uleb128 0x1a
	.string	"B"
	.byte	0x8
	.byte	0x4a
	.uaword	0x2454
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x8
	.byte	0x4b
	.uaword	0x246d
	.uleb128 0x9
	.string	"_Ifx_SRC_AGBT"
	.byte	0x4
	.byte	0x8
	.byte	0x56
	.uaword	0x24c7
	.uleb128 0x8
	.string	"SR"
	.byte	0x8
	.byte	0x58
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_AGBT"
	.byte	0x8
	.byte	0x59
	.uaword	0x24db
	.uleb128 0x13
	.uaword	0x24a5
	.uleb128 0x9
	.string	"_Ifx_SRC_ASCLIN"
	.byte	0xc
	.byte	0x8
	.byte	0x5c
	.uaword	0x251b
	.uleb128 0x8
	.string	"TX"
	.byte	0x8
	.byte	0x5e
	.uaword	0x2491
	.byte	0
	.uleb128 0x8
	.string	"RX"
	.byte	0x8
	.byte	0x5f
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x8
	.string	"ERR"
	.byte	0x8
	.byte	0x60
	.uaword	0x2491
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ASCLIN"
	.byte	0x8
	.byte	0x61
	.uaword	0x2531
	.uleb128 0x13
	.uaword	0x24e0
	.uleb128 0x9
	.string	"_Ifx_SRC_BCUSPB"
	.byte	0x4
	.byte	0x8
	.byte	0x64
	.uaword	0x255d
	.uleb128 0x8
	.string	"SBSRC"
	.byte	0x8
	.byte	0x66
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_BCUSPB"
	.byte	0x8
	.byte	0x67
	.uaword	0x2573
	.uleb128 0x13
	.uaword	0x2536
	.uleb128 0x9
	.string	"_Ifx_SRC_CAN"
	.byte	0x40
	.byte	0x8
	.byte	0x6a
	.uaword	0x259a
	.uleb128 0x8
	.string	"INT"
	.byte	0x8
	.byte	0x6c
	.uaword	0x259a
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x25aa
	.uleb128 0x16
	.uaword	0x220b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CAN"
	.byte	0x8
	.byte	0x6d
	.uaword	0x25bd
	.uleb128 0x13
	.uaword	0x2578
	.uleb128 0x9
	.string	"_Ifx_SRC_CCU6"
	.byte	0x10
	.byte	0x8
	.byte	0x70
	.uaword	0x2609
	.uleb128 0x8
	.string	"SR0"
	.byte	0x8
	.byte	0x72
	.uaword	0x2491
	.byte	0
	.uleb128 0x8
	.string	"SR1"
	.byte	0x8
	.byte	0x73
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x8
	.string	"SR2"
	.byte	0x8
	.byte	0x74
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x8
	.string	"SR3"
	.byte	0x8
	.byte	0x75
	.uaword	0x2491
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CCU6"
	.byte	0x8
	.byte	0x76
	.uaword	0x261d
	.uleb128 0x13
	.uaword	0x25c2
	.uleb128 0x9
	.string	"_Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x8
	.byte	0x79
	.uaword	0x2648
	.uleb128 0x8
	.string	"SR"
	.byte	0x8
	.byte	0x7b
	.uaword	0x2648
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2658
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x7c
	.uaword	0x2670
	.uleb128 0x13
	.uaword	0x2622
	.uleb128 0x9
	.string	"_Ifx_SRC_CIF"
	.byte	0x10
	.byte	0x8
	.byte	0x7f
	.uaword	0x26bd
	.uleb128 0x8
	.string	"MI"
	.byte	0x8
	.byte	0x81
	.uaword	0x2491
	.byte	0
	.uleb128 0x8
	.string	"MIEP"
	.byte	0x8
	.byte	0x82
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x8
	.string	"ISP"
	.byte	0x8
	.byte	0x83
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x8
	.string	"MJPEG"
	.byte	0x8
	.byte	0x84
	.uaword	0x2491
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CIF"
	.byte	0x8
	.byte	0x85
	.uaword	0x26d0
	.uleb128 0x13
	.uaword	0x2675
	.uleb128 0x9
	.string	"_Ifx_SRC_CPU"
	.byte	0x4
	.byte	0x8
	.byte	0x88
	.uaword	0x26f9
	.uleb128 0x8
	.string	"SBSRC"
	.byte	0x8
	.byte	0x8a
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CPU"
	.byte	0x8
	.byte	0x8b
	.uaword	0x270c
	.uleb128 0x13
	.uaword	0x26d5
	.uleb128 0x9
	.string	"_Ifx_SRC_DAM"
	.byte	0x18
	.byte	0x8
	.byte	0x8e
	.uaword	0x2732
	.uleb128 0x8
	.string	"SR"
	.byte	0x8
	.byte	0x90
	.uaword	0x2732
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2742
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_DAM"
	.byte	0x8
	.byte	0x91
	.uaword	0x2755
	.uleb128 0x13
	.uaword	0x2711
	.uleb128 0x1b
	.string	"_Ifx_SRC_DMA"
	.uahalf	0x110
	.byte	0x8
	.byte	0x94
	.uaword	0x2794
	.uleb128 0x8
	.string	"ERR"
	.byte	0x8
	.byte	0x96
	.uaword	0x2491
	.byte	0
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x8
	.byte	0x97
	.uaword	0x2316
	.byte	0x4
	.uleb128 0x8
	.string	"CH"
	.byte	0x8
	.byte	0x98
	.uaword	0x2794
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x27a4
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_DMA"
	.byte	0x8
	.byte	0x99
	.uaword	0x27b7
	.uleb128 0x13
	.uaword	0x275a
	.uleb128 0x9
	.string	"_Ifx_SRC_DSADC"
	.byte	0x8
	.byte	0x8
	.byte	0x9c
	.uaword	0x27ec
	.uleb128 0x8
	.string	"SRM"
	.byte	0x8
	.byte	0x9e
	.uaword	0x2491
	.byte	0
	.uleb128 0x8
	.string	"SRA"
	.byte	0x8
	.byte	0x9f
	.uaword	0x2491
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_DSADC"
	.byte	0x8
	.byte	0xa0
	.uaword	0x2801
	.uleb128 0x13
	.uaword	0x27bc
	.uleb128 0x9
	.string	"_Ifx_SRC_EMEM"
	.byte	0x4
	.byte	0x8
	.byte	0xa3
	.uaword	0x2828
	.uleb128 0x8
	.string	"SR"
	.byte	0x8
	.byte	0xa5
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_EMEM"
	.byte	0x8
	.byte	0xa6
	.uaword	0x283c
	.uleb128 0x13
	.uaword	0x2806
	.uleb128 0x9
	.string	"_Ifx_SRC_ERAY"
	.byte	0x50
	.byte	0x8
	.byte	0xa9
	.uaword	0x28b3
	.uleb128 0x8
	.string	"INT"
	.byte	0x8
	.byte	0xab
	.uaword	0x2648
	.byte	0
	.uleb128 0x8
	.string	"TINT"
	.byte	0x8
	.byte	0xac
	.uaword	0x2648
	.byte	0x8
	.uleb128 0x8
	.string	"NDAT"
	.byte	0x8
	.byte	0xad
	.uaword	0x2648
	.byte	0x10
	.uleb128 0x8
	.string	"MBSC"
	.byte	0x8
	.byte	0xae
	.uaword	0x2648
	.byte	0x18
	.uleb128 0x8
	.string	"OBUSY"
	.byte	0x8
	.byte	0xaf
	.uaword	0x2491
	.byte	0x20
	.uleb128 0x8
	.string	"IBUSY"
	.byte	0x8
	.byte	0xb0
	.uaword	0x2491
	.byte	0x24
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x8
	.byte	0xb1
	.uaword	0x22f6
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ERAY"
	.byte	0x8
	.byte	0xb2
	.uaword	0x28c7
	.uleb128 0x13
	.uaword	0x2841
	.uleb128 0x9
	.string	"_Ifx_SRC_ETH"
	.byte	0x4
	.byte	0x8
	.byte	0xb5
	.uaword	0x28ed
	.uleb128 0x8
	.string	"SR"
	.byte	0x8
	.byte	0xb7
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ETH"
	.byte	0x8
	.byte	0xb8
	.uaword	0x2900
	.uleb128 0x13
	.uaword	0x28cc
	.uleb128 0x9
	.string	"_Ifx_SRC_FCE"
	.byte	0x4
	.byte	0x8
	.byte	0xbb
	.uaword	0x2926
	.uleb128 0x8
	.string	"SR"
	.byte	0x8
	.byte	0xbd
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_FCE"
	.byte	0x8
	.byte	0xbe
	.uaword	0x2939
	.uleb128 0x13
	.uaword	0x2905
	.uleb128 0x9
	.string	"_Ifx_SRC_GPSR"
	.byte	0x20
	.byte	0x8
	.byte	0xc1
	.uaword	0x2991
	.uleb128 0x8
	.string	"SR0"
	.byte	0x8
	.byte	0xc3
	.uaword	0x2491
	.byte	0
	.uleb128 0x8
	.string	"SR1"
	.byte	0x8
	.byte	0xc4
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x8
	.string	"SR2"
	.byte	0x8
	.byte	0xc5
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x8
	.string	"SR3"
	.byte	0x8
	.byte	0xc6
	.uaword	0x2491
	.byte	0xc
	.uleb128 0x1c
	.uaword	.LASF9
	.byte	0x8
	.byte	0xc7
	.uaword	0x22d6
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPSR"
	.byte	0x8
	.byte	0xc8
	.uaword	0x29a5
	.uleb128 0x13
	.uaword	0x293e
	.uleb128 0x9
	.string	"_Ifx_SRC_GPT12"
	.byte	0x30
	.byte	0x8
	.byte	0xcb
	.uaword	0x2a12
	.uleb128 0x8
	.string	"CIRQ"
	.byte	0x8
	.byte	0xcd
	.uaword	0x2491
	.byte	0
	.uleb128 0x8
	.string	"T2"
	.byte	0x8
	.byte	0xce
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x8
	.string	"T3"
	.byte	0x8
	.byte	0xcf
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x8
	.string	"T4"
	.byte	0x8
	.byte	0xd0
	.uaword	0x2491
	.byte	0xc
	.uleb128 0x8
	.string	"T5"
	.byte	0x8
	.byte	0xd1
	.uaword	0x2491
	.byte	0x10
	.uleb128 0x8
	.string	"T6"
	.byte	0x8
	.byte	0xd2
	.uaword	0x2491
	.byte	0x14
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x8
	.byte	0xd3
	.uaword	0x2306
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPT12"
	.byte	0x8
	.byte	0xd4
	.uaword	0x2a27
	.uleb128 0x13
	.uaword	0x29aa
	.uleb128 0x1b
	.string	"_Ifx_SRC_GTM"
	.uahalf	0x950
	.byte	0x8
	.byte	0xd7
	.uaword	0x2bc5
	.uleb128 0x8
	.string	"AEIIRQ"
	.byte	0x8
	.byte	0xd9
	.uaword	0x2491
	.byte	0
	.uleb128 0x8
	.string	"ARUIRQ"
	.byte	0x8
	.byte	0xda
	.uaword	0x2bc5
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LASF9
	.byte	0x8
	.byte	0xdb
	.uaword	0x22c6
	.byte	0x10
	.uleb128 0x8
	.string	"BRCIRQ"
	.byte	0x8
	.byte	0xdc
	.uaword	0x2491
	.byte	0x14
	.uleb128 0x8
	.string	"CMPIRQ"
	.byte	0x8
	.byte	0xdd
	.uaword	0x2491
	.byte	0x18
	.uleb128 0x8
	.string	"SPEIRQ"
	.byte	0x8
	.byte	0xde
	.uaword	0x2648
	.byte	0x1c
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x8
	.byte	0xdf
	.uaword	0x22b6
	.byte	0x24
	.uleb128 0x8
	.string	"PSM"
	.byte	0x8
	.byte	0xe0
	.uaword	0x2bd5
	.byte	0x2c
	.uleb128 0x1c
	.uaword	.LASF14
	.byte	0x8
	.byte	0xe1
	.uaword	0x2beb
	.byte	0x4c
	.uleb128 0x8
	.string	"DPLL"
	.byte	0x8
	.byte	0xe2
	.uaword	0x2bfb
	.byte	0xa4
	.uleb128 0x1d
	.string	"reserved_110"
	.byte	0x8
	.byte	0xe3
	.uaword	0x2c0b
	.uahalf	0x110
	.uleb128 0x1d
	.string	"ERR"
	.byte	0x8
	.byte	0xe4
	.uaword	0x2491
	.uahalf	0x170
	.uleb128 0x1d
	.string	"reserved_174"
	.byte	0x8
	.byte	0xe5
	.uaword	0x2316
	.uahalf	0x174
	.uleb128 0x1d
	.string	"TIM"
	.byte	0x8
	.byte	0xe6
	.uaword	0x2c1b
	.uahalf	0x180
	.uleb128 0x1d
	.string	"reserved_200"
	.byte	0x8
	.byte	0xe7
	.uaword	0x2c31
	.uahalf	0x200
	.uleb128 0x1d
	.string	"MCS"
	.byte	0x8
	.byte	0xe8
	.uaword	0x2c1b
	.uahalf	0x380
	.uleb128 0x1d
	.string	"reserved_400"
	.byte	0x8
	.byte	0xe9
	.uaword	0x2c31
	.uahalf	0x400
	.uleb128 0x1d
	.string	"TOM"
	.byte	0x8
	.byte	0xea
	.uaword	0x2c42
	.uahalf	0x580
	.uleb128 0x1d
	.string	"reserved_5E0"
	.byte	0x8
	.byte	0xeb
	.uaword	0x2c58
	.uahalf	0x5e0
	.uleb128 0x1d
	.string	"ATOM"
	.byte	0x8
	.byte	0xec
	.uaword	0x2c69
	.uahalf	0x780
	.uleb128 0x1d
	.string	"reserved_7D0"
	.byte	0x8
	.byte	0xed
	.uaword	0x2c7f
	.uahalf	0x7d0
	.uleb128 0x1d
	.string	"MCSW0"
	.byte	0x8
	.byte	0xee
	.uaword	0x2c90
	.uahalf	0x900
	.uleb128 0x1d
	.string	"reserved_910"
	.byte	0x8
	.byte	0xef
	.uaword	0x2ca0
	.uahalf	0x910
	.uleb128 0x1d
	.string	"MCSW1"
	.byte	0x8
	.byte	0xf0
	.uaword	0x2c90
	.uahalf	0x940
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2bd5
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2beb
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2bfb
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x57
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2c0b
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2c1b
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x5f
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2c31
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2c42
	.uleb128 0x1e
	.uaword	0x220b
	.uahalf	0x17f
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2c58
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x2
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2c69
	.uleb128 0x1e
	.uaword	0x220b
	.uahalf	0x19f
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2c7f
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x4
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2c90
	.uleb128 0x1e
	.uaword	0x220b
	.uahalf	0x12f
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2ca0
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2cb0
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x2f
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GTM"
	.byte	0x8
	.byte	0xf1
	.uaword	0x2cc3
	.uleb128 0x13
	.uaword	0x2a2c
	.uleb128 0x9
	.string	"_Ifx_SRC_HSCT"
	.byte	0x4
	.byte	0x8
	.byte	0xf4
	.uaword	0x2cea
	.uleb128 0x8
	.string	"SR"
	.byte	0x8
	.byte	0xf6
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_HSCT"
	.byte	0x8
	.byte	0xf7
	.uaword	0x2cfe
	.uleb128 0x13
	.uaword	0x2cc8
	.uleb128 0x9
	.string	"_Ifx_SRC_HSM"
	.byte	0x8
	.byte	0x8
	.byte	0xfa
	.uaword	0x2d25
	.uleb128 0x8
	.string	"HSM"
	.byte	0x8
	.byte	0xfc
	.uaword	0x2648
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_HSM"
	.byte	0x8
	.byte	0xfd
	.uaword	0x2d38
	.uleb128 0x13
	.uaword	0x2d03
	.uleb128 0xf
	.string	"_Ifx_SRC_HSSL"
	.byte	0x10
	.byte	0x8
	.uahalf	0x100
	.uaword	0x2d89
	.uleb128 0x12
	.string	"COK"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x2491
	.byte	0
	.uleb128 0x12
	.string	"RDI"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x12
	.string	"ERR"
	.byte	0x8
	.uahalf	0x104
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x12
	.string	"TRG"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x2491
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_HSSL"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x2d9e
	.uleb128 0x13
	.uaword	0x2d3d
	.uleb128 0xf
	.string	"_Ifx_SRC_I2C"
	.byte	0x50
	.byte	0x8
	.uahalf	0x109
	.uaword	0x2e19
	.uleb128 0x12
	.string	"BREQ"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x2491
	.byte	0
	.uleb128 0x12
	.string	"LBREQ"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x12
	.string	"SREQ"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x12
	.string	"LSREQ"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x2491
	.byte	0xc
	.uleb128 0x12
	.string	"ERR"
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x2491
	.byte	0x10
	.uleb128 0x12
	.string	"P"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x2491
	.byte	0x14
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x111
	.uaword	0x2e19
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x2e29
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x37
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_I2C"
	.byte	0x8
	.uahalf	0x112
	.uaword	0x2e3d
	.uleb128 0x13
	.uaword	0x2da3
	.uleb128 0xf
	.string	"_Ifx_SRC_LMU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x115
	.uaword	0x2e65
	.uleb128 0x12
	.string	"SR"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_LMU"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x2e79
	.uleb128 0x13
	.uaword	0x2e42
	.uleb128 0xf
	.string	"_Ifx_SRC_MSC"
	.byte	0x14
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x2ed6
	.uleb128 0x12
	.string	"SR0"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x2491
	.byte	0
	.uleb128 0x12
	.string	"SR1"
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x12
	.string	"SR2"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x12
	.string	"SR3"
	.byte	0x8
	.uahalf	0x120
	.uaword	0x2491
	.byte	0xc
	.uleb128 0x12
	.string	"SR4"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x2491
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_MSC"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x2eea
	.uleb128 0x13
	.uaword	0x2e7e
	.uleb128 0xf
	.string	"_Ifx_SRC_PMU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x125
	.uaword	0x2f12
	.uleb128 0x12
	.string	"SR"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_PMU"
	.byte	0x8
	.uahalf	0x128
	.uaword	0x2f26
	.uleb128 0x13
	.uaword	0x2eef
	.uleb128 0xf
	.string	"_Ifx_SRC_PSI5"
	.byte	0x20
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x2f4f
	.uleb128 0x12
	.string	"SR"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x2f4f
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x2f5f
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_PSI5"
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x2f74
	.uleb128 0x13
	.uaword	0x2f2b
	.uleb128 0xf
	.string	"_Ifx_SRC_PSI5S"
	.byte	0x20
	.byte	0x8
	.uahalf	0x131
	.uaword	0x2f9e
	.uleb128 0x12
	.string	"SR"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x2f4f
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_PSI5S"
	.byte	0x8
	.uahalf	0x134
	.uaword	0x2fb4
	.uleb128 0x13
	.uaword	0x2f79
	.uleb128 0xf
	.string	"_Ifx_SRC_QSPI"
	.byte	0x18
	.byte	0x8
	.uahalf	0x137
	.uaword	0x301a
	.uleb128 0x12
	.string	"TX"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x2491
	.byte	0
	.uleb128 0x12
	.string	"RX"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x12
	.string	"ERR"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x12
	.string	"PT"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x2491
	.byte	0xc
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x22c6
	.byte	0x10
	.uleb128 0x12
	.string	"U"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x2491
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_QSPI"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x302f
	.uleb128 0x13
	.uaword	0x2fb9
	.uleb128 0xf
	.string	"_Ifx_SRC_SCU"
	.byte	0x14
	.byte	0x8
	.uahalf	0x142
	.uaword	0x3065
	.uleb128 0x12
	.string	"DTS"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x2491
	.byte	0
	.uleb128 0x12
	.string	"ERU"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x2c90
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_SCU"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x3079
	.uleb128 0x13
	.uaword	0x3034
	.uleb128 0xf
	.string	"_Ifx_SRC_SENT"
	.byte	0x28
	.byte	0x8
	.uahalf	0x149
	.uaword	0x30a2
	.uleb128 0x12
	.string	"SR"
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x30a2
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2491
	.uaword	0x30b2
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_SENT"
	.byte	0x8
	.uahalf	0x14c
	.uaword	0x30c7
	.uleb128 0x13
	.uaword	0x307e
	.uleb128 0xf
	.string	"_Ifx_SRC_SMU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x14f
	.uaword	0x30ef
	.uleb128 0x12
	.string	"SR"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x2bc5
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_SMU"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x3103
	.uleb128 0x13
	.uaword	0x30cc
	.uleb128 0xf
	.string	"_Ifx_SRC_STM"
	.byte	0x8
	.byte	0x8
	.uahalf	0x155
	.uaword	0x3139
	.uleb128 0x12
	.string	"SR0"
	.byte	0x8
	.uahalf	0x157
	.uaword	0x2491
	.byte	0
	.uleb128 0x12
	.string	"SR1"
	.byte	0x8
	.uahalf	0x158
	.uaword	0x2491
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_STM"
	.byte	0x8
	.uahalf	0x159
	.uaword	0x314d
	.uleb128 0x13
	.uaword	0x3108
	.uleb128 0xf
	.string	"_Ifx_SRC_VADCCG"
	.byte	0x10
	.byte	0x8
	.uahalf	0x15c
	.uaword	0x31a0
	.uleb128 0x12
	.string	"SR0"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x2491
	.byte	0
	.uleb128 0x12
	.string	"SR1"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x12
	.string	"SR2"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x12
	.string	"SR3"
	.byte	0x8
	.uahalf	0x161
	.uaword	0x2491
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_VADCCG"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x31b7
	.uleb128 0x13
	.uaword	0x3152
	.uleb128 0xf
	.string	"_Ifx_SRC_VADCG"
	.byte	0x10
	.byte	0x8
	.uahalf	0x165
	.uaword	0x3209
	.uleb128 0x12
	.string	"SR0"
	.byte	0x8
	.uahalf	0x167
	.uaword	0x2491
	.byte	0
	.uleb128 0x12
	.string	"SR1"
	.byte	0x8
	.uahalf	0x168
	.uaword	0x2491
	.byte	0x4
	.uleb128 0x12
	.string	"SR2"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x2491
	.byte	0x8
	.uleb128 0x12
	.string	"SR3"
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x2491
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_VADCG"
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x321f
	.uleb128 0x13
	.uaword	0x31bc
	.uleb128 0xf
	.string	"_Ifx_SRC_XBAR"
	.byte	0x4
	.byte	0x8
	.uahalf	0x16e
	.uaword	0x3249
	.uleb128 0x12
	.string	"SRC"
	.byte	0x8
	.uahalf	0x170
	.uaword	0x2491
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_XBAR"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x325e
	.uleb128 0x13
	.uaword	0x3224
	.uleb128 0xf
	.string	"_Ifx_SRC_GAGBT"
	.byte	0x4
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x328a
	.uleb128 0x12
	.string	"AGBT"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x329a
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x24c7
	.uaword	0x329a
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x328a
	.uleb128 0xe
	.string	"Ifx_SRC_GAGBT"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x32b5
	.uleb128 0x13
	.uaword	0x3263
	.uleb128 0xf
	.string	"_Ifx_SRC_GASCLIN"
	.byte	0x30
	.byte	0x8
	.uahalf	0x184
	.uaword	0x32e5
	.uleb128 0x12
	.string	"ASCLIN"
	.byte	0x8
	.uahalf	0x186
	.uaword	0x32f5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x251b
	.uaword	0x32f5
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x32e5
	.uleb128 0xe
	.string	"Ifx_SRC_GASCLIN"
	.byte	0x8
	.uahalf	0x187
	.uaword	0x3312
	.uleb128 0x13
	.uaword	0x32ba
	.uleb128 0xf
	.string	"_Ifx_SRC_GBCU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x333c
	.uleb128 0x12
	.string	"SPB"
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x255d
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_GBCU"
	.byte	0x8
	.uahalf	0x18d
	.uaword	0x3351
	.uleb128 0x13
	.uaword	0x3317
	.uleb128 0xf
	.string	"_Ifx_SRC_GCAN"
	.byte	0x40
	.byte	0x8
	.uahalf	0x190
	.uaword	0x337b
	.uleb128 0x12
	.string	"CAN"
	.byte	0x8
	.uahalf	0x192
	.uaword	0x338b
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x25aa
	.uaword	0x338b
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x337b
	.uleb128 0xe
	.string	"Ifx_SRC_GCAN"
	.byte	0x8
	.uahalf	0x193
	.uaword	0x33a5
	.uleb128 0x13
	.uaword	0x3356
	.uleb128 0xf
	.string	"_Ifx_SRC_GCCU6"
	.byte	0x20
	.byte	0x8
	.uahalf	0x196
	.uaword	0x33d1
	.uleb128 0x12
	.string	"CCU6"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x33e1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2609
	.uaword	0x33e1
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.uaword	0x33d1
	.uleb128 0xe
	.string	"Ifx_SRC_GCCU6"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x33fc
	.uleb128 0x13
	.uaword	0x33aa
	.uleb128 0xf
	.string	"_Ifx_SRC_GCERBERUS"
	.byte	0x8
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x342b
	.uleb128 0x1f
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x2658
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_GCERBERUS"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x3445
	.uleb128 0x13
	.uaword	0x3401
	.uleb128 0xf
	.string	"_Ifx_SRC_GCIF"
	.byte	0x10
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x346f
	.uleb128 0x12
	.string	"CIF"
	.byte	0x8
	.uahalf	0x1a4
	.uaword	0x347f
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x26bd
	.uaword	0x347f
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x346f
	.uleb128 0xe
	.string	"Ifx_SRC_GCIF"
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x3499
	.uleb128 0x13
	.uaword	0x344a
	.uleb128 0xf
	.string	"_Ifx_SRC_GCPU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x34c3
	.uleb128 0x12
	.string	"CPU"
	.byte	0x8
	.uahalf	0x1aa
	.uaword	0x34d3
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x26f9
	.uaword	0x34d3
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uaword	0x34c3
	.uleb128 0xe
	.string	"Ifx_SRC_GCPU"
	.byte	0x8
	.uahalf	0x1ab
	.uaword	0x34ed
	.uleb128 0x13
	.uaword	0x349e
	.uleb128 0xf
	.string	"_Ifx_SRC_GDAM"
	.byte	0x18
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x3517
	.uleb128 0x12
	.string	"DAM"
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x3527
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2742
	.uaword	0x3527
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3517
	.uleb128 0xe
	.string	"Ifx_SRC_GDAM"
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x3541
	.uleb128 0x13
	.uaword	0x34f2
	.uleb128 0x14
	.string	"_Ifx_SRC_GDMA"
	.uahalf	0x110
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x356c
	.uleb128 0x12
	.string	"DMA"
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x357c
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x27a4
	.uaword	0x357c
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x356c
	.uleb128 0xe
	.string	"Ifx_SRC_GDMA"
	.byte	0x8
	.uahalf	0x1b7
	.uaword	0x3596
	.uleb128 0x13
	.uaword	0x3546
	.uleb128 0xf
	.string	"_Ifx_SRC_GDSADC"
	.byte	0x30
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x35c4
	.uleb128 0x12
	.string	"DSADC"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x35d4
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x27ec
	.uaword	0x35d4
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.uaword	0x35c4
	.uleb128 0xe
	.string	"Ifx_SRC_GDSADC"
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x35f0
	.uleb128 0x13
	.uaword	0x359b
	.uleb128 0xf
	.string	"_Ifx_SRC_GEMEM"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x361c
	.uleb128 0x12
	.string	"EMEM"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x362c
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2828
	.uaword	0x362c
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x361c
	.uleb128 0xe
	.string	"Ifx_SRC_GEMEM"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x3647
	.uleb128 0x13
	.uaword	0x35f5
	.uleb128 0xf
	.string	"_Ifx_SRC_GERAY"
	.byte	0x50
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x3673
	.uleb128 0x12
	.string	"ERAY"
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0x3683
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x28b3
	.uaword	0x3683
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3673
	.uleb128 0xe
	.string	"Ifx_SRC_GERAY"
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x369e
	.uleb128 0x13
	.uaword	0x364c
	.uleb128 0xf
	.string	"_Ifx_SRC_GETH"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x36c8
	.uleb128 0x12
	.string	"ETH"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x36d8
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x28ed
	.uaword	0x36d8
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x36c8
	.uleb128 0xe
	.string	"Ifx_SRC_GETH"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x36f2
	.uleb128 0x13
	.uaword	0x36a3
	.uleb128 0xf
	.string	"_Ifx_SRC_GFCE"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x371c
	.uleb128 0x12
	.string	"FCE"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x372c
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2926
	.uaword	0x372c
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x371c
	.uleb128 0xe
	.string	"Ifx_SRC_GFCE"
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x3746
	.uleb128 0x13
	.uaword	0x36f7
	.uleb128 0xf
	.string	"_Ifx_SRC_GGPSR"
	.byte	0x60
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x3772
	.uleb128 0x12
	.string	"GPSR"
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x3782
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2991
	.uaword	0x3782
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uaword	0x3772
	.uleb128 0xe
	.string	"Ifx_SRC_GGPSR"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x379d
	.uleb128 0x13
	.uaword	0x374b
	.uleb128 0xf
	.string	"_Ifx_SRC_GGPT12"
	.byte	0x30
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x37cb
	.uleb128 0x12
	.string	"GPT12"
	.byte	0x8
	.uahalf	0x1e0
	.uaword	0x37db
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2a12
	.uaword	0x37db
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x37cb
	.uleb128 0xe
	.string	"Ifx_SRC_GGPT12"
	.byte	0x8
	.uahalf	0x1e1
	.uaword	0x37f7
	.uleb128 0x13
	.uaword	0x37a2
	.uleb128 0x14
	.string	"_Ifx_SRC_GGTM"
	.uahalf	0x950
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x3822
	.uleb128 0x12
	.string	"GTM"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x3832
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2cb0
	.uaword	0x3832
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3822
	.uleb128 0xe
	.string	"Ifx_SRC_GGTM"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x384c
	.uleb128 0x13
	.uaword	0x37fc
	.uleb128 0xf
	.string	"_Ifx_SRC_GHSCT"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x3878
	.uleb128 0x12
	.string	"HSCT"
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x3888
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2cea
	.uaword	0x3888
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3878
	.uleb128 0xe
	.string	"Ifx_SRC_GHSCT"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x38a3
	.uleb128 0x13
	.uaword	0x3851
	.uleb128 0xf
	.string	"_Ifx_SRC_GHSM"
	.byte	0x8
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x38cd
	.uleb128 0x12
	.string	"HSM"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x38dd
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2d25
	.uaword	0x38dd
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x38cd
	.uleb128 0xe
	.string	"Ifx_SRC_GHSM"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x38f7
	.uleb128 0x13
	.uaword	0x38a8
	.uleb128 0xf
	.string	"_Ifx_SRC_GHSSL"
	.byte	0x44
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x3930
	.uleb128 0x12
	.string	"HSSL"
	.byte	0x8
	.uahalf	0x1f8
	.uaword	0x3940
	.byte	0
	.uleb128 0x12
	.string	"EXI"
	.byte	0x8
	.uahalf	0x1f9
	.uaword	0x2491
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.uaword	0x2d89
	.uaword	0x3940
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x3930
	.uleb128 0xe
	.string	"Ifx_SRC_GHSSL"
	.byte	0x8
	.uahalf	0x1fa
	.uaword	0x395b
	.uleb128 0x13
	.uaword	0x38fc
	.uleb128 0xf
	.string	"_Ifx_SRC_GI2C"
	.byte	0x50
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x3985
	.uleb128 0x12
	.string	"I2C"
	.byte	0x8
	.uahalf	0x1ff
	.uaword	0x3995
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2e29
	.uaword	0x3995
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3985
	.uleb128 0xe
	.string	"Ifx_SRC_GI2C"
	.byte	0x8
	.uahalf	0x200
	.uaword	0x39af
	.uleb128 0x13
	.uaword	0x3960
	.uleb128 0xf
	.string	"_Ifx_SRC_GLMU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x203
	.uaword	0x39d9
	.uleb128 0x12
	.string	"LMU"
	.byte	0x8
	.uahalf	0x205
	.uaword	0x39e9
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2e65
	.uaword	0x39e9
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x39d9
	.uleb128 0xe
	.string	"Ifx_SRC_GLMU"
	.byte	0x8
	.uahalf	0x206
	.uaword	0x3a03
	.uleb128 0x13
	.uaword	0x39b4
	.uleb128 0xf
	.string	"_Ifx_SRC_GMSC"
	.byte	0x28
	.byte	0x8
	.uahalf	0x209
	.uaword	0x3a2d
	.uleb128 0x12
	.string	"MSC"
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x3a3d
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2ed6
	.uaword	0x3a3d
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.uaword	0x3a2d
	.uleb128 0xe
	.string	"Ifx_SRC_GMSC"
	.byte	0x8
	.uahalf	0x20c
	.uaword	0x3a57
	.uleb128 0x13
	.uaword	0x3a08
	.uleb128 0xf
	.string	"_Ifx_SRC_GPMU"
	.byte	0x8
	.byte	0x8
	.uahalf	0x20f
	.uaword	0x3a81
	.uleb128 0x12
	.string	"PMU"
	.byte	0x8
	.uahalf	0x211
	.uaword	0x3a91
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2f12
	.uaword	0x3a91
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.uaword	0x3a81
	.uleb128 0xe
	.string	"Ifx_SRC_GPMU"
	.byte	0x8
	.uahalf	0x212
	.uaword	0x3aab
	.uleb128 0x13
	.uaword	0x3a5c
	.uleb128 0xf
	.string	"_Ifx_SRC_GPSI5"
	.byte	0x20
	.byte	0x8
	.uahalf	0x215
	.uaword	0x3ad7
	.uleb128 0x12
	.string	"PSI5"
	.byte	0x8
	.uahalf	0x217
	.uaword	0x3ae7
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2f5f
	.uaword	0x3ae7
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3ad7
	.uleb128 0xe
	.string	"Ifx_SRC_GPSI5"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x3b02
	.uleb128 0x13
	.uaword	0x3ab0
	.uleb128 0xf
	.string	"_Ifx_SRC_GPSI5S"
	.byte	0x20
	.byte	0x8
	.uahalf	0x21b
	.uaword	0x3b30
	.uleb128 0x12
	.string	"PSI5S"
	.byte	0x8
	.uahalf	0x21d
	.uaword	0x3b40
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2f9e
	.uaword	0x3b40
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3b30
	.uleb128 0xe
	.string	"Ifx_SRC_GPSI5S"
	.byte	0x8
	.uahalf	0x21e
	.uaword	0x3b5c
	.uleb128 0x13
	.uaword	0x3b07
	.uleb128 0xf
	.string	"_Ifx_SRC_GQSPI"
	.byte	0x60
	.byte	0x8
	.uahalf	0x221
	.uaword	0x3b88
	.uleb128 0x12
	.string	"QSPI"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x3b98
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x301a
	.uaword	0x3b98
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x3b88
	.uleb128 0xe
	.string	"Ifx_SRC_GQSPI"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x3bb3
	.uleb128 0x13
	.uaword	0x3b61
	.uleb128 0xf
	.string	"_Ifx_SRC_GSCU"
	.byte	0x14
	.byte	0x8
	.uahalf	0x227
	.uaword	0x3bdd
	.uleb128 0x12
	.string	"SCU"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x3065
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_GSCU"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x3bf2
	.uleb128 0x13
	.uaword	0x3bb8
	.uleb128 0xf
	.string	"_Ifx_SRC_GSENT"
	.byte	0x28
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x3c1e
	.uleb128 0x12
	.string	"SENT"
	.byte	0x8
	.uahalf	0x22f
	.uaword	0x3c2e
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x30b2
	.uaword	0x3c2e
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3c1e
	.uleb128 0xe
	.string	"Ifx_SRC_GSENT"
	.byte	0x8
	.uahalf	0x230
	.uaword	0x3c49
	.uleb128 0x13
	.uaword	0x3bf7
	.uleb128 0xf
	.string	"_Ifx_SRC_GSMU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x233
	.uaword	0x3c73
	.uleb128 0x12
	.string	"SMU"
	.byte	0x8
	.uahalf	0x235
	.uaword	0x3c83
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x30ef
	.uaword	0x3c83
	.uleb128 0x16
	.uaword	0x220b
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x3c73
	.uleb128 0xe
	.string	"Ifx_SRC_GSMU"
	.byte	0x8
	.uahalf	0x236
	.uaword	0x3c9d
	.uleb128 0x13
	.uaword	0x3c4e
	.uleb128 0xf
	.string	"_Ifx_SRC_GSTM"
	.byte	0x18
	.byte	0x8
	.uahalf	0x239
	.uaword	0x3cc7
	.uleb128 0x12
	.string	"STM"
	.byte	0x8
	.uahalf	0x23b
	.uaword	0x3cd7
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x3139
	.uaword	0x3cd7
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uaword	0x3cc7
	.uleb128 0xe
	.string	"Ifx_SRC_GSTM"
	.byte	0x8
	.uahalf	0x23c
	.uaword	0x3cf1
	.uleb128 0x13
	.uaword	0x3ca2
	.uleb128 0x14
	.string	"_Ifx_SRC_GVADC"
	.uahalf	0x140
	.byte	0x8
	.uahalf	0x23f
	.uaword	0x3d3d
	.uleb128 0x12
	.string	"G"
	.byte	0x8
	.uahalf	0x241
	.uaword	0x3d4d
	.byte	0
	.uleb128 0x12
	.string	"reserved_80"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x3d52
	.byte	0x80
	.uleb128 0x20
	.string	"CG"
	.byte	0x8
	.uahalf	0x243
	.uaword	0x3d72
	.uahalf	0x120
	.byte	0
	.uleb128 0x15
	.uaword	0x3209
	.uaword	0x3d4d
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.uaword	0x3d3d
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x3d62
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.uaword	0x31a0
	.uaword	0x3d72
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.uaword	0x3d62
	.uleb128 0xe
	.string	"Ifx_SRC_GVADC"
	.byte	0x8
	.uahalf	0x244
	.uaword	0x3d8d
	.uleb128 0x13
	.uaword	0x3cf6
	.uleb128 0xf
	.string	"_Ifx_SRC_GXBAR"
	.byte	0x4
	.byte	0x8
	.uahalf	0x247
	.uaword	0x3db9
	.uleb128 0x12
	.string	"XBAR"
	.byte	0x8
	.uahalf	0x249
	.uaword	0x3249
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC_GXBAR"
	.byte	0x8
	.uahalf	0x24a
	.uaword	0x3dcf
	.uleb128 0x13
	.uaword	0x3d92
	.uleb128 0x14
	.string	"_Ifx_SRC"
	.uahalf	0x2000
	.byte	0x8
	.uahalf	0x257
	.uaword	0x4269
	.uleb128 0x12
	.string	"CPU"
	.byte	0x8
	.uahalf	0x259
	.uaword	0x34d8
	.byte	0
	.uleb128 0x12
	.string	"reserved_C"
	.byte	0x8
	.uahalf	0x25a
	.uaword	0x4269
	.byte	0xc
	.uleb128 0x12
	.string	"EMEM"
	.byte	0x8
	.uahalf	0x25b
	.uaword	0x3631
	.byte	0x20
	.uleb128 0x12
	.string	"AGBT"
	.byte	0x8
	.uahalf	0x25c
	.uaword	0x329f
	.byte	0x24
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x25d
	.uaword	0x2306
	.byte	0x28
	.uleb128 0x12
	.string	"BCU"
	.byte	0x8
	.uahalf	0x25e
	.uaword	0x333c
	.byte	0x40
	.uleb128 0x12
	.string	"reserved_44"
	.byte	0x8
	.uahalf	0x25f
	.uaword	0x22c6
	.byte	0x44
	.uleb128 0x12
	.string	"XBAR"
	.byte	0x8
	.uahalf	0x260
	.uaword	0x3db9
	.byte	0x48
	.uleb128 0x1f
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x261
	.uaword	0x22c6
	.byte	0x4c
	.uleb128 0x1f
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x262
	.uaword	0x342b
	.byte	0x50
	.uleb128 0x12
	.string	"reserved_58"
	.byte	0x8
	.uahalf	0x263
	.uaword	0x22f6
	.byte	0x58
	.uleb128 0x12
	.string	"ASCLIN"
	.byte	0x8
	.uahalf	0x264
	.uaword	0x32fa
	.byte	0x80
	.uleb128 0x12
	.string	"reserved_B0"
	.byte	0x8
	.uahalf	0x265
	.uaword	0x4279
	.byte	0xb0
	.uleb128 0x20
	.string	"QSPI"
	.byte	0x8
	.uahalf	0x266
	.uaword	0x3b9d
	.uahalf	0x190
	.uleb128 0x20
	.string	"reserved_1F0"
	.byte	0x8
	.uahalf	0x267
	.uaword	0x3d52
	.uahalf	0x1f0
	.uleb128 0x20
	.string	"HSCT"
	.byte	0x8
	.uahalf	0x268
	.uaword	0x388d
	.uahalf	0x290
	.uleb128 0x20
	.string	"reserved_294"
	.byte	0x8
	.uahalf	0x269
	.uaword	0x2316
	.uahalf	0x294
	.uleb128 0x20
	.string	"HSSL"
	.byte	0x8
	.uahalf	0x26a
	.uaword	0x3945
	.uahalf	0x2a0
	.uleb128 0x20
	.string	"reserved_2E4"
	.byte	0x8
	.uahalf	0x26b
	.uaword	0x22e6
	.uahalf	0x2e4
	.uleb128 0x20
	.string	"I2C"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x399a
	.uahalf	0x300
	.uleb128 0x20
	.string	"SENT"
	.byte	0x8
	.uahalf	0x26d
	.uaword	0x3c33
	.uahalf	0x350
	.uleb128 0x20
	.string	"reserved_378"
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x4289
	.uahalf	0x378
	.uleb128 0x20
	.string	"MSC"
	.byte	0x8
	.uahalf	0x26f
	.uaword	0x3a42
	.uahalf	0x3e0
	.uleb128 0x20
	.string	"reserved_408"
	.byte	0x8
	.uahalf	0x270
	.uaword	0x2306
	.uahalf	0x408
	.uleb128 0x20
	.string	"CCU6"
	.byte	0x8
	.uahalf	0x271
	.uaword	0x33e6
	.uahalf	0x420
	.uleb128 0x20
	.string	"reserved_440"
	.byte	0x8
	.uahalf	0x272
	.uaword	0x4299
	.uahalf	0x440
	.uleb128 0x20
	.string	"GPT12"
	.byte	0x8
	.uahalf	0x273
	.uaword	0x37e0
	.uahalf	0x460
	.uleb128 0x20
	.string	"STM"
	.byte	0x8
	.uahalf	0x274
	.uaword	0x3cdc
	.uahalf	0x490
	.uleb128 0x20
	.string	"reserved_4A8"
	.byte	0x8
	.uahalf	0x275
	.uaword	0x22b6
	.uahalf	0x4a8
	.uleb128 0x20
	.string	"FCE"
	.byte	0x8
	.uahalf	0x276
	.uaword	0x3731
	.uahalf	0x4b0
	.uleb128 0x20
	.string	"reserved_4B4"
	.byte	0x8
	.uahalf	0x277
	.uaword	0x42a9
	.uahalf	0x4b4
	.uleb128 0x20
	.string	"DMA"
	.byte	0x8
	.uahalf	0x278
	.uaword	0x3581
	.uahalf	0x4f0
	.uleb128 0x20
	.string	"reserved_600"
	.byte	0x8
	.uahalf	0x279
	.uaword	0x42b9
	.uahalf	0x600
	.uleb128 0x20
	.string	"ETH"
	.byte	0x8
	.uahalf	0x27a
	.uaword	0x36dd
	.uahalf	0x8f0
	.uleb128 0x20
	.string	"reserved_8F4"
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x2316
	.uahalf	0x8f4
	.uleb128 0x20
	.string	"CAN"
	.byte	0x8
	.uahalf	0x27c
	.uaword	0x3390
	.uahalf	0x900
	.uleb128 0x20
	.string	"reserved_940"
	.byte	0x8
	.uahalf	0x27d
	.uaword	0x2326
	.uahalf	0x940
	.uleb128 0x20
	.string	"VADC"
	.byte	0x8
	.uahalf	0x27e
	.uaword	0x3d77
	.uahalf	0x980
	.uleb128 0x20
	.string	"reserved_AC0"
	.byte	0x8
	.uahalf	0x27f
	.uaword	0x42ca
	.uahalf	0xac0
	.uleb128 0x20
	.string	"DSADC"
	.byte	0x8
	.uahalf	0x280
	.uaword	0x35d9
	.uahalf	0xb50
	.uleb128 0x20
	.string	"reserved_B80"
	.byte	0x8
	.uahalf	0x281
	.uaword	0x2c0b
	.uahalf	0xb80
	.uleb128 0x20
	.string	"ERAY"
	.byte	0x8
	.uahalf	0x282
	.uaword	0x3688
	.uahalf	0xbe0
	.uleb128 0x20
	.string	"PMU"
	.byte	0x8
	.uahalf	0x283
	.uaword	0x3a96
	.uahalf	0xc30
	.uleb128 0x20
	.string	"reserved_C38"
	.byte	0x8
	.uahalf	0x284
	.uaword	0x42da
	.uahalf	0xc38
	.uleb128 0x20
	.string	"HSM"
	.byte	0x8
	.uahalf	0x285
	.uaword	0x38e2
	.uahalf	0xcc0
	.uleb128 0x20
	.string	"reserved_CC8"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x22b6
	.uahalf	0xcc8
	.uleb128 0x20
	.string	"SCU"
	.byte	0x8
	.uahalf	0x287
	.uaword	0x3bdd
	.uahalf	0xcd0
	.uleb128 0x20
	.string	"reserved_CE4"
	.byte	0x8
	.uahalf	0x288
	.uaword	0x42ea
	.uahalf	0xce4
	.uleb128 0x20
	.string	"SMU"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x3c88
	.uahalf	0xd10
	.uleb128 0x20
	.string	"reserved_D1C"
	.byte	0x8
	.uahalf	0x28a
	.uaword	0x4269
	.uahalf	0xd1c
	.uleb128 0x20
	.string	"PSI5"
	.byte	0x8
	.uahalf	0x28b
	.uaword	0x3aec
	.uahalf	0xd30
	.uleb128 0x20
	.string	"reserved_D50"
	.byte	0x8
	.uahalf	0x28c
	.uaword	0x4299
	.uahalf	0xd50
	.uleb128 0x20
	.string	"DAM"
	.byte	0x8
	.uahalf	0x28d
	.uaword	0x352c
	.uahalf	0xd70
	.uleb128 0x20
	.string	"reserved_D88"
	.byte	0x8
	.uahalf	0x28e
	.uaword	0x2306
	.uahalf	0xd88
	.uleb128 0x20
	.string	"CIF"
	.byte	0x8
	.uahalf	0x28f
	.uaword	0x3484
	.uahalf	0xda0
	.uleb128 0x20
	.string	"reserved_DB0"
	.byte	0x8
	.uahalf	0x290
	.uaword	0x2ca0
	.uahalf	0xdb0
	.uleb128 0x20
	.string	"LMU"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x39ee
	.uahalf	0xde0
	.uleb128 0x20
	.string	"reserved_DE4"
	.byte	0x8
	.uahalf	0x292
	.uaword	0x2316
	.uahalf	0xde4
	.uleb128 0x20
	.string	"PSI5S"
	.byte	0x8
	.uahalf	0x293
	.uaword	0x3b45
	.uahalf	0xdf0
	.uleb128 0x20
	.string	"reserved_E10"
	.byte	0x8
	.uahalf	0x294
	.uaword	0x42fa
	.uahalf	0xe10
	.uleb128 0x20
	.string	"GPSR"
	.byte	0x8
	.uahalf	0x295
	.uaword	0x3787
	.uahalf	0x1000
	.uleb128 0x20
	.string	"reserved_1060"
	.byte	0x8
	.uahalf	0x296
	.uaword	0x430b
	.uahalf	0x1060
	.uleb128 0x20
	.string	"GTM"
	.byte	0x8
	.uahalf	0x297
	.uaword	0x3837
	.uahalf	0x1600
	.uleb128 0x20
	.string	"reserved_1F50"
	.byte	0x8
	.uahalf	0x298
	.uaword	0x431c
	.uahalf	0x1f50
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x4279
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x13
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x4289
	.uleb128 0x16
	.uaword	0x220b
	.byte	0xdf
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x4299
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x67
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x42a9
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x42b9
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3b
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x42ca
	.uleb128 0x1e
	.uaword	0x220b
	.uahalf	0x2ef
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x42da
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x8f
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x42ea
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x87
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x42fa
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x2b
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x430b
	.uleb128 0x1e
	.uaword	0x220b
	.uahalf	0x1ef
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x431c
	.uleb128 0x1e
	.uaword	0x220b
	.uahalf	0x59f
	.byte	0
	.uleb128 0x15
	.uaword	0x1eb
	.uaword	0x432c
	.uleb128 0x16
	.uaword	0x220b
	.byte	0xaf
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SRC"
	.byte	0x8
	.uahalf	0x299
	.uaword	0x433c
	.uleb128 0x13
	.uaword	0x3dd4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2217
	.uleb128 0x17
	.byte	0x1
	.byte	0x2
	.byte	0x5b
	.uaword	0x442b
	.uleb128 0x18
	.string	"IfxAsclin_ClockSource_noClock"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxAsclin_ClockSource_kernelClock"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxAsclin_ClockSource_oscillatorClock"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxAsclin_ClockSource_flexRayClock"
	.sleb128 4
	.uleb128 0x18
	.string	"IfxAsclin_ClockSource_ascFastClock"
	.sleb128 8
	.uleb128 0x18
	.string	"IfxAsclin_ClockSource_ascSlowClock"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_ClockSource"
	.byte	0x2
	.byte	0x62
	.uaword	0x4347
	.uleb128 0x17
	.byte	0x1
	.byte	0x2
	.byte	0xd1
	.uaword	0x4605
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_4"
	.sleb128 3
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_5"
	.sleb128 4
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_6"
	.sleb128 5
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_7"
	.sleb128 6
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_8"
	.sleb128 7
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_9"
	.sleb128 8
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_10"
	.sleb128 9
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_11"
	.sleb128 10
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_12"
	.sleb128 11
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_13"
	.sleb128 12
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_14"
	.sleb128 13
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_15"
	.sleb128 14
	.uleb128 0x18
	.string	"IfxAsclin_OversamplingFactor_16"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_OversamplingFactor"
	.byte	0x2
	.byte	0xdf
	.uaword	0x4448
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x131
	.uaword	0x4837
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_1"
	.sleb128 1
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_2"
	.sleb128 2
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_3"
	.sleb128 3
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_4"
	.sleb128 4
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_5"
	.sleb128 5
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_6"
	.sleb128 6
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_7"
	.sleb128 7
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_8"
	.sleb128 8
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_9"
	.sleb128 9
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_10"
	.sleb128 10
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_11"
	.sleb128 11
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_12"
	.sleb128 12
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_13"
	.sleb128 13
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_14"
	.sleb128 14
	.uleb128 0x18
	.string	"IfxAsclin_SamplePointPosition_15"
	.sleb128 15
	.byte	0
	.uleb128 0xe
	.string	"IfxAsclin_SamplePointPosition"
	.byte	0x2
	.uahalf	0x141
	.uaword	0x4629
	.uleb128 0x21
	.byte	0x1
	.byte	0x2
	.uahalf	0x147
	.uaword	0x48a5
	.uleb128 0x18
	.string	"IfxAsclin_SamplesPerBit_one"
	.sleb128 0
	.uleb128 0x18
	.string	"IfxAsclin_SamplesPerBit_three"
	.sleb128 1
	.byte	0
	.uleb128 0xe
	.string	"IfxAsclin_SamplesPerBit"
	.byte	0x2
	.uahalf	0x14a
	.uaword	0x485d
	.uleb128 0x22
	.string	"IfxAsclin_setDisableModuleRequest"
	.byte	0x2
	.uahalf	0x8a7
	.byte	0x1
	.byte	0x3
	.uaword	0x48fe
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x8a7
	.uaword	0x4341
	.byte	0
	.uleb128 0x22
	.string	"IfxAsclin_enableParityErrorFlag"
	.byte	0x2
	.uahalf	0x70c
	.byte	0x1
	.byte	0x3
	.uaword	0x4944
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x70c
	.uaword	0x4341
	.uleb128 0x24
	.string	"enable"
	.byte	0x2
	.uahalf	0x70c
	.uaword	0x262
	.byte	0
	.uleb128 0x22
	.string	"IfxAsclin_enableRxFifoOverflowFlag"
	.byte	0x2
	.uahalf	0x72a
	.byte	0x1
	.byte	0x3
	.uaword	0x498d
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x72a
	.uaword	0x4341
	.uleb128 0x24
	.string	"enable"
	.byte	0x2
	.uahalf	0x72a
	.uaword	0x262
	.byte	0
	.uleb128 0x22
	.string	"IfxAsclin_setEnableModuleRequest"
	.byte	0x2
	.uahalf	0x8ad
	.byte	0x1
	.byte	0x3
	.uaword	0x49c5
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x8ad
	.uaword	0x4341
	.byte	0
	.uleb128 0x25
	.string	"IfxAsclin_getClockSource"
	.byte	0x2
	.uahalf	0x778
	.byte	0x1
	.uaword	0x1de
	.byte	0x3
	.uaword	0x49f9
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x778
	.uaword	0x4341
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxAsclin_getPdFrequency"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x249
	.byte	0x1
	.uaword	0x4a2c
	.uleb128 0x27
	.uaword	.LASF16
	.byte	0x1
	.byte	0x89
	.uaword	0x4341
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxAsclin_getIndex"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	0x229f
	.byte	0x1
	.uaword	0x4a74
	.uleb128 0x27
	.uaword	.LASF16
	.byte	0x1
	.byte	0x6f
	.uaword	0x4341
	.uleb128 0x28
	.string	"index"
	.byte	0x1
	.byte	0x71
	.uaword	0x23b
	.uleb128 0x28
	.string	"result"
	.byte	0x1
	.byte	0x72
	.uaword	0x229f
	.byte	0
	.uleb128 0x25
	.string	"IfxAsclin_getClockStatus"
	.byte	0x2
	.uahalf	0x77e
	.byte	0x1
	.uaword	0x262
	.byte	0x3
	.uaword	0x4aa8
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x77e
	.uaword	0x4341
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxAsclin_setClockSource"
	.byte	0x1
	.uahalf	0x153
	.byte	0x1
	.byte	0x1
	.uaword	0x4ae5
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x153
	.uaword	0x4341
	.uleb128 0x23
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x153
	.uaword	0x442b
	.byte	0
	.uleb128 0x22
	.string	"IfxAsclin_setPrescaler"
	.byte	0x2
	.uahalf	0x90d
	.byte	0x1
	.byte	0x3
	.uaword	0x4b1f
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x90d
	.uaword	0x4341
	.uleb128 0x23
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x90d
	.uaword	0x209
	.byte	0
	.uleb128 0x22
	.string	"IfxAsclin_setNumerator"
	.byte	0x2
	.uahalf	0x8fb
	.byte	0x1
	.byte	0x3
	.uaword	0x4b59
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x8fb
	.uaword	0x4341
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x8fb
	.uaword	0x209
	.byte	0
	.uleb128 0x22
	.string	"IfxAsclin_setDenominator"
	.byte	0x2
	.uahalf	0x8a1
	.byte	0x1
	.byte	0x3
	.uaword	0x4b95
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x8a1
	.uaword	0x4341
	.uleb128 0x23
	.uaword	.LASF20
	.byte	0x2
	.uahalf	0x8a1
	.uaword	0x209
	.byte	0
	.uleb128 0x22
	.string	"IfxAsclin_setOversampling"
	.byte	0x2
	.uahalf	0x901
	.byte	0x1
	.byte	0x3
	.uaword	0x4bd8
	.uleb128 0x23
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x901
	.uaword	0x4341
	.uleb128 0x24
	.string	"ovsFactor"
	.byte	0x2
	.uahalf	0x901
	.uaword	0x4605
	.byte	0
	.uleb128 0x2a
	.string	"__maxu"
	.byte	0x3
	.byte	0x94
	.byte	0x1
	.uaword	0x23b
	.byte	0x3
	.uaword	0x4c0a
	.uleb128 0x2b
	.string	"a"
	.byte	0x3
	.byte	0x94
	.uaword	0x23b
	.uleb128 0x2b
	.string	"b"
	.byte	0x3
	.byte	0x94
	.uaword	0x23b
	.uleb128 0x28
	.string	"res"
	.byte	0x3
	.byte	0x96
	.uaword	0x23b
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"IfxAsclin_disableModule"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	.LFB383
	.uaword	.LFE383
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4c9e
	.uleb128 0x2d
	.uaword	.LASF16
	.byte	0x1
	.byte	0x23
	.uaword	0x4341
	.uaword	.LLST0
	.uleb128 0x2e
	.string	"psw"
	.byte	0x1
	.byte	0x25
	.uaword	0x209
	.uaword	.LLST1
	.uleb128 0x2f
	.uaword	0x48c5
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x27
	.uaword	0x4c6f
	.uleb128 0x30
	.uaword	0x48f1
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x31
	.uaword	.LVL1
	.uaword	0x5a64
	.uleb128 0x32
	.uaword	.LVL3
	.uaword	0x5a90
	.uaword	0x4c8c
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x5aba
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"IfxAsclin_enableAscErrorFlags"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.uaword	.LFB384
	.uaword	.LFE384
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4d48
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.byte	0x2c
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x36
	.string	"parEnable"
	.byte	0x1
	.byte	0x2c
	.uaword	0x262
	.uaword	.LLST2
	.uleb128 0x36
	.string	"rfoEnable"
	.byte	0x1
	.byte	0x2c
	.uaword	0x262
	.uaword	.LLST3
	.uleb128 0x2f
	.uaword	0x48fe
	.uaword	.LBB70
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x2e
	.uaword	0x4d2b
	.uleb128 0x37
	.uaword	0x4934
	.uaword	.LLST2
	.uleb128 0x30
	.uaword	0x4928
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.uaword	0x4944
	.uaword	.LBB73
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x2f
	.uleb128 0x39
	.uaword	0x497d
	.uleb128 0x30
	.uaword	0x4971
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"IfxAsclin_enableModule"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB385
	.uaword	.LFE385
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ddb
	.uleb128 0x2d
	.uaword	.LASF16
	.byte	0x1
	.byte	0x33
	.uaword	0x4341
	.uaword	.LLST5
	.uleb128 0x2e
	.string	"psw"
	.byte	0x1
	.byte	0x35
	.uaword	0x209
	.uaword	.LLST6
	.uleb128 0x2f
	.uaword	0x498d
	.uaword	.LBB78
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x37
	.uaword	0x4dac
	.uleb128 0x30
	.uaword	0x49b8
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x31
	.uaword	.LVL10
	.uaword	0x5a64
	.uleb128 0x32
	.uaword	.LVL12
	.uaword	0x5a90
	.uaword	0x4dc9
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x5aba
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_getAddress"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x4341
	.uaword	.LFB386
	.uaword	.LFE386
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4e26
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.byte	0x3c
	.uaword	0x229f
	.byte	0x1
	.byte	0x54
	.uleb128 0x3b
	.string	"module"
	.byte	0x1
	.byte	0x3e
	.uaword	0x4341
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_getFaFrequency"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	0x249
	.uaword	.LFB387
	.uaword	.LFE387
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ed6
	.uleb128 0x2d
	.uaword	.LASF16
	.byte	0x1
	.byte	0x4d
	.uaword	0x4341
	.uaword	.LLST7
	.uleb128 0x2e
	.string	"frequency"
	.byte	0x1
	.byte	0x4f
	.uaword	0x249
	.uaword	.LLST8
	.uleb128 0x3c
	.uaword	.LASF17
	.byte	0x1
	.byte	0x50
	.uaword	0x442b
	.uleb128 0x3d
	.uaword	0x49c5
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.byte	0x50
	.uaword	0x4ea3
	.uleb128 0x37
	.uaword	0x49ec
	.uaword	.LLST7
	.byte	0
	.uleb128 0x3e
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x5ae2
	.uleb128 0x3e
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x5b09
	.uleb128 0x3e
	.uaword	.LVL21
	.byte	0x1
	.uaword	0x5b2e
	.uleb128 0x3e
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x5b54
	.uleb128 0x3e
	.uaword	.LVL23
	.byte	0x1
	.uaword	0x5b7d
	.byte	0
	.uleb128 0x3f
	.uaword	0x4a2c
	.uaword	.LFB388
	.uaword	.LFE388
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f04
	.uleb128 0x30
	.uaword	0x4a4d
	.byte	0x1
	.byte	0x64
	.uleb128 0x40
	.uaword	0x4a58
	.uaword	.LLST10
	.uleb128 0x40
	.uaword	0x4a65
	.uaword	.LLST11
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_getOvsFrequency"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	0x249
	.uaword	.LFB389
	.uaword	.LFE389
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f6f
	.uleb128 0x2d
	.uaword	.LASF16
	.byte	0x1
	.byte	0x83
	.uaword	0x4341
	.uaword	.LLST12
	.uleb128 0x38
	.uaword	0x49f9
	.uaword	.LBB84
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x85
	.uleb128 0x37
	.uaword	0x4a20
	.uaword	.LLST13
	.uleb128 0x41
	.uaword	.LVL32
	.uaword	0x4e26
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0x49f9
	.uaword	.LFB390
	.uaword	.LFE390
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f9d
	.uleb128 0x37
	.uaword	0x4a20
	.uaword	.LLST14
	.uleb128 0x41
	.uaword	.LVL34
	.uaword	0x4e26
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_getShiftFrequency"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x249
	.uaword	.LFB391
	.uaword	.LFE391
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ff1
	.uleb128 0x2d
	.uaword	.LASF16
	.byte	0x1
	.byte	0x8f
	.uaword	0x4341
	.uaword	.LLST15
	.uleb128 0x41
	.uaword	.LVL36
	.uaword	0x4f04
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerEr"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	0x5064
	.uaword	.LFB392
	.uaword	.LFE392
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5064
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.byte	0x95
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.uaword	0x4a2c
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.byte	0x97
	.uleb128 0x30
	.uaword	0x4a4d
	.byte	0x1
	.byte	0x64
	.uleb128 0x43
	.uaword	.LBB93
	.uaword	.LBE93
	.uleb128 0x40
	.uaword	0x4a58
	.uaword	.LLST16
	.uleb128 0x40
	.uaword	0x4a65
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x506a
	.uleb128 0x13
	.uaword	0x2491
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerRx"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	0x5064
	.uaword	.LFB393
	.uaword	.LFE393
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x50e2
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.byte	0x9b
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.uaword	0x4a2c
	.uaword	.LBB94
	.uaword	.LBE94
	.byte	0x1
	.byte	0x9d
	.uleb128 0x30
	.uaword	0x4a4d
	.byte	0x1
	.byte	0x64
	.uleb128 0x43
	.uaword	.LBB95
	.uaword	.LBE95
	.uleb128 0x40
	.uaword	0x4a58
	.uaword	.LLST18
	.uleb128 0x40
	.uaword	0x4a65
	.uaword	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerTx"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	0x5064
	.uaword	.LFB394
	.uaword	.LFE394
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5155
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.byte	0xa1
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.uaword	0x4a2c
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.byte	0xa3
	.uleb128 0x30
	.uaword	0x4a4d
	.byte	0x1
	.byte	0x64
	.uleb128 0x43
	.uaword	.LBB97
	.uaword	.LBE97
	.uleb128 0x40
	.uaword	0x4a58
	.uaword	.LLST20
	.uleb128 0x40
	.uaword	0x4a65
	.uaword	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_read16"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0x23b
	.uaword	.LFB395
	.uaword	.LFE395
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x51ba
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.byte	0xa7
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.uaword	.LASF21
	.byte	0x1
	.byte	0xa7
	.uaword	0x51ba
	.uaword	.LLST22
	.uleb128 0x2d
	.uaword	.LASF22
	.byte	0x1
	.byte	0xa7
	.uaword	0x23b
	.uaword	.LLST23
	.uleb128 0x44
	.uaword	.LASF23
	.byte	0x1
	.byte	0xa9
	.uaword	0x51c0
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x209
	.uleb128 0x4
	.byte	0x4
	.uaword	0x51c6
	.uleb128 0x13
	.uaword	0x1eb9
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_read32"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.uaword	0x23b
	.uaword	.LFB396
	.uaword	.LFE396
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5230
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.byte	0xb5
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.uaword	.LASF21
	.byte	0x1
	.byte	0xb5
	.uaword	0x5230
	.uaword	.LLST24
	.uleb128 0x2d
	.uaword	.LASF22
	.byte	0x1
	.byte	0xb5
	.uaword	0x23b
	.uaword	.LLST25
	.uleb128 0x44
	.uaword	.LASF23
	.byte	0x1
	.byte	0xb7
	.uaword	0x51c0
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23b
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxAsclin_read8"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.uaword	0x23b
	.uaword	.LFB397
	.uaword	.LFE397
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x529a
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.byte	0xc3
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.uaword	.LASF21
	.byte	0x1
	.byte	0xc3
	.uaword	0x529a
	.uaword	.LLST26
	.uleb128 0x2d
	.uaword	.LASF22
	.byte	0x1
	.byte	0xc3
	.uaword	0x23b
	.uaword	.LLST27
	.uleb128 0x44
	.uaword	.LASF23
	.byte	0x1
	.byte	0xc5
	.uaword	0x51c0
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1de
	.uleb128 0x2c
	.byte	0x1
	.string	"IfxAsclin_resetModule"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.uaword	.LFB398
	.uaword	.LFE398
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5342
	.uleb128 0x2d
	.uaword	.LASF16
	.byte	0x1
	.byte	0xd1
	.uaword	0x4341
	.uaword	.LLST28
	.uleb128 0x2e
	.string	"passwd"
	.byte	0x1
	.byte	0xd3
	.uaword	0x209
	.uaword	.LLST29
	.uleb128 0x31
	.uaword	.LVL67
	.uaword	0x5a64
	.uleb128 0x32
	.uaword	.LVL69
	.uaword	0x5a90
	.uaword	0x5308
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL70
	.uaword	0x5aba
	.uaword	0x531c
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL71
	.uaword	0x5a90
	.uaword	0x5330
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL72
	.byte	0x1
	.uaword	0x5aba
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"IfxAsclin_setBaudrateBitFields"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	.LFB399
	.uaword	.LFE399
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5502
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.byte	0xe4
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.uaword	.LASF18
	.byte	0x1
	.byte	0xe4
	.uaword	0x209
	.uaword	.LLST30
	.uleb128 0x2d
	.uaword	.LASF19
	.byte	0x1
	.byte	0xe4
	.uaword	0x209
	.uaword	.LLST31
	.uleb128 0x2d
	.uaword	.LASF20
	.byte	0x1
	.byte	0xe4
	.uaword	0x209
	.uaword	.LLST32
	.uleb128 0x2d
	.uaword	.LASF24
	.byte	0x1
	.byte	0xe4
	.uaword	0x4605
	.uaword	.LLST33
	.uleb128 0x3c
	.uaword	.LASF17
	.byte	0x1
	.byte	0xe6
	.uaword	0x442b
	.uleb128 0x2f
	.uaword	0x49c5
	.uaword	.LBB98
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xe6
	.uaword	0x53e4
	.uleb128 0x30
	.uaword	0x49ec
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2f
	.uaword	0x4aa8
	.uaword	.LBB101
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xe7
	.uaword	0x541d
	.uleb128 0x45
	.uaword	0x4ad8
	.byte	0
	.uleb128 0x30
	.uaword	0x4acc
	.byte	0x1
	.byte	0x64
	.uleb128 0x46
	.uaword	0x4a74
	.uaword	.LBB103
	.uaword	.LBE103
	.byte	0x1
	.uahalf	0x15a
	.uleb128 0x30
	.uaword	0x4a9b
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x4ae5
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.byte	0xe8
	.uaword	0x5441
	.uleb128 0x37
	.uaword	0x4b12
	.uaword	.LLST34
	.uleb128 0x30
	.uaword	0x4b06
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3d
	.uaword	0x4b1f
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0xe9
	.uaword	0x5465
	.uleb128 0x37
	.uaword	0x4b4c
	.uaword	.LLST35
	.uleb128 0x30
	.uaword	0x4b40
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3d
	.uaword	0x4b59
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0xea
	.uaword	0x5489
	.uleb128 0x37
	.uaword	0x4b88
	.uaword	.LLST36
	.uleb128 0x30
	.uaword	0x4b7c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3d
	.uaword	0x4b95
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0xeb
	.uaword	0x54ad
	.uleb128 0x37
	.uaword	0x4bc5
	.uaword	.LLST37
	.uleb128 0x30
	.uaword	0x4bb9
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x42
	.uaword	0x4aa8
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.byte	0xec
	.uleb128 0x30
	.uaword	0x4ad8
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.uaword	0x4acc
	.byte	0x1
	.byte	0x64
	.uleb128 0x47
	.uaword	0x4a74
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x54e8
	.uleb128 0x37
	.uaword	0x4a9b
	.uaword	.LLST38
	.byte	0
	.uleb128 0x46
	.uaword	0x4a74
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.uahalf	0x15f
	.uleb128 0x30
	.uaword	0x4a9b
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"IfxAsclin_setBitTiming"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.uaword	0x262
	.uaword	.LFB400
	.uaword	.LFE400
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5827
	.uleb128 0x2d
	.uaword	.LASF16
	.byte	0x1
	.byte	0xf0
	.uaword	0x4341
	.uaword	.LLST39
	.uleb128 0x36
	.string	"baudrate"
	.byte	0x1
	.byte	0xf0
	.uaword	0x249
	.uaword	.LLST40
	.uleb128 0x2d
	.uaword	.LASF24
	.byte	0x1
	.byte	0xf0
	.uaword	0x4605
	.uaword	.LLST41
	.uleb128 0x36
	.string	"samplepoint"
	.byte	0x1
	.byte	0xf0
	.uaword	0x4837
	.uaword	.LLST42
	.uleb128 0x36
	.string	"medianFilter"
	.byte	0x1
	.byte	0xf0
	.uaword	0x48a5
	.uaword	.LLST43
	.uleb128 0x28
	.string	"source"
	.byte	0x1
	.byte	0xf2
	.uaword	0x442b
	.uleb128 0x2e
	.string	"fOvs"
	.byte	0x1
	.byte	0xf3
	.uaword	0x249
	.uaword	.LLST44
	.uleb128 0x2e
	.string	"d"
	.byte	0x1
	.byte	0xf4
	.uaword	0x23b
	.uaword	.LLST45
	.uleb128 0x2e
	.string	"n"
	.byte	0x1
	.byte	0xf4
	.uaword	0x23b
	.uaword	.LLST46
	.uleb128 0x2e
	.string	"dBest"
	.byte	0x1
	.byte	0xf4
	.uaword	0x23b
	.uaword	.LLST47
	.uleb128 0x2e
	.string	"nBest"
	.byte	0x1
	.byte	0xf4
	.uaword	0x23b
	.uaword	.LLST48
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.byte	0xf5
	.uaword	0x249
	.uaword	.LLST49
	.uleb128 0x28
	.string	"fpd"
	.byte	0x1
	.byte	0xf8
	.uaword	0x249
	.uleb128 0x2e
	.string	"relError"
	.byte	0x1
	.byte	0xfc
	.uaword	0x249
	.uaword	.LLST50
	.uleb128 0x2e
	.string	"limit"
	.byte	0x1
	.byte	0xfd
	.uaword	0x249
	.uaword	.LLST51
	.uleb128 0x2e
	.string	"terminated"
	.byte	0x1
	.byte	0xff
	.uaword	0x262
	.uaword	.LLST52
	.uleb128 0x49
	.string	"newRelError"
	.byte	0x1
	.uahalf	0x100
	.uaword	0x249
	.uaword	.LLST53
	.uleb128 0x49
	.string	"adder_facL"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x23b
	.uaword	.LLST54
	.uleb128 0x49
	.string	"adder_facH"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x23b
	.uaword	.LLST55
	.uleb128 0x49
	.string	"adder_facL_min"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x23b
	.uaword	.LLST56
	.uleb128 0x4a
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x101
	.uaword	0x23b
	.uaword	.LLST57
	.uleb128 0x4b
	.string	"__func__"
	.uaword	0x5837
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.10191
	.uleb128 0x2f
	.uaword	0x49c5
	.uaword	.LBB122
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0xf2
	.uaword	0x56e2
	.uleb128 0x37
	.uaword	0x49ec
	.uaword	.LLST39
	.byte	0
	.uleb128 0x2f
	.uaword	0x49f9
	.uaword	.LBB126
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xf8
	.uaword	0x570f
	.uleb128 0x37
	.uaword	0x4a20
	.uaword	.LLST59
	.uleb128 0x41
	.uaword	.LVL90
	.uaword	0x4e26
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x4bd8
	.uaword	.LBB131
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0xf9
	.uaword	0x5741
	.uleb128 0x45
	.uaword	0x4bf5
	.byte	0x4
	.uleb128 0x37
	.uaword	0x4bec
	.uaword	.LLST60
	.uleb128 0x4c
	.uaword	.Ldebug_ranges0+0xf0
	.uleb128 0x40
	.uaword	0x4bfe
	.uaword	.LLST61
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x4bd8
	.uaword	.LBB136
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0xfa
	.uaword	0x5773
	.uleb128 0x45
	.uaword	0x4bf5
	.byte	0x1
	.uleb128 0x37
	.uaword	0x4bec
	.uaword	.LLST62
	.uleb128 0x4c
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x40
	.uaword	0x4bfe
	.uaword	.LLST63
	.byte	0
	.byte	0
	.uleb128 0x47
	.uaword	0x4aa8
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.uahalf	0x140
	.uaword	0x57b4
	.uleb128 0x37
	.uaword	0x4ad8
	.uaword	.LLST64
	.uleb128 0x37
	.uaword	0x4acc
	.uaword	.LLST65
	.uleb128 0x46
	.uaword	0x4a74
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x1
	.uahalf	0x15a
	.uleb128 0x37
	.uaword	0x4a9b
	.uaword	.LLST66
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	0x4aa8
	.uaword	.LBB144
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x5813
	.uleb128 0x37
	.uaword	0x4ad8
	.uaword	.LLST67
	.uleb128 0x37
	.uaword	0x4acc
	.uaword	.LLST68
	.uleb128 0x47
	.uaword	0x4a74
	.uaword	.LBB146
	.uaword	.LBE146
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x57f8
	.uleb128 0x37
	.uaword	0x4a9b
	.uaword	.LLST69
	.byte	0
	.uleb128 0x4e
	.uaword	0x4a74
	.uaword	.LBB148
	.uaword	.Ldebug_ranges0+0x140
	.byte	0x1
	.uahalf	0x15f
	.uleb128 0x37
	.uaword	0x4a9b
	.uaword	.LLST70
	.byte	0
	.byte	0
	.uleb128 0x41
	.uaword	.LVL140
	.uaword	0x5ba4
	.uleb128 0x33
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.10191
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x2b4
	.uaword	0x5837
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.uaword	0x5827
	.uleb128 0x3f
	.uaword	0x4aa8
	.uaword	.LFB401
	.uaword	.LFE401
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5895
	.uleb128 0x30
	.uaword	0x4acc
	.byte	0x1
	.byte	0x64
	.uleb128 0x30
	.uaword	0x4ad8
	.byte	0x1
	.byte	0x54
	.uleb128 0x47
	.uaword	0x4a74
	.uaword	.LBB156
	.uaword	.LBE156
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x587c
	.uleb128 0x37
	.uaword	0x4a9b
	.uaword	.LLST71
	.byte	0
	.uleb128 0x46
	.uaword	0x4a74
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.uahalf	0x15f
	.uleb128 0x30
	.uaword	0x4a9b
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxAsclin_write16"
	.byte	0x1
	.uahalf	0x165
	.byte	0x1
	.uaword	0x23b
	.uaword	.LFB402
	.uaword	.LFE402
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5900
	.uleb128 0x50
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x165
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x51
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x165
	.uaword	0x51ba
	.uaword	.LLST72
	.uleb128 0x51
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x165
	.uaword	0x23b
	.uaword	.LLST73
	.uleb128 0x52
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x167
	.uaword	0x5900
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5906
	.uleb128 0x13
	.uaword	0x1f83
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxAsclin_write32"
	.byte	0x1
	.uahalf	0x173
	.byte	0x1
	.uaword	0x23b
	.uaword	.LFB403
	.uaword	.LFE403
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5976
	.uleb128 0x50
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x173
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x51
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x173
	.uaword	0x5230
	.uaword	.LLST74
	.uleb128 0x51
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x173
	.uaword	0x23b
	.uaword	.LLST75
	.uleb128 0x52
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x175
	.uaword	0x5900
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxAsclin_write8"
	.byte	0x1
	.uahalf	0x181
	.byte	0x1
	.uaword	0x23b
	.uaword	.LFB404
	.uaword	.LFE404
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x59e0
	.uleb128 0x50
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x181
	.uaword	0x4341
	.byte	0x1
	.byte	0x64
	.uleb128 0x51
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x181
	.uaword	0x529a
	.uaword	.LLST76
	.uleb128 0x51
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x181
	.uaword	0x23b
	.uaword	.LLST77
	.uleb128 0x52
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x183
	.uaword	0x5900
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.uaword	0x2e9
	.uaword	0x59f0
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x3
	.byte	0
	.uleb128 0x53
	.string	"IfxAsclin_cfg_indexMap"
	.byte	0x7
	.byte	0x49
	.uaword	0x5a10
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x59e0
	.uleb128 0x15
	.uaword	0x2e9
	.uaword	0x5a25
	.uleb128 0x16
	.uaword	0x220b
	.byte	0x2
	.byte	0
	.uleb128 0x53
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0x96
	.uaword	0x5a42
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x5a15
	.uleb128 0x53
	.string	"Assert_verboseLevel"
	.byte	0xa
	.byte	0x79
	.uaword	0x23b
	.byte	0x1
	.byte	0x1
	.uleb128 0x54
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xb
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x209
	.byte	0x1
	.uleb128 0x55
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xb
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x5aba
	.uleb128 0x56
	.uaword	0x209
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xb
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x5ae2
	.uleb128 0x56
	.uaword	0x209
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0xc
	.uahalf	0x34c
	.byte	0x1
	.uaword	0x249
	.byte	0x1
	.uleb128 0x54
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0xc
	.uahalf	0x3a0
	.byte	0x1
	.uaword	0x249
	.byte	0x1
	.uleb128 0x54
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0xc
	.uahalf	0x376
	.byte	0x1
	.uaword	0x249
	.byte	0x1
	.uleb128 0x54
	.byte	0x1
	.string	"IfxScuCcu_getPllErayFrequency"
	.byte	0xc
	.uahalf	0x382
	.byte	0x1
	.uaword	0x249
	.byte	0x1
	.uleb128 0x54
	.byte	0x1
	.string	"IfxScuCcu_getBaud1Frequency"
	.byte	0xc
	.uahalf	0x346
	.byte	0x1
	.uaword	0x249
	.byte	0x1
	.uleb128 0x57
	.byte	0x1
	.string	"Ifx_Assert_doLevel"
	.byte	0xa
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uleb128 0x56
	.uaword	0x1de
	.uleb128 0x56
	.uaword	0x29c
	.uleb128 0x56
	.uaword	0x29c
	.uleb128 0x56
	.uaword	0x197
	.uleb128 0x56
	.uaword	0x29c
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE383
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3-1
	.uaword	.LFE383
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE384
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LFE384
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LFE385
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12-1
	.uaword	.LFE385
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LFE387
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE388
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE388
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL30
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32-1
	.uaword	.LFE389
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL31
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32-1
	.uaword	.LFE389
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL34-1
	.uaword	.LFE390
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL36-1
	.uaword	.LFE391
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LFE395
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE396
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL67-1
	.uaword	.LFE398
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69-1
	.uaword	.LFE398
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL73
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LFE399
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL73
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL80
	.uaword	.LFE399
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL73
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL82
	.uaword	.LFE399
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL73
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL84
	.uaword	.LFE399
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL90-1
	.uaword	.LFE400
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL90-1
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL103
	.uaword	.LFE400
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL90-1
	.uaword	.LVL93
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL139
	.uaword	.LFE400
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL90-1
	.uaword	.LVL96
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL139
	.uaword	.LFE400
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL90-1
	.uaword	.LFE400
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL97-1
	.uaword	.LFE400
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL89
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LVL139
	.uahalf	0xd
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x18e
	.byte	0xf5
	.uleb128 0xd
	.uleb128 0x18e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x197
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LVL140-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL140-1
	.uaword	.LFE400
	.uahalf	0xd
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x18e
	.byte	0xf5
	.uleb128 0xd
	.uleb128 0x18e
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x197
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL102
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL139
	.uaword	.LFE400
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL89
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL110
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL139
	.uaword	.LFE400
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL89
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL123
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL139
	.uaword	.LFE400
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x18e
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x197
	.byte	0xf7
	.uleb128 0x18e
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL106
	.uaword	.LVL110
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x18e
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x197
	.byte	0xf7
	.uleb128 0x18e
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18e
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x197
	.byte	0xf7
	.uleb128 0x18e
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL117
	.uaword	.LVL124
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18e
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x197
	.byte	0xf7
	.uleb128 0x18e
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL97-1
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL107
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL123
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL139
	.uaword	.LFE400
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL101
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL109
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL126
	.uaword	.LFE400
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL100
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LFE400
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL118
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL112
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL104
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL123
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL113
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL120
	.uaword	.LVL123
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL89
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL90-1
	.uaword	.LFE400
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL91
	.uaword	.LVL110
	.uahalf	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LFE400
	.uahalf	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL92
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL130
	.uaword	.LVL139
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL130
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL131
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL135
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL135
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LFE402
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL149
	.uaword	.LFE403
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL151
	.uaword	.LVL153
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL151
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xc4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.uaword	.LFB384
	.uaword	.LFE384-.LFB384
	.uaword	.LFB385
	.uaword	.LFE385-.LFB385
	.uaword	.LFB386
	.uaword	.LFE386-.LFB386
	.uaword	.LFB387
	.uaword	.LFE387-.LFB387
	.uaword	.LFB388
	.uaword	.LFE388-.LFB388
	.uaword	.LFB389
	.uaword	.LFE389-.LFB389
	.uaword	.LFB390
	.uaword	.LFE390-.LFB390
	.uaword	.LFB391
	.uaword	.LFE391-.LFB391
	.uaword	.LFB392
	.uaword	.LFE392-.LFB392
	.uaword	.LFB393
	.uaword	.LFE393-.LFB393
	.uaword	.LFB394
	.uaword	.LFE394-.LFB394
	.uaword	.LFB395
	.uaword	.LFE395-.LFB395
	.uaword	.LFB396
	.uaword	.LFE396-.LFB396
	.uaword	.LFB397
	.uaword	.LFE397-.LFB397
	.uaword	.LFB398
	.uaword	.LFE398-.LFB398
	.uaword	.LFB399
	.uaword	.LFE399-.LFB399
	.uaword	.LFB400
	.uaword	.LFE400-.LFB400
	.uaword	.LFB401
	.uaword	.LFE401-.LFB401
	.uaword	.LFB402
	.uaword	.LFE402-.LFB402
	.uaword	.LFB403
	.uaword	.LFE403-.LFB403
	.uaword	.LFB404
	.uaword	.LFE404-.LFB404
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0
	.uaword	0
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	0
	.uaword	0
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	0
	.uaword	0
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	0
	.uaword	0
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	.LBB125
	.uaword	.LBE125
	.uaword	0
	.uaword	0
	.uaword	.LBB126
	.uaword	.LBE126
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	0
	.uaword	0
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	0
	.uaword	0
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	.LBB139
	.uaword	.LBE139
	.uaword	0
	.uaword	0
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB154
	.uaword	.LBE154
	.uaword	.LBB155
	.uaword	.LBE155
	.uaword	0
	.uaword	0
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	0
	.uaword	0
	.uaword	.LFB383
	.uaword	.LFE383
	.uaword	.LFB384
	.uaword	.LFE384
	.uaword	.LFB385
	.uaword	.LFE385
	.uaword	.LFB386
	.uaword	.LFE386
	.uaword	.LFB387
	.uaword	.LFE387
	.uaword	.LFB388
	.uaword	.LFE388
	.uaword	.LFB389
	.uaword	.LFE389
	.uaword	.LFB390
	.uaword	.LFE390
	.uaword	.LFB391
	.uaword	.LFE391
	.uaword	.LFB392
	.uaword	.LFE392
	.uaword	.LFB393
	.uaword	.LFE393
	.uaword	.LFB394
	.uaword	.LFE394
	.uaword	.LFB395
	.uaword	.LFE395
	.uaword	.LFB396
	.uaword	.LFE396
	.uaword	.LFB397
	.uaword	.LFE397
	.uaword	.LFB398
	.uaword	.LFE398
	.uaword	.LFB399
	.uaword	.LFE399
	.uaword	.LFB400
	.uaword	.LFE400
	.uaword	.LFB401
	.uaword	.LFE401
	.uaword	.LFB402
	.uaword	.LFE402
	.uaword	.LFB403
	.uaword	.LFE403
	.uaword	.LFB404
	.uaword	.LFE404
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"reserved_29"
.LASF24:
	.string	"oversampling"
.LASF0:
	.string	"reserved_0"
.LASF10:
	.string	"reserved_1"
.LASF3:
	.string	"reserved_2"
.LASF6:
	.string	"reserved_7"
.LASF12:
	.string	"INTLEVEL"
.LASF19:
	.string	"numerator"
.LASF14:
	.string	"reserved_4C"
.LASF4:
	.string	"reserved_4"
.LASF18:
	.string	"prescaler"
.LASF16:
	.string	"asclin"
.LASF11:
	.string	"reserved_8"
.LASF15:
	.string	"CERBERUS"
.LASF9:
	.string	"reserved_10"
.LASF1:
	.string	"reserved_12"
.LASF21:
	.string	"data"
.LASF8:
	.string	"reserved_18"
.LASF22:
	.string	"count"
.LASF17:
	.string	"clockSource"
.LASF25:
	.string	"txData"
.LASF23:
	.string	"rxData"
.LASF20:
	.string	"denominator"
.LASF13:
	.string	"reserved_21"
.LASF5:
	.string	"reserved_24"
.LASF2:
	.string	"reserved_28"
	.extern	Ifx_Assert_doLevel,STT_FUNC,0
	.extern	Assert_verboseLevel,STT_OBJECT,4
	.extern	IfxScuCcu_getBaud1Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getPllErayFrequency,STT_FUNC,0
	.extern	IfxScuCcu_getOsc0Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getSpbFrequency,STT_FUNC,0
	.extern	IfxScuCcu_getBaud2Frequency,STT_FUNC,0
	.extern	IfxAsclin_cfg_indexMap,STT_OBJECT,32
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
