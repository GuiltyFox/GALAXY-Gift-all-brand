.class Landroid/support/v8/renderscript/RenderScriptThunker;
.super Landroid/support/v8/renderscript/RenderScript;
.source "RenderScriptThunker.java"


# instance fields
.field mN:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v8/renderscript/RenderScriptThunker;->isNative:Z

    .line 53
    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I

    .prologue
    .line 57
    :try_start_0
    new-instance v4, Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-direct {v4, p0}, Landroid/support/v8/renderscript/RenderScriptThunker;-><init>(Landroid/content/Context;)V

    .line 58
    .local v4, "rs":Landroid/support/v8/renderscript/RenderScriptThunker;
    const-string/jumbo v6, "android.renderscript.RenderScript"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 59
    .local v3, "javaRS":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 60
    .local v5, "signature":[Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v0, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v0, v6

    .line 61
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v6, "create"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    .local v1, "create":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/renderscript/RenderScript;

    iput-object v6, v4, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
    :try_end_37
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_3e

    .line 63
    return-object v4

    .line 65
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "create":Ljava/lang/reflect/Method;
    .end local v3    # "javaRS":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "rs":Landroid/support/v8/renderscript/RenderScriptThunker;
    .end local v5    # "signature":[Ljava/lang/Class;
    :catch_38
    move-exception v2

    .line 66
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 67
    .end local v2    # "e":Landroid/renderscript/RSRuntimeException;
    :catch_3e
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v7, "Failure to create platform RenderScript context"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public contextDump()V
    .registers 3

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->contextDump()V
    :try_end_5
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 78
    return-void

    .line 75
    :catch_6
    move-exception v0

    .line 76
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
    :try_end_8
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    .line 96
    return-void

    .line 92
    :catch_9
    move-exception v0

    .line 93
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 135
    instance-of v0, p2, Landroid/support/v8/renderscript/BaseObj;

    if-eqz v0, :cond_11

    .line 136
    check-cast p1, Landroid/renderscript/BaseObj;

    .end local p1    # "obj1":Ljava/lang/Object;
    check-cast p2, Landroid/support/v8/renderscript/BaseObj;

    .end local p2    # "obj2":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/BaseObj;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    :goto_10
    return v0

    .restart local p1    # "obj1":Ljava/lang/Object;
    .restart local p2    # "obj2":Ljava/lang/Object;
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->finish()V
    :try_end_5
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 86
    return-void

    .line 83
    :catch_6
    move-exception v0

    .line 84
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setErrorHandler(Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;)V
    .registers 5
    .param p1, "msg"    # Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    .prologue
    .line 117
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    .line 119
    :try_start_2
    new-instance v1, Landroid/support/v8/renderscript/RenderScriptThunker$2;

    invoke-direct {v1, p0}, Landroid/support/v8/renderscript/RenderScriptThunker$2;-><init>(Landroid/support/v8/renderscript/RenderScriptThunker;)V

    .line 127
    .local v1, "handler":Landroid/renderscript/RenderScript$RSErrorHandler;
    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScript;->setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    :try_end_c
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_2 .. :try_end_c} :catch_d

    .line 131
    return-void

    .line 128
    .end local v1    # "handler":Landroid/renderscript/RenderScript$RSErrorHandler;
    :catch_d
    move-exception v0

    .line 129
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setMessageHandler(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V
    .registers 5
    .param p1, "msg"    # Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    .prologue
    .line 99
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    .line 101
    :try_start_2
    new-instance v1, Landroid/support/v8/renderscript/RenderScriptThunker$1;

    invoke-direct {v1, p0}, Landroid/support/v8/renderscript/RenderScriptThunker$1;-><init>(Landroid/support/v8/renderscript/RenderScriptThunker;)V

    .line 110
    .local v1, "handler":Landroid/renderscript/RenderScript$RSMessageHandler;
    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    :try_end_c
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_2 .. :try_end_c} :catch_d

    .line 114
    return-void

    .line 111
    .end local v1    # "handler":Landroid/renderscript/RenderScript$RSMessageHandler;
    :catch_d
    move-exception v0

    .line 112
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setPriority(Landroid/support/v8/renderscript/RenderScript$Priority;)V
    .registers 5
    .param p1, "p"    # Landroid/support/v8/renderscript/RenderScript$Priority;

    .prologue
    .line 43
    :try_start_0
    sget-object v1, Landroid/support/v8/renderscript/RenderScript$Priority;->LOW:Landroid/support/v8/renderscript/RenderScript$Priority;

    if-ne p1, v1, :cond_b

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 44
    :cond_b
    sget-object v1, Landroid/support/v8/renderscript/RenderScript$Priority;->NORMAL:Landroid/support/v8/renderscript/RenderScript$Priority;

    if-ne p1, v1, :cond_16

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V
    :try_end_16
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_16} :catch_17

    .line 48
    :cond_16
    return-void

    .line 45
    :catch_17
    move-exception v0

    .line 46
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method validate()V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_d

    .line 37
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_d
    return-void
.end method
