.class public final Lrx/exceptions/OnErrorThrowable;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# direct methods
.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    .prologue
    .line 98
    if-nez p0, :cond_7

    .line 99
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 101
    :cond_7
    invoke-static {p0}, Lrx/exceptions/Exceptions;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1a

    instance-of v1, v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    if-eqz v1, :cond_1a

    .line 104
    check-cast v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    invoke-virtual {v0}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1a

    .line 110
    :goto_19
    return-object p0

    .line 109
    :cond_1a
    new-instance v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorThrowable$OnNextValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_19
.end method
