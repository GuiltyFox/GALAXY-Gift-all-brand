.class public Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal;
.super Ljava/lang/Object;
.source "ScrollViewPagerHorizontal.java"


# direct methods
.method public static a(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;-><init>(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)V

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    return-void
.end method
