.class Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicBlend;
.source "ScriptIntrinsicBlendThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicBlend;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 28
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;
    .registers 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 31
    move-object v3, p0

    check-cast v3, Landroid/support/v8/renderscript/RenderScriptThunker;

    .local v3, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    move-object v1, p1

    .line 32
    check-cast v1, Landroid/support/v8/renderscript/ElementThunker;

    .line 34
    .local v1, "et":Landroid/support/v8/renderscript/ElementThunker;
    new-instance v0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;

    const/4 v4, 0x0

    invoke-direct {v0, v4, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 36
    .local v0, "blend":Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;
    :try_start_c
    iget-object v4, v3, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlend;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;
    :try_end_18
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_c .. :try_end_18} :catch_19

    .line 40
    return-object v0

    .line 37
    :catch_19
    move-exception v2

    .line 38
    .local v2, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public forEachAdd(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 317
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 318
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 321
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 325
    return-void

    .line 322
    :catch_14
    move-exception v2

    .line 323
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachClear(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 44
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 45
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 48
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 52
    return-void

    .line 49
    :catch_14
    move-exception v2

    .line 50
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachDst(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 86
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 87
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 90
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDst(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 94
    return-void

    .line 91
    :catch_14
    move-exception v2

    .line 92
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachDstAtop(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 254
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 255
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 258
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 262
    return-void

    .line 259
    :catch_14
    move-exception v2

    .line 260
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachDstIn(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 170
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 171
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 174
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 178
    return-void

    .line 175
    :catch_14
    move-exception v2

    .line 176
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachDstOut(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 212
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 213
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 216
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 220
    return-void

    .line 217
    :catch_14
    move-exception v2

    .line 218
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachDstOver(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 128
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 129
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 132
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 136
    return-void

    .line 133
    :catch_14
    move-exception v2

    .line 134
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachMultiply(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 296
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 297
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 300
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 304
    return-void

    .line 301
    :catch_14
    move-exception v2

    .line 302
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachSrc(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 65
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 66
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 69
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 73
    return-void

    .line 70
    :catch_14
    move-exception v2

    .line 71
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachSrcAtop(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 233
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 234
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 237
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 241
    return-void

    .line 238
    :catch_14
    move-exception v2

    .line 239
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachSrcIn(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 149
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 150
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 153
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 157
    return-void

    .line 154
    :catch_14
    move-exception v2

    .line 155
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachSrcOut(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 191
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 192
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 195
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 199
    return-void

    .line 196
    :catch_14
    move-exception v2

    .line 197
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachSrcOver(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 107
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 108
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 111
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 115
    return-void

    .line 112
    :catch_14
    move-exception v2

    .line 113
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachSubtract(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 338
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 339
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 342
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 346
    return-void

    .line 343
    :catch_14
    move-exception v2

    .line 344
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public forEachXor(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 9
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 275
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    move-object v1, p2

    .line 276
    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    .line 279
    .local v1, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_6
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_13
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 283
    return-void

    .line 280
    :catch_14
    move-exception v2

    .line 281
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getKernelIDAdd()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 328
    const/16 v2, 0x22

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 330
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_8
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDAdd()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_10
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_8 .. :try_end_10} :catch_11

    .line 334
    return-object v1

    .line 331
    :catch_11
    move-exception v0

    .line 332
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDClear()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 55
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 57
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDClear()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_f
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    .line 61
    return-object v1

    .line 58
    :catch_10
    move-exception v0

    .line 59
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDDst()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 97
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 99
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDst()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_f
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    .line 103
    return-object v1

    .line 100
    :catch_10
    move-exception v0

    .line 101
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDDstAtop()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 265
    const/16 v2, 0xa

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 267
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_8
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDstAtop()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_10
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_8 .. :try_end_10} :catch_11

    .line 271
    return-object v1

    .line 268
    :catch_11
    move-exception v0

    .line 269
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDDstIn()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 181
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 183
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDstIn()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_f
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    .line 187
    return-object v1

    .line 184
    :catch_10
    move-exception v0

    .line 185
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDDstOut()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 223
    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 225
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_8
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDstOut()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_10
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_8 .. :try_end_10} :catch_11

    .line 229
    return-object v1

    .line 226
    :catch_11
    move-exception v0

    .line 227
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDDstOver()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 139
    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 141
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDstOver()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_f
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    .line 145
    return-object v1

    .line 142
    :catch_10
    move-exception v0

    .line 143
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDMultiply()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 307
    const/16 v2, 0xe

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 309
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_8
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDMultiply()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_10
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_8 .. :try_end_10} :catch_11

    .line 313
    return-object v1

    .line 310
    :catch_11
    move-exception v0

    .line 311
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDSrc()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 76
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 78
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrc()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_f
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    .line 82
    return-object v1

    .line 79
    :catch_10
    move-exception v0

    .line 80
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDSrcAtop()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 244
    const/16 v2, 0x9

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 246
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_8
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrcAtop()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_10
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_8 .. :try_end_10} :catch_11

    .line 250
    return-object v1

    .line 247
    :catch_11
    move-exception v0

    .line 248
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDSrcIn()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 160
    const/4 v2, 0x5

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 162
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrcIn()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_f
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    .line 166
    return-object v1

    .line 163
    :catch_10
    move-exception v0

    .line 164
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDSrcOut()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 202
    const/4 v2, 0x7

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 204
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_7
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrcOut()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_f
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_f} :catch_10

    .line 208
    return-object v1

    .line 205
    :catch_10
    move-exception v0

    .line 206
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDSrcOver()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 118
    invoke-virtual {p0, v2, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 120
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_6
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrcOver()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_e
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_e} :catch_f

    .line 124
    return-object v1

    .line 121
    :catch_f
    move-exception v0

    .line 122
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDSubtract()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 349
    const/16 v2, 0x23

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 351
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_8
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSubtract()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_10
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_8 .. :try_end_10} :catch_11

    .line 355
    return-object v1

    .line 352
    :catch_11
    move-exception v0

    .line 353
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKernelIDXor()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 286
    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v1

    .line 288
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    :try_start_8
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDXor()Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_10
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_8 .. :try_end_10} :catch_11

    .line 292
    return-object v1

    .line 289
    :catch_11
    move-exception v0

    .line 290
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicBlend;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicBlend;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicBlend;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    return-object v0
.end method
