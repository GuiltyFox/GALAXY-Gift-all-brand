.class public Lbolts/CancellationToken;
.super Ljava/lang/Object;
.source "CancellationToken.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 41
    iget-object v1, p0, Lbolts/CancellationToken;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_3
    iget-boolean v0, p0, Lbolts/CancellationToken;->b:Z

    monitor-exit v1

    return v0

    .line 43
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 71
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s@%s[cancellationRequested=%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lbolts/CancellationToken;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
