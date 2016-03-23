.class Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;
.source "ScriptIntrinsicConvolve3x3Thunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 31
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;
    .registers 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 34
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    move-object v0, p1

    .line 35
    check-cast v0, Landroid/support/v8/renderscript/ElementThunker;

    .line 37
    .local v0, "et":Landroid/support/v8/renderscript/ElementThunker;
    new-instance v3, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 39
    .local v3, "si":Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;
    :try_start_c
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    :try_end_18
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_c .. :try_end_18} :catch_19

    .line 43
    return-object v3

    .line 40
    :catch_19
    move-exception v1

    .line 41
    .local v1, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .registers 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 64
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .line 66
    .local v0, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_3
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(Landroid/renderscript/Allocation;)V
    :try_end_c
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_c} :catch_d

    .line 71
    return-void

    .line 67
    :catch_d
    move-exception v1

    .line 68
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .registers 5

    .prologue
    .line 84
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v1

    .line 86
    .local v1, "f":Landroid/support/v8/renderscript/Script$FieldID;
    :try_start_6
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->getFieldID_Input()Landroid/renderscript/Script$FieldID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;
    :try_end_e
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_e} :catch_f

    .line 90
    return-object v1

    .line 87
    :catch_f
    move-exception v0

    .line 88
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 74
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 76
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_f
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    .line 80
    return-object v1

    .line 77
    :catch_10
    move-exception v0

    .line 78
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->getNObj()Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->getNObj()Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    return-object v0
.end method

.method public setCoefficients([F)V
    .registers 4
    .param p1, "v"    # [F

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V
    :try_end_5
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 61
    return-void

    .line 58
    :catch_6
    move-exception v0

    .line 59
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .registers 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 47
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .line 49
    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_3
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setInput(Landroid/renderscript/Allocation;)V
    :try_end_c
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_c} :catch_d

    .line 53
    return-void

    .line 50
    :catch_d
    move-exception v1

    .line 51
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
