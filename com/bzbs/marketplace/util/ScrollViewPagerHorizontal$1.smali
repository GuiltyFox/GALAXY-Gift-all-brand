.class final Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;
.super Ljava/lang/Object;
.source "ScrollViewPagerHorizontal.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal;->a(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)V
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)V
    .registers 3

    .prologue
    .line 16
    iput-object p1, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->d:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x1e

    iput v0, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->a:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 41
    :cond_8
    :goto_8
    return v3

    .line 25
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->b:I

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->c:I

    goto :goto_8

    .line 29
    :pswitch_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->c:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 31
    if-le v1, v0, :cond_40

    iget v2, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->a:I

    if-le v1, v2, :cond_40

    .line 32
    iget-object v0, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->d:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_8

    .line 33
    :cond_40
    if-le v0, v1, :cond_8

    iget v1, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->a:I

    if-le v0, v1, :cond_8

    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->d:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_8

    .line 38
    :pswitch_51
    iget-object v0, p0, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal$1;->d:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_8

    .line 23
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_51
        :pswitch_18
    .end packed-switch
.end method
