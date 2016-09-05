.class public Lcz/msebera/android/httpclient/client/utils/CloneUtils;
.super Ljava/lang/Object;
.source "CloneUtils.java"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 46
    if-nez p0, :cond_4

    .line 60
    :goto_3
    return-object v0

    .line 49
    :cond_4
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_49

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 53
    :try_start_c
    const-string/jumbo v2, "clone"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_15} :catch_1e

    move-result-object v1

    .line 59
    const/4 v0, 0x0

    :try_start_17
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_1c} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_1c} :catch_3e

    move-result-object v0

    goto :goto_3

    .line 54
    :catch_1e
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :catch_29
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 63
    instance-of v1, v0, Ljava/lang/CloneNotSupportedException;

    if-eqz v1, :cond_35

    .line 64
    check-cast v0, Ljava/lang/CloneNotSupportedException;

    throw v0

    .line 66
    :cond_35
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :catch_3e
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_49
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method
