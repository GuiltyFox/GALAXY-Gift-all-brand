.class public abstract Lorg/parceler/converter/LinkedHashSetParcelConverter;
.super Lorg/parceler/converter/CollectionParcelConverter;
.source "LinkedHashSetParcelConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/parceler/converter/CollectionParcelConverter",
        "<TT;",
        "Ljava/util/LinkedHashSet",
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
.method public a()Ljava/util/LinkedHashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/parceler/converter/LinkedHashSetParcelConverter;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method
