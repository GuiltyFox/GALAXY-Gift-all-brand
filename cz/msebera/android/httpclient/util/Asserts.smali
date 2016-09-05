.class public Lcz/msebera/android/httpclient/util/Asserts;
.super Ljava/lang/Object;
.source "Asserts.java"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 45
    if-nez p0, :cond_1c

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1c
    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 33
    if-nez p0, :cond_8

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_8
    return-void
.end method
