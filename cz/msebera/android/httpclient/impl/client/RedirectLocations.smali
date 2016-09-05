.class public Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
.super Ljava/util/AbstractList;
.source "RedirectLocations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public a(I)Ljava/net/URI;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public a(Ljava/net/URI;)Z
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public add(ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 185
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Ljava/net/URI;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    check-cast p2, Ljava/net/URI;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public b(I)Ljava/net/URI;
    .registers 5

    .prologue
    .line 204
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 205
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_22

    .line 207
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_22
    return-object v0
.end method

.method public b(Ljava/net/URI;)V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a(I)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b(I)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 153
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Ljava/net/URI;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 154
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    check-cast p2, Ljava/net/URI;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_2c

    .line 157
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a:Ljava/util/Set;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_2c
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
