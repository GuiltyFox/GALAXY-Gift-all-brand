.class public Lcom/koushikdutta/async/http/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# instance fields
.field final a:Lcom/koushikdutta/async/http/Multimap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/koushikdutta/async/http/Headers$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/Headers$1;-><init>(Lcom/koushikdutta/async/http/Headers;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/koushikdutta/async/http/Headers$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/Headers$1;-><init>(Lcom/koushikdutta/async/http/Headers;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Multimap;->putAll(Ljava/util/Map;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;
    .registers 5

    .prologue
    .line 47
    if-eqz p2, :cond_1d

    const-string/jumbo v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "\r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 48
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value must not contain a new line or line feed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v1, v0, p2}, Lcom/koushikdutta/async/http/Multimap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/TaggedList;

    .line 52
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/util/TaggedList;->b(Ljava/lang/Object;)V

    .line 53
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/koushikdutta/async/http/Headers;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/koushikdutta/async/http/Headers;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_4

    .line 80
    :cond_14
    return-object p0
.end method

.method public a()Lcom/koushikdutta/async/http/Multimap;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 65
    if-eqz p1, :cond_22

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 68
    array-length v1, v0

    if-ne v1, v3, :cond_23

    .line 69
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 73
    :cond_22
    :goto_22
    return-object p0

    .line 71
    :cond_23
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_22
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;
    .registers 5

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v1, v0, p2}, Lcom/koushikdutta/async/http/Multimap;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/TaggedList;

    .line 60
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/util/TaggedList;->b(Ljava/lang/Object;)V

    .line 61
    return-object p0
.end method

.method public b()Ljava/lang/StringBuilder;
    .registers 8

    .prologue
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/TaggedList;

    .line 131
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/TaggedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/TaggedList;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 138
    :cond_51
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    return-object v3
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/http/Headers;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/Headers;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 105
    :cond_10
    const/4 v0, 0x0

    .line 106
    :goto_11
    return-object v0

    :cond_12
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_11
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Headers;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Headers;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
