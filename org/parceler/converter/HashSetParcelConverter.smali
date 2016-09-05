.class public abstract Lorg/parceler/converter/HashSetParcelConverter;
.super Lorg/parceler/converter/CollectionParcelConverter;
.source "HashSetParcelConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/parceler/converter/CollectionParcelConverter",
        "<TT;",
        "Ljava/util/HashSet",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/parceler/converter/CollectionParcelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/parceler/converter/HashSetParcelConverter;->a()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
