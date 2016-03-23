.class public Lcom/bzbs/lib/survey/http/BaseAsyntask;
.super Ljava/lang/Object;
.source "BaseAsyntask.java"


# instance fields
.field public cacheName:Ljava/lang/String;

.field private isObject:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/http/BaseAsyntask;->isObject:Z

    return-void
.end method


# virtual methods
.method public changeCacheName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 20
    move-object v0, p1

    .line 21
    .local v0, "rex":Ljava/lang/String;
    const-string/jumbo v1, "."

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string/jumbo v1, "\\[\\]"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string/jumbo v1, "\\{\\}"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "\\{"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string/jumbo v1, "\\}"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "\\["

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string/jumbo v1, "\\]"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initList()V
    .registers 2

    .prologue
    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/http/BaseAsyntask;->isObject:Z

    .line 13
    return-void
.end method

.method public initObj()V
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/http/BaseAsyntask;->isObject:Z

    .line 17
    return-void
.end method

.method public saveCache(Ljava/lang/String;I)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/BaseAsyntask;->cacheName:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_12

    .line 33
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/BaseAsyntask;->cacheName:Ljava/lang/String;

    new-instance v1, Lcom/bzbs/lib/survey/http/BaseAsyntask$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/http/BaseAsyntask$1;-><init>(Lcom/bzbs/lib/survey/http/BaseAsyntask;)V

    invoke-static {v0, p1, v1}, Lcom/bzbs/lib/survey/http/CacheLibs;->putObject(Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;)V

    .line 45
    :cond_12
    return-void
.end method
