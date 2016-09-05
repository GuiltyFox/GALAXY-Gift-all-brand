.class public Lcom/bzbs/marketplace/control/viewpager/PagerContainer;
.super Landroid/widget/FrameLayout;
.source "PagerContainer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field a:Z

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->a:Z

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->c:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->d:Landroid/graphics/Point;

    .line 18
    invoke-direct {p0}, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->a()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->a:Z

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->c:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->d:Landroid/graphics/Point;

    .line 23
    invoke-direct {p0}, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->a()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->a:Z

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->c:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->d:Landroid/graphics/Point;

    .line 28
    invoke-direct {p0}, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->a()V

    .line 29
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->setClipChildren(Z)V

    .line 38
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->b:Landroid/support/v4/view/ViewPager;

    .line 45
    iget-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    .line 49
    return-void

    .line 46
    :catch_f
    move-exception v0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The root child of PagerContainer must be a ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 92
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->a:Z

    .line 93
    return-void

    .line 92
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->a:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->invalidate()V

    .line 85
    :cond_7
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .prologue
    .line 88
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->c:Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 61
    iget-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->c:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 62
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 73
    :goto_7
    iget-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 77
    iget-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 70
    :pswitch_25
    iget-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 71
    iget-object v0, p0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_7

    .line 68
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_25
    .end packed-switch
.end method
