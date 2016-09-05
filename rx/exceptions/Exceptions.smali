.class public final Lrx/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 76
    instance-of v0, p0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v0, :cond_7

    .line 77
    check-cast p0, Lrx/exceptions/OnErrorNotImplementedException;

    throw p0

    .line 78
    :cond_7
    instance-of v0, p0, Lrx/exceptions/OnErrorFailedException;

    if-eqz v0, :cond_e

    .line 79
    check-cast p0, Lrx/exceptions/OnErrorFailedException;

    throw p0

    .line 82
    :cond_e
    instance-of v0, p0, Ljava/lang/StackOverflowError;

    if-eqz v0, :cond_15

    .line 83
    check-cast p0, Ljava/lang/StackOverflowError;

    throw p0

    .line 84
    :cond_15
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-eqz v0, :cond_1c

    .line 85
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0

    .line 86
    :cond_1c
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_23

    .line 87
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    .line 88
    :cond_23
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_2a

    .line 89
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    .line 91
    :cond_2a
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 105
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 109
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_13

    .line 128
    :goto_12
    return-void

    .line 113
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 122
    :cond_21
    :try_start_21
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_12

    .line 123
    :catch_25
    move-exception v0

    goto :goto_12

    .line 117
    :cond_27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_6
.end method

.method public static a(Ljava/lang/Throwable;Lrx/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 198
    invoke-interface {p1, p0}, Lrx/Observer;->a(Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 187
    invoke-static {p0, p2}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->a(Ljava/lang/Throwable;)V

    .line 188
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    if-eqz p0, :cond_33

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 159
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 160
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 163
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1d

    .line 164
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 165
    :cond_1d
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_24

    .line 166
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 168
    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 171
    :cond_2a
    new-instance v0, Lrx/exceptions/CompositeException;

    const-string/jumbo v1, "Multiple exceptions"

    invoke-direct {v0, v1, p0}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v0

    .line 174
    :cond_33
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 141
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x19

    if-lt v0, v2, :cond_16

    .line 143
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "Stack too deep to get final cause"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    :cond_15
    return-object p0

    .line 145
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    move v0, v1

    goto :goto_1
.end method
