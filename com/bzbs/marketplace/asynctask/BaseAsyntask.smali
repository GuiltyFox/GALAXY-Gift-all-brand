.class public Lcom/bzbs/marketplace/asynctask/BaseAsyntask;
.super Ljava/lang/Object;
.source "BaseAsyntask.java"


# instance fields
.field public cacheName:Ljava/lang/String;

.field private isObject:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;->isObject:Z

    return-void
.end method


# virtual methods
.method public changeCacheName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 27
    move-object v0, p1

    .line 28
    .local v0, "rex":Ljava/lang/String;
    const-string/jumbo v1, "."

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "\\[\\]"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "\\{\\}"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "\\{"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string/jumbo v1, "\\}"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string/jumbo v1, "\\["

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string/jumbo v1, "\\]"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initList()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;->isObject:Z

    .line 20
    return-void
.end method

.method public initObj()V
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;->isObject:Z

    .line 24
    return-void
.end method

.method public isJSONValid(Ljava/lang/String;)Z
    .registers 5
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    .line 58
    :goto_5
    const/4 v2, 0x1

    :goto_6
    return v2

    .line 49
    :catch_7
    move-exception v0

    .line 53
    .local v0, "ex":Lorg/json/JSONException;
    :try_start_8
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_5

    .line 54
    :catch_e
    move-exception v1

    .line 55
    .local v1, "ex1":Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public loadCache(Ljava/lang/String;I)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;->cacheName:Ljava/lang/String;

    if-eqz v0, :cond_21

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_21

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;->isJSONValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 40
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 41
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/asynctask/BaseAsyntask;->changeCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_21
    return-void
.end method
