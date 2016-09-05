.class public Lcom/rey/material/widget/TextView;
.super Landroid/widget/TextView;
.source "TextView.java"

# interfaces
.implements Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;


# instance fields
.field protected a:I

.field protected b:I

.field private c:Lcom/rey/material/widget/RippleManager;

.field private d:Lcom/rey/material/widget/TextView$OnSelectionChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/TextView;->b:I

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/rey/material/widget/TextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/TextView;->b:I

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rey/material/widget/TextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method


# virtual methods
.method protected a()Lcom/rey/material/widget/RippleManager;
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/rey/material/widget/TextView;->c:Lcom/rey/material/widget/RippleManager;

    if-nez v0, :cond_13

    .line 116
    const-class v1, Lcom/rey/material/widget/RippleManager;

    monitor-enter v1

    .line 117
    :try_start_7
    iget-object v0, p0, Lcom/rey/material/widget/TextView;->c:Lcom/rey/material/widget/RippleManager;

    if-nez v0, :cond_12

    .line 118
    new-instance v0, Lcom/rey/material/widget/RippleManager;

    invoke-direct {v0}, Lcom/rey/material/widget/RippleManager;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/TextView;->c:Lcom/rey/material/widget/RippleManager;

    .line 119
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 122
    :cond_13
    iget-object v0, p0, Lcom/rey/material/widget/TextView;->c:Lcom/rey/material/widget/RippleManager;

    return-object v0

    .line 119
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
    .line 61
    invoke-static {p0, p1}, Lcom/rey/material/util/ViewUtil;->a(Landroid/view/View;I)V

    .line 62
    invoke-virtual {p0}, Lcom/rey/material/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/TextView;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .prologue
    .line 54
    invoke-static {p0, p2, p3, p4}, Lcom/rey/material/util/ViewUtil;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/TextView;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    invoke-virtual {p0}, Lcom/rey/material/widget/TextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 57
    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/ThemeManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/TextView;->a:I

    .line 58
    :cond_12
    return-void
.end method

.method public a(Lcom/rey/material/app/ThemeManager$OnThemeChangedEvent;)V
    .registers 4

    .prologue
    .line 81
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    iget v1, p0, Lcom/rey/material/widget/TextView;->a:I

    invoke-virtual {v0, v1}, Lcom/rey/material/app/ThemeManager;->a(I)I

    move-result v0

    .line 82
    iget v1, p0, Lcom/rey/material/widget/TextView;->b:I

    if-eq v1, v0, :cond_15

    .line 83
    iput v0, p0, Lcom/rey/material/widget/TextView;->b:I

    .line 84
    iget v0, p0, Lcom/rey/material/widget/TextView;->b:I

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/TextView;->a(I)V

    .line 86
    :cond_15
    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/rey/material/widget/TextView;->a()Lcom/rey/material/widget/RippleManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rey/material/widget/RippleManager;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 91
    iget v0, p0, Lcom/rey/material/widget/TextView;->a:I

    if-eqz v0, :cond_12

    .line 92
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/ThemeManager;->a(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/TextView;->a(Lcom/rey/material/app/ThemeManager$OnThemeChangedEvent;)V

    .line 95
    :cond_12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 100
    invoke-static {p0}, Lcom/rey/material/widget/RippleManager;->a(Landroid/view/View;)V

    .line 101
    iget v0, p0, Lcom/rey/material/widget/TextView;->a:I

    if-eqz v0, :cond_11

    .line 102
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/ThemeManager;->b(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 103
    :cond_11
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 4

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 150
    iget-object v0, p0, Lcom/rey/material/widget/TextView;->d:Lcom/rey/material/widget/TextView$OnSelectionChangedListener;

    if-eqz v0, :cond_c

    .line 151
    iget-object v0, p0, Lcom/rey/material/widget/TextView;->d:Lcom/rey/material/widget/TextView$OnSelectionChangedListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/rey/material/widget/TextView$OnSelectionChangedListener;->a(Landroid/view/View;II)V

    .line 152
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 139
    invoke-virtual {p0}, Lcom/rey/material/widget/TextView;->a()Lcom/rey/material/widget/RippleManager;

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
    .line 107
    invoke-virtual {p0}, Lcom/rey/material/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lcom/rey/material/drawable/RippleDrawable;

    if-eqz v1, :cond_12

    instance-of v1, p1, Lcom/rey/material/drawable/RippleDrawable;

    if-nez v1, :cond_12

    .line 109
    check-cast v0, Lcom/rey/material/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Lcom/rey/material/drawable/RippleDrawable;->a(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :goto_11
    return-void

    .line 111
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/rey/material/widget/TextView;->a()Lcom/rey/material/widget/RippleManager;

    move-result-object v0

    .line 128
    if-ne p1, v0, :cond_a

    .line 129
    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :goto_9
    return-void

    .line 131
    :cond_a
    invoke-virtual {v0, p1}, Lcom/rey/material/widget/RippleManager;->a(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9
.end method

.method public setTextAppearance(I)V
    .registers 2

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/rey/material/util/ViewUtil;->a(Landroid/widget/TextView;I)V

    .line 72
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 76
    invoke-static {p0, p2}, Lcom/rey/material/util/ViewUtil;->a(Landroid/widget/TextView;I)V

    .line 77
    return-void
.end method
