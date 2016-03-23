.class Landroid/support/v8/renderscript/ScriptCThunker;
.super Landroid/renderscript/ScriptC;
.source "ScriptCThunker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(Landroid/support/v8/renderscript/RenderScriptThunker;Landroid/content/res/Resources;I)V
    .registers 5
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScriptThunker;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .prologue
    .line 39
    iget-object v0, p1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-direct {p0, v0, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 40
    return-void
.end method


# virtual methods
.method thunkBindAllocation(Landroid/support/v8/renderscript/Allocation;I)V
    .registers 6
    .param p1, "va"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "slot"    # I

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "nva":Landroid/renderscript/Allocation;
    if-eqz p1, :cond_7

    .line 73
    check-cast p1, Landroid/support/v8/renderscript/AllocationThunker;

    .end local p1    # "va":Landroid/support/v8/renderscript/Allocation;
    iget-object v1, p1, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    .line 76
    :cond_7
    :try_start_7
    invoke-virtual {p0, v1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->bindAllocation(Landroid/renderscript/Allocation;I)V
    :try_end_a
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_7 .. :try_end_a} :catch_b

    .line 80
    return-void

    .line 77
    :catch_b
    move-exception v0

    .line 78
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method thunkCreateFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .registers 7
    .param p1, "slot"    # I
    .param p2, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 223
    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/support/v8/renderscript/ElementThunker;

    move-object v1, v0

    .line 224
    .local v1, "et":Landroid/support/v8/renderscript/ElementThunker;
    invoke-virtual {v1}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/support/v8/renderscript/ScriptCThunker;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    :try_end_b
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v3

    return-object v3

    .line 225
    .end local v1    # "et":Landroid/support/v8/renderscript/ElementThunker;
    :catch_d
    move-exception v2

    .line 226
    .local v2, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method thunkCreateKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .registers 10
    .param p1, "slot"    # I
    .param p2, "sig"    # I
    .param p3, "ein"    # Landroid/support/v8/renderscript/Element;
    .param p4, "eout"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "nein":Landroid/renderscript/Element;
    const/4 v3, 0x0

    .line 47
    .local v3, "neout":Landroid/renderscript/Element;
    if-eqz p3, :cond_8

    .line 48
    check-cast p3, Landroid/support/v8/renderscript/ElementThunker;

    .end local p3    # "ein":Landroid/support/v8/renderscript/Element;
    iget-object v2, p3, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    .line 50
    :cond_8
    if-eqz p4, :cond_e

    .line 51
    check-cast p4, Landroid/support/v8/renderscript/ElementThunker;

    .end local p4    # "eout":Landroid/support/v8/renderscript/Element;
    iget-object v3, p4, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    .line 54
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/support/v8/renderscript/ScriptCThunker;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    :try_end_11
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v1

    .line 55
    .local v1, "kid":Landroid/renderscript/Script$KernelID;
    return-object v1

    .line 56
    .end local v1    # "kid":Landroid/renderscript/Script$KernelID;
    :catch_13
    move-exception v0

    .line 57
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
    .registers 11
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, "nin":Landroid/renderscript/Allocation;
    const/4 v4, 0x0

    .line 103
    .local v4, "nout":Landroid/renderscript/Allocation;
    const/4 v1, 0x0

    .line 104
    .local v1, "nfp":Landroid/renderscript/FieldPacker;
    if-eqz p2, :cond_9

    .line 105
    check-cast p2, Landroid/support/v8/renderscript/AllocationThunker;

    .end local p2    # "ain":Landroid/support/v8/renderscript/Allocation;
    iget-object v3, p2, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    .line 107
    :cond_9
    if-eqz p3, :cond_f

    .line 108
    check-cast p3, Landroid/support/v8/renderscript/AllocationThunker;

    .end local p3    # "aout":Landroid/support/v8/renderscript/Allocation;
    iget-object v4, p3, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    .line 111
    :cond_f
    if-eqz p4, :cond_1b

    .line 112
    :try_start_11
    new-instance v2, Landroid/renderscript/FieldPacker;

    invoke-virtual {p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .end local v1    # "nfp":Landroid/renderscript/FieldPacker;
    .local v2, "nfp":Landroid/renderscript/FieldPacker;
    move-object v1, v2

    .line 114
    .end local v2    # "nfp":Landroid/renderscript/FieldPacker;
    .restart local v1    # "nfp":Landroid/renderscript/FieldPacker;
    :cond_1b
    invoke-virtual {p0, p1, v3, v4, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    :try_end_1e
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 118
    return-void

    .line 115
    :catch_1f
    move-exception v0

    .line 116
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .registers 14
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 123
    const/4 v5, 0x0

    .line 124
    .local v5, "lo":Landroid/renderscript/Script$LaunchOptions;
    if-eqz p5, :cond_3c

    .line 125
    :try_start_3
    new-instance v7, Landroid/renderscript/Script$LaunchOptions;

    invoke-direct {v7}, Landroid/renderscript/Script$LaunchOptions;-><init>()V
    :try_end_8
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_8} :catch_5c

    .line 126
    .end local v5    # "lo":Landroid/renderscript/Script$LaunchOptions;
    .local v7, "lo":Landroid/renderscript/Script$LaunchOptions;
    :try_start_8
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getXEnd()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getXStart()I

    move-result v0

    invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getXEnd()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/renderscript/Script$LaunchOptions;->setX(II)Landroid/renderscript/Script$LaunchOptions;

    .line 127
    :cond_19
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getYEnd()I

    move-result v0

    if-lez v0, :cond_2a

    invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getYStart()I

    move-result v0

    invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getYEnd()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/renderscript/Script$LaunchOptions;->setY(II)Landroid/renderscript/Script$LaunchOptions;

    .line 128
    :cond_2a
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getZEnd()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getZStart()I

    move-result v0

    invoke-virtual {p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->getZEnd()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/renderscript/Script$LaunchOptions;->setZ(II)Landroid/renderscript/Script$LaunchOptions;
    :try_end_3b
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_8 .. :try_end_3b} :catch_62

    :cond_3b
    move-object v5, v7

    .line 131
    .end local v7    # "lo":Landroid/renderscript/Script$LaunchOptions;
    .restart local v5    # "lo":Landroid/renderscript/Script$LaunchOptions;
    :cond_3c
    const/4 v2, 0x0

    .line 132
    .local v2, "nin":Landroid/renderscript/Allocation;
    const/4 v3, 0x0

    .line 133
    .local v3, "nout":Landroid/renderscript/Allocation;
    const/4 v4, 0x0

    .line 134
    .local v4, "nfp":Landroid/renderscript/FieldPacker;
    if-eqz p2, :cond_45

    .line 135
    :try_start_41
    check-cast p2, Landroid/support/v8/renderscript/AllocationThunker;

    .end local p2    # "ain":Landroid/support/v8/renderscript/Allocation;
    iget-object v2, p2, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    .line 137
    :cond_45
    if-eqz p3, :cond_4b

    .line 138
    check-cast p3, Landroid/support/v8/renderscript/AllocationThunker;

    .end local p3    # "aout":Landroid/support/v8/renderscript/Allocation;
    iget-object v3, p3, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    .line 140
    :cond_4b
    if-eqz p4, :cond_56

    .line 141
    new-instance v4, Landroid/renderscript/FieldPacker;

    .end local v4    # "nfp":Landroid/renderscript/FieldPacker;
    invoke-virtual {p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .restart local v4    # "nfp":Landroid/renderscript/FieldPacker;
    :cond_56
    move-object v0, p0

    move v1, p1

    .line 143
    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptCThunker;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    :try_end_5b
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_41 .. :try_end_5b} :catch_5c

    .line 147
    return-void

    .line 144
    .end local v2    # "nin":Landroid/renderscript/Allocation;
    .end local v3    # "nout":Landroid/renderscript/Allocation;
    .end local v4    # "nfp":Landroid/renderscript/FieldPacker;
    :catch_5c
    move-exception v6

    .line 145
    .local v6, "e":Landroid/renderscript/RSRuntimeException;
    :goto_5d
    invoke-static {v6}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 144
    .end local v5    # "lo":Landroid/renderscript/Script$LaunchOptions;
    .end local v6    # "e":Landroid/renderscript/RSRuntimeException;
    .restart local v7    # "lo":Landroid/renderscript/Script$LaunchOptions;
    .restart local p2    # "ain":Landroid/support/v8/renderscript/Allocation;
    .restart local p3    # "aout":Landroid/support/v8/renderscript/Allocation;
    :catch_62
    move-exception v6

    move-object v5, v7

    .end local v7    # "lo":Landroid/renderscript/Script$LaunchOptions;
    .restart local v5    # "lo":Landroid/renderscript/Script$LaunchOptions;
    goto :goto_5d
.end method

.method thunkInvoke(I)V
    .registers 4
    .param p1, "slot"    # I

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/ScriptCThunker;->invoke(I)V
    :try_end_3
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 68
    return-void

    .line 65
    :catch_4
    move-exception v0

    .line 66
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method thunkInvoke(ILandroid/support/v8/renderscript/FieldPacker;)V
    .registers 6
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .line 94
    .local v1, "nfp":Landroid/renderscript/FieldPacker;
    invoke-virtual {p0, p1, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->invoke(ILandroid/renderscript/FieldPacker;)V
    :try_end_c
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    .line 98
    return-void

    .line 95
    .end local v1    # "nfp":Landroid/renderscript/FieldPacker;
    :catch_d
    move-exception v0

    .line 96
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method thunkSetTimeZone(Ljava/lang/String;)V
    .registers 4
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/ScriptCThunker;->setTimeZone(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 88
    return-void

    .line 85
    :catch_4
    move-exception v0

    .line 86
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method thunkSetVar(ID)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(ID)V
    :try_end_3
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 162
    return-void

    .line 159
    :catch_4
    move-exception v0

    .line 160
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method thunkSetVar(IF)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(IF)V
    :try_end_3
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 155
    return-void

    .line 152
    :catch_4
    move-exception v0

    .line 153
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method thunkSetVar(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(II)V
    :try_end_3
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 169
    return-void

    .line 166
    :catch_4
    move-exception v0

    .line 167
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method thunkSetVar(IJ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(IJ)V
    :try_end_3
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 176
    return-void

    .line 173
    :catch_4
    move-exception v0

    .line 174
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method thunkSetVar(ILandroid/support/v8/renderscript/BaseObj;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 186
    if-nez p2, :cond_d

    .line 188
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(II)V
    :try_end_6
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_6} :catch_7

    .line 199
    :goto_6
    return-void

    .line 189
    :catch_7
    move-exception v0

    .line 190
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 195
    .end local v0    # "e":Landroid/renderscript/RSRuntimeException;
    :cond_d
    :try_start_d
    invoke-virtual {p2}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/BaseObj;)V
    :try_end_14
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_6

    .line 196
    :catch_15
    move-exception v0

    .line 197
    .restart local v0    # "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method thunkSetVar(ILandroid/support/v8/renderscript/FieldPacker;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 202
    :try_start_0
    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .line 204
    .local v1, "nfp":Landroid/renderscript/FieldPacker;
    invoke-virtual {p0, p1, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/FieldPacker;)V
    :try_end_c
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    .line 208
    return-void

    .line 205
    .end local v1    # "nfp":Landroid/renderscript/FieldPacker;
    :catch_d
    move-exception v0

    .line 206
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method thunkSetVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/support/v8/renderscript/FieldPacker;
    .param p3, "e"    # Landroid/support/v8/renderscript/Element;
    .param p4, "dims"    # [I

    .prologue
    .line 212
    :try_start_0
    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .line 214
    .local v3, "nfp":Landroid/renderscript/FieldPacker;
    move-object v0, p3

    check-cast v0, Landroid/support/v8/renderscript/ElementThunker;

    move-object v1, v0

    .line 215
    .local v1, "et":Landroid/support/v8/renderscript/ElementThunker;
    iget-object v4, v1, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    invoke-virtual {p0, p1, v3, v4, p4}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    :try_end_12
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_12} :catch_13

    .line 219
    return-void

    .line 216
    .end local v1    # "et":Landroid/support/v8/renderscript/ElementThunker;
    .end local v3    # "nfp":Landroid/renderscript/FieldPacker;
    :catch_13
    move-exception v2

    .line 217
    .local v2, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method thunkSetVar(IZ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(IZ)V
    :try_end_3
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 183
    return-void

    .line 180
    :catch_4
    move-exception v0

    .line 181
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
