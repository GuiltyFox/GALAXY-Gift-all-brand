.class public Lcom/bzbs/lib/survey/control/CustomPager;
.super Landroid/support/v4/view/ViewPager;
.source "CustomPager.java"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/CustomPager;->d:Z

    .line 15
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/CustomPager;->d:Z

    if-eqz v0, :cond_9

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 32
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/CustomPager;->d:Z

    if-eqz v0, :cond_9

    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 23
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setPagingEnabled(Z)V
    .registers 2

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/CustomPager;->d:Z

    .line 37
    return-void
.end method
