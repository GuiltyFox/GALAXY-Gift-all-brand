.class Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;
.source "ScriptIntrinsic3DLUTThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsic3DLUT;


# direct methods
.method private constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p3, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 34
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;
    .registers 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 37
    move-object v3, p0

    check-cast v3, Landroid/support/v8/renderscript/RenderScriptThunker;

    .local v3, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    move-object v0, p1

    .line 38
    check-cast v0, Landroid/support/v8/renderscript/ElementThunker;

    .line 40
    .local v0, "et":Landroid/support/v8/renderscript/ElementThunker;
    new-instance v2, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 42
    .local v2, "lut":Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;
    :try_start_c
    iget-object v4, v3, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsic3DLUT;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsic3DLUT;

    move-result-object v4

    iput-object v4, v2, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;
    :try_end_18
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_c .. :try_end_18} :catch_19

    .line 46
    return-object v2

    .line 43
    :catch_19
    move-exception v1

    .line 44
    .local v1, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 67
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 68
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 70
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 74
    return-void

    .line 71
    :catch_14
    move-exception v2

    .line 72
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 82
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 84
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_f
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    .line 88
    return-object v1

    .line 85
    :catch_10
    move-exception v0

    .line 86
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsic3DLUT;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsic3DLUT;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsic3DLUT;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;

    return-object v0
.end method

.method public setLUT(Landroid/support/v8/renderscript/Allocation;)V
    .registers 6
    .param p1, "lut"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 50
    move-object v1, p1

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 52
    .local v1, "lutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_3
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsic3DLUT;->setLUT(Landroid/renderscript/Allocation;)V
    :try_end_c
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_c} :catch_d

    .line 56
    return-void

    .line 53
    :catch_d
    move-exception v0

    .line 54
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
