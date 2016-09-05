.class public Lrx/exceptions/OnErrorFailedException;
.super Ljava/lang/RuntimeException;
.source "OnErrorFailedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 38
    if-eqz p2, :cond_6

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void

    .line 38
    :cond_6
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 48
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_6
    if-eqz p1, :cond_e

    :goto_8
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void

    .line 48
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_8
.end method
