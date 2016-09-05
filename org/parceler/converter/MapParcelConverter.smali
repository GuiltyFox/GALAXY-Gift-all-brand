.class public abstract Lorg/parceler/converter/MapParcelConverter;
.super Ljava/lang/Object;
.source "MapParcelConverter.java"

# interfaces
.implements Lorg/parceler/TypeRangeParcelConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "M::",
        "Ljava/util/Map",
        "<TK;TV;>;>",
        "Ljava/lang/Object;",
        "Lorg/parceler/TypeRangeParcelConverter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;TM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Parcel;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TK;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public a(Ljava/util/Map;Landroid/os/Parcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    if-nez p1, :cond_7

    .line 34
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    :cond_6
    return-void

    .line 36
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/parceler/converter/MapParcelConverter;->a(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/parceler/converter/MapParcelConverter;->b(Ljava/lang/Object;Landroid/os/Parcel;)V

    goto :goto_16
.end method

.method public abstract b(Landroid/os/Parcel;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public synthetic c(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lorg/parceler/converter/MapParcelConverter;->d(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 27
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/parceler/converter/MapParcelConverter;->a(Ljava/util/Map;Landroid/os/Parcel;)V

    return-void
.end method

.method public d(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TM;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 48
    const/4 v0, -0x1

    if-ne v2, v0, :cond_9

    .line 49
    const/4 v0, 0x0

    .line 58
    :cond_8
    return-object v0

    .line 51
    :cond_9
    invoke-virtual {p0}, Lorg/parceler/converter/MapParcelConverter;->b()Ljava/util/Map;

    move-result-object v0

    .line 52
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_8

    .line 53
    invoke-virtual {p0, p1}, Lorg/parceler/converter/MapParcelConverter;->a(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    invoke-virtual {p0, p1}, Lorg/parceler/converter/MapParcelConverter;->b(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .line 55
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method
