.class public Lcom/rey/material/widget/FrameLayout;
.super Landroid/widget/FrameLayout;
.source "FrameLayout.java"

# interfaces
.implements Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;


# instance fields
.field protected a:I

.field protected b:I

.field private c:Lcom/rey/material/widget/RippleManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/FrameLayout;->b:I

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/rey/material/widget/FrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/FrameLayout;->b:I

    .line 31
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/rey/material/widget/FrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/FrameLayout;->b:I

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rey/material/widget/FrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/FrameLayout;->b:I

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/FrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method


# virtual methods
.method protected a()Lcom/rey/material/widget/RippleManager;
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/rey/material/widget/FrameLayout;->c:Lcom/rey/material/widget/RippleManager;

    if-nez v0, :cond_13

    .line 99
    const-class v1, Lcom/rey/material/widget/RippleManager;

    monitor-enter v1

    .line 100
    :try_start_7
    iget-object v0, p0, Lcom/rey/material/widget/FrameLayout;->c:Lcom/rey/material/widget/RippleManager;

    if-nez v0, :cond_12

    .line 101
    new-instance v0, Lcom/rey/material/widget/RippleManager;

    invoke-direct {v0}, Lcom/rey/material/widget/RippleManager;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/FrameLayout;->c:Lcom/rey/material/widget/RippleManager;

    .line 102
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 105
    :cond_13
    iget-object v0, p0, Lcom/rey/material/widget/FrameLayout;->c:Lcom/rey/material/widget/RippleManager;

    return-object v0

    .line 102
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/rey/material/util/ViewUtil;->a(Landroid/view/View;I)V

    .line 55
    invoke-virtual {p0}, Lcom/rey/material/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/FrameLayout;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/FrameLayout;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    invoke-virtual {p0}, Lcom/rey/material/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 50
    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/ThemeManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/FrameLayout;->a:I

    .line 51
    :cond_f
    return-void
.end method

.method public a(Lcom/rey/material/app/ThemeManager$OnThemeChangedEvent;)V
    .registers 4

    .prologue
    .line 64
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    iget v1, p0, Lcom/rey/material/widget/FrameLayout;->a:I

    invoke-virtual {v0, v1}, Lcom/rey/material/app/ThemeManager;->a(I)I

    move-result v0

    .line 65
    iget v1, p0, Lcom/rey/material/widget/FrameLayout;->b:I

    if-eq v1, v0, :cond_15

    .line 66
    iput v0, p0, Lcom/rey/material/widget/FrameLayout;->b:I

    .line 67
    iget v0, p0, Lcom/rey/material/widget/FrameLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/FrameLayout;->a(I)V

    .line 69
    :cond_15
    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/rey/material/widget/FrameLayout;->a()Lcom/rey/material/widget/RippleManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rey/material/widget/RippleManager;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 74
    iget v0, p0, Lcom/rey/material/widget/FrameLayout;->a:I

    if-eqz v0, :cond_12

    .line 75
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/ThemeManager;->a(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/FrameLayout;->a(Lcom/rey/material/app/ThemeManager$OnThemeChangedEvent;)V

    .line 78
    :cond_12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 83
    invoke-static {p0}, Lcom/rey/material/widget/RippleManager;->a(Landroid/view/View;)V

    .line 84
    iget v0, p0, Lcom/rey/material/widget/FrameLayout;->a:I

    if-eqz v0, :cond_11

    .line 85
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/ThemeManager;->b(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 86
    :cond_11
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 122
    invoke-virtual {p0}, Lcom/rey/material/widget/FrameLayout;->a()Lcom/rey/material/widget/RippleManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/rey/material/widget/RippleManager;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/rey/material/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    instance-of v1, v0, Lcom/rey/material/drawable/RippleDrawable;

    if-eqz v1, :cond_12

    instance-of v1, p1, Lcom/rey/material/drawable/RippleDrawable;

    if-nez v1, :cond_12

    .line 92
    check-cast v0, Lcom/rey/material/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Lcom/rey/material/drawable/RippleDrawable;->a(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_11
    return-void

    .line 94
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/rey/material/widget/FrameLayout;->a()Lcom/rey/material/widget/RippleManager;

    move-result-object v0

    .line 111
    if-ne p1, v0, :cond_a

    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :goto_9
    return-void

    .line 114
    :cond_a
    invoke-virtual {v0, p1}, Lcom/rey/material/widget/RippleManager;->a(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/rey/material/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9
.end method
