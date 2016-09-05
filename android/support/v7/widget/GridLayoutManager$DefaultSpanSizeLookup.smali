.class public final Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1055
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .registers 4

    .prologue
    .line 1064
    rem-int v0, p1, p2

    return v0
.end method

.method public getSpanSize(I)I
    .registers 3

    .prologue
    .line 1059
    const/4 v0, 0x1

    return v0
.end method
