.class public final Lcom/google/android/gms/internal/zznz;
.super Ljava/lang/Object;


# direct methods
.method private static zza([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .registers 7

    const/4 v2, 0x0

    array-length v1, p1

    array-length v0, p0

    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_18

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_18

    aget-object v3, p1, v1

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_18
    return v2
.end method

.method public static zzrY()Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const-string/jumbo v0, "Async stack trace:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    move v0, v1

    :goto_17
    if-ge v0, v5, :cond_28

    aget-object v6, v2, v0

    const-string/jumbo v7, "\n\tat "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    :goto_2f
    if-eqz v2, :cond_8a

    const-string/jumbo v3, "\nCaused by: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zznz;->zza([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v5

    move v0, v1

    :goto_43
    array-length v6, v3

    sub-int/2addr v6, v5

    if-ge v0, v6, :cond_63

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\n\tat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_63
    if-lez v5, :cond_83

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\n\t... "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " more"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    goto :goto_2f

    :cond_8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method