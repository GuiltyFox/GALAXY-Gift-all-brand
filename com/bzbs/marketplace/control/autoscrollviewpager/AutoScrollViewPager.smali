.class public Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AutoScrollViewPager.java"


# instance fields
.field private a:J

.field private b:I

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z

.field private g:D

.field private h:D

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Z

.field private l:F

.field private m:F

.field private n:Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 50
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a:J

    .line 52
    iput v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b:I

    .line 54
    iput-boolean v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->c:Z

    .line 56
    iput-boolean v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->d:Z

    .line 58
    iput v3, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->e:I

    .line 60
    iput-boolean v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->f:Z

    .line 62
    iput-wide v4, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->g:D

    .line 64
    iput-wide v4, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->h:D

    .line 67
    iput-boolean v3, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->j:Z

    .line 68
    iput-boolean v3, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->k:Z

    .line 69
    iput v6, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->l:F

    iput v6, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->m:F

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->n:Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    .line 76
    invoke-direct {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->k()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a:J

    .line 52
    iput v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b:I

    .line 54
    iput-boolean v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->c:Z

    .line 56
    iput-boolean v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->d:Z

    .line 58
    iput v3, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->e:I

    .line 60
    iput-boolean v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->f:Z

    .line 62
    iput-wide v4, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->g:D

    .line 64
    iput-wide v4, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->h:D

    .line 67
    iput-boolean v3, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->j:Z

    .line 68
    iput-boolean v3, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->k:Z

    .line 69
    iput v6, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->l:F

    iput v6, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->m:F

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->n:Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    .line 81
    invoke-direct {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->k()V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)D
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->g:D

    return-wide v0
.end method

.method private a(J)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;J)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->n:Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    return-object v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)D
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->h:D

    return-wide v0
.end method

.method static synthetic d(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)J
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a:J

    return-wide v0
.end method

.method private k()V
    .registers 2

    .prologue
    .line 85
    new-instance v0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager$MyHandler;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager$MyHandler;-><init>(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->i:Landroid/os/Handler;

    .line 86
    invoke-direct {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->l()V

    .line 87
    return-void
.end method

.method private l()V
    .registers 6

    .prologue
    .line 140
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 141
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 143
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    new-instance v2, Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3, v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->n:Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    .line 146
    iget-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->n:Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 150
    :goto_31
    return-void

    .line 147
    :catch_32
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 186
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 188
    iget-boolean v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->d:Z

    if-eqz v2, :cond_16

    .line 189
    if-nez v0, :cond_5f

    iget-boolean v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->j:Z

    if-eqz v0, :cond_5f

    .line 190
    iput-boolean v5, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->k:Z

    .line 191
    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->i()V

    .line 197
    :cond_16
    :goto_16
    iget v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->e:I

    if-eq v0, v6, :cond_1e

    iget v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->e:I

    if-ne v0, v5, :cond_84

    .line 198
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->l:F

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2e

    .line 200
    iget v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->l:F

    iput v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->m:F

    .line 202
    :cond_2e
    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->getCurrentItem()I

    move-result v2

    .line 203
    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 204
    if-nez v0, :cond_6d

    move v0, v1

    .line 211
    :goto_39
    if-nez v2, :cond_43

    iget v3, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->m:F

    iget v4, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->l:F

    cmpg-float v3, v3, v4

    if-lez v3, :cond_4f

    :cond_43
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_84

    iget v3, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->m:F

    iget v4, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->l:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_84

    .line 212
    :cond_4f
    iget v3, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->e:I

    if-ne v3, v6, :cond_72

    .line 213
    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 220
    :goto_5a
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 225
    :goto_5e
    return v0

    .line 192
    :cond_5f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_16

    iget-boolean v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->k:Z

    if-eqz v0, :cond_16

    .line 193
    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->h()V

    goto :goto_16

    .line 204
    :cond_6d
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v0

    goto :goto_39

    .line 215
    :cond_72
    if-le v0, v5, :cond_7c

    .line 216
    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget-boolean v1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->f:Z

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->setCurrentItem(IZ)V

    .line 218
    :cond_7c
    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_5a

    .line 223
    :cond_84
    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 225
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5e
.end method

.method public getDirection()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getInterval()J
    .registers 3

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a:J

    return-wide v0
.end method

.method public getSlideBorderMode()I
    .registers 2

    .prologue
    .line 334
    iget v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->e:I

    return v0
.end method

.method public h()V
    .registers 7

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->j:Z

    .line 94
    iget-wide v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->n:Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;->getDuration()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->g:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->h:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a(J)V

    .line 95
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->j:Z

    .line 112
    iget-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    return-void
.end method

.method public j()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->getCurrentItem()I

    move-result v1

    .line 159
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v2

    if-gt v2, v3, :cond_12

    .line 175
    :cond_11
    :goto_11
    return-void

    .line 163
    :cond_12
    iget v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b:I

    if-nez v0, :cond_26

    add-int/lit8 v0, v1, -0x1

    .line 164
    :goto_18
    if-gez v0, :cond_29

    .line 165
    iget-boolean v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->c:Z

    if-eqz v0, :cond_11

    .line 166
    add-int/lit8 v0, v2, -0x1

    iget-boolean v1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->f:Z

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_11

    .line 163
    :cond_26
    add-int/lit8 v0, v1, 0x1

    goto :goto_18

    .line 168
    :cond_29
    if-ne v0, v2, :cond_36

    .line 169
    iget-boolean v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->c:Z

    if-eqz v0, :cond_11

    .line 170
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->f:Z

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_11

    .line 173
    :cond_36
    invoke-virtual {p0, v0, v3}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_11
.end method

.method public setAutoScrollDurationFactor(D)V
    .registers 4

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->g:D

    .line 127
    return-void
.end method

.method public setBorderAnimation(Z)V
    .registers 2

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->f:Z

    .line 363
    return-void
.end method

.method public setCycle(Z)V
    .registers 2

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->c:Z

    .line 307
    return-void
.end method

.method public setDirection(I)V
    .registers 2

    .prologue
    .line 288
    iput p1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b:I

    .line 289
    return-void
.end method

.method public setInterval(J)V
    .registers 4

    .prologue
    .line 270
    iput-wide p1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a:J

    .line 271
    return-void
.end method

.method public setSlideBorderMode(I)V
    .registers 2

    .prologue
    .line 344
    iput p1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->e:I

    .line 345
    return-void
.end method

.method public setStopScrollWhenTouch(Z)V
    .registers 2

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->d:Z

    .line 325
    return-void
.end method

.method public setSwipeScrollDurationFactor(D)V
    .registers 4

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->h:D

    .line 120
    return-void
.end method
