.class Lcom/google/analytics/tracking/android/NoopDispatcher;
.super Ljava/lang/Object;
.source "NoopDispatcher.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Dispatcher;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchHits(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    if-nez p1, :cond_4

    .line 24
    const/4 v3, 0x0

    .line 46
    :cond_3
    return v3

    .line 26
    :cond_4
    const-string v5, "Hits not actually being sent as dispatch is false..."

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->iDebug(Ljava/lang/String;)I

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x28

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 28
    .local v3, "maxHits":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v3, :cond_3

    .line 29
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "logMessage":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "hitString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const-string v4, ""

    .line 34
    .local v4, "modifiedHit":Ljava/lang/String;
    :goto_2f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 35
    const-string v2, "Hit couldn\'t be read, wouldn\'t be sent:"

    .line 43
    :goto_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->iDebug(Ljava/lang/String;)I

    .line 28
    .end local v0    # "hitString":Ljava/lang/String;
    .end local v2    # "logMessage":Ljava/lang/String;
    .end local v4    # "modifiedHit":Ljava/lang/String;
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 32
    .restart local v0    # "hitString":Ljava/lang/String;
    .restart local v2    # "logMessage":Ljava/lang/String;
    :cond_4e
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/tracking/android/Hit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/analytics/tracking/android/HitBuilder;->postProcessHit(Lcom/google/analytics/tracking/android/Hit;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    .line 36
    .restart local v4    # "modifiedHit":Ljava/lang/String;
    :cond_5d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7f4

    if-gt v5, v6, :cond_68

    .line 37
    const-string v2, "GET would be sent:"

    goto :goto_37

    .line 38
    :cond_68
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2000

    if-le v5, v6, :cond_73

    .line 39
    const-string v2, "Would be too big:"

    goto :goto_37

    .line 41
    :cond_73
    const-string v2, "POST would be sent:"

    goto :goto_37
.end method

.method public okToDispatch()Z
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
