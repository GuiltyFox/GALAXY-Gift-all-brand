.class public final Lrx/exceptions/UnsubscribeFailedException;
.super Ljava/lang/RuntimeException;
.source "UnsubscribeFailedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 47
    if-eqz p2, :cond_6

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void

    .line 47
    :cond_6
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2
.end method
