.class public Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;
.super Landroid/widget/Scroller;
.source "CustomDurationScroller.java"


# instance fields
.field private a:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 5

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 14
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;->a:D

    .line 22
    return-void
.end method


# virtual methods
.method public a(D)V
    .registers 4

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;->a:D

    .line 41
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 12

    .prologue
    .line 45
    int-to-double v0, p5

    iget-wide v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;->a:D

    mul-double/2addr v0, v2

    double-to-int v5, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 46
    return-void
.end method
