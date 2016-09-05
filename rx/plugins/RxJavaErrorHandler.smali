.class public abstract Lrx/plugins/RxJavaErrorHandler;
.super Ljava/lang/Object;
.source "RxJavaErrorHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaErrorHandler;->b(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_2a

    move-result-object v0

    .line 79
    :goto_4
    return-object v0

    .line 74
    :catch_5
    move-exception v0

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 79
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".errorRendering"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 76
    :catch_2a
    move-exception v0

    .line 77
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 48
    return-void
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method
