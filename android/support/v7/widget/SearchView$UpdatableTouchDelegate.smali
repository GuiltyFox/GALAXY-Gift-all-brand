.class Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1807
    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1808
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->e:I

    .line 1809
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->b:Landroid/graphics/Rect;

    .line 1810
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->d:Landroid/graphics/Rect;

    .line 1811
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->c:Landroid/graphics/Rect;

    .line 1812
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1813
    iput-object p3, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->a:Landroid/view/View;

    .line 1814
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .prologue
    .line 1817
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1818
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1819
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->d:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->e:I

    neg-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->e:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 1820
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1821
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v3, v2

    .line 1826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v4, v2

    .line 1831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_6e

    :cond_13
    move v2, v0

    .line 1852
    :cond_14
    :goto_14
    if-eqz v2, :cond_3b

    .line 1853
    if-eqz v1, :cond_5b

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1857
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->a:Landroid/view/View;

    .line 1858
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1857
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1864
    :goto_35
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1866
    :cond_3b
    return v0

    .line 1833
    :pswitch_3c
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->b:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1834
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->f:Z

    move v2, v1

    .line 1835
    goto :goto_14

    .line 1840
    :pswitch_48
    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->f:Z

    .line 1841
    if-eqz v2, :cond_14

    .line 1842
    iget-object v5, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->d:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_14

    move v1, v0

    .line 1843
    goto :goto_14

    .line 1848
    :pswitch_56
    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->f:Z

    .line 1849
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->f:Z

    goto :goto_14

    .line 1861
    :cond_5b
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_35

    .line 1831
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_48
        :pswitch_48
        :pswitch_56
    .end packed-switch
.end method
