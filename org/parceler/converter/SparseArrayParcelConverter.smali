.class public abstract Lorg/parceler/converter/SparseArrayParcelConverter;
.super Ljava/lang/Object;
.source "SparseArrayParcelConverter.java"

# interfaces
.implements Lorg/parceler/ParcelConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/parceler/ParcelConverter",
        "<",
        "Landroid/util/SparseArray",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Parcel;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(Landroid/util/SparseArray;Landroid/os/Parcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<TT;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    if-nez p1, :cond_7

    .line 29
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    :cond_6
    return-void

    .line 31
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 33
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/parceler/converter/SparseArrayParcelConverter;->a(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public abstract a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public b(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 43
    if-gez v2, :cond_8

    .line 44
    const/4 v0, 0x0

    .line 52
    :cond_7
    return-object v0

    .line 46
    :cond_8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 47
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_7

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 49
    invoke-virtual {p0, p1}, Lorg/parceler/converter/SparseArrayParcelConverter;->a(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public synthetic c(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lorg/parceler/converter/SparseArrayParcelConverter;->b(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 25
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lorg/parceler/converter/SparseArrayParcelConverter;->a(Landroid/util/SparseArray;Landroid/os/Parcel;)V

    return-void
.end method
