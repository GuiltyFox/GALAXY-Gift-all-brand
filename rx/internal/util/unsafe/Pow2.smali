.class public final Lrx/internal/util/unsafe/Pow2;
.super Ljava/lang/Object;
.source "Pow2.java"


# direct methods
.method public static a(I)I
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x1

    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    shl-int/2addr v0, v1

    return v0
.end method

.method public static b(I)Z
    .registers 2

    .prologue
    .line 42
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
