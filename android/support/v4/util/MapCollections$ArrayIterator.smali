.class final Landroid/support/v4/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:Z

.field final synthetic e:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;I)V
    .registers 4

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->e:Landroid/support/v4/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->d:Z

    .line 41
    iput p2, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->a:I

    .line 42
    invoke-virtual {p1}, Landroid/support/v4/util/MapCollections;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->b:I

    .line 43
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 47
    iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->c:I

    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->e:Landroid/support/v4/util/MapCollections;

    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->c:I

    iget v2, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/MapCollections;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 53
    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->c:I

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->d:Z

    .line 55
    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->d:Z

    if-nez v0, :cond_a

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 63
    :cond_a
    iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->c:I

    .line 64
    iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->b:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->d:Z

    .line 66
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->e:Landroid/support/v4/util/MapCollections;

    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->a(I)V

    .line 67
    return-void
.end method
