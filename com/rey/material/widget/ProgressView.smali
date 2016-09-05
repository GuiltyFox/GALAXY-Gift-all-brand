.class public Lcom/rey/material/widget/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"

# interfaces
.implements Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;


# instance fields
.field protected a:I

.field protected b:I

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/ProgressView;->b:I

    .line 24
    iput-boolean v1, p0, Lcom/rey/material/widget/ProgressView;->c:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/rey/material/widget/ProgressView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/ProgressView;->b:I

    .line 24
    iput-boolean v1, p0, Lcom/rey/material/widget/ProgressView;->c:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    .line 45
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/rey/material/widget/ProgressView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/ProgressView;->b:I

    .line 24
    iput-boolean v1, p0, Lcom/rey/material/widget/ProgressView;->c:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    .line 51
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/rey/material/widget/ProgressView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/ProgressView;->b:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->c:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/ProgressView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method private a(Z)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 73
    iget-object v2, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_7

    .line 79
    :cond_6
    :goto_6
    return v0

    .line 76
    :cond_7
    if-eqz p1, :cond_11

    .line 77
    iget-object v2, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Lcom/rey/material/drawable/CircularProgressDrawable;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 79
    :cond_11
    iget-object v2, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Lcom/rey/material/drawable/LinearProgressDrawable;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 244
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 245
    :cond_b
    return-void
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/rey/material/util/ViewUtil;->a(Landroid/view/View;I)V

    .line 69
    invoke-virtual {p0}, Lcom/rey/material/widget/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/ProgressView;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/ProgressView;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    invoke-virtual {p0}, Lcom/rey/material/widget/ProgressView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 64
    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/ThemeManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/ProgressView;->a:I

    .line 65
    :cond_f
    return-void
.end method

.method public a(Lcom/rey/material/app/ThemeManager$OnThemeChangedEvent;)V
    .registers 4

    .prologue
    .line 147
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    iget v1, p0, Lcom/rey/material/widget/ProgressView;->a:I

    invoke-virtual {v0, v1}, Lcom/rey/material/app/ThemeManager;->a(I)I

    move-result v0

    .line 148
    iget v1, p0, Lcom/rey/material/widget/ProgressView;->b:I

    if-eq v1, v0, :cond_15

    .line 149
    iput v0, p0, Lcom/rey/material/widget/ProgressView;->b:I

    .line 150
    iget v0, p0, Lcom/rey/material/widget/ProgressView;->b:I

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/ProgressView;->a(I)V

    .line 152
    :cond_15
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 252
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 253
    :cond_b
    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    .prologue
    .line 83
    sget-object v0, Lcom/rey/material/R$styleable;->ProgressView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v3, -0x1

    .line 87
    const/high16 v2, -0x40800000    # -1.0f

    .line 88
    const/high16 v1, -0x40800000    # -1.0f

    .line 90
    const/4 v0, 0x0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    move v5, v0

    :goto_12
    if-ge v5, v7, :cond_79

    .line 91
    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 93
    sget v8, Lcom/rey/material/R$styleable;->ProgressView_pv_autostart:I

    if-ne v0, v8, :cond_2f

    .line 94
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->c:Z

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    .line 90
    :goto_27
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_12

    .line 95
    :cond_2f
    sget v8, Lcom/rey/material/R$styleable;->ProgressView_pv_circular:I

    if-ne v0, v8, :cond_3f

    .line 96
    const/4 v8, 0x1

    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_27

    .line 97
    :cond_3f
    sget v8, Lcom/rey/material/R$styleable;->ProgressView_pv_progressStyle:I

    if-ne v0, v8, :cond_4e

    .line 98
    const/4 v4, 0x0

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v9, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v9

    goto :goto_27

    .line 99
    :cond_4e
    sget v8, Lcom/rey/material/R$styleable;->ProgressView_pv_progressMode:I

    if-ne v0, v8, :cond_5d

    .line 100
    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    move v3, v4

    move v9, v2

    move v2, v0

    move v0, v1

    move v1, v9

    goto :goto_27

    .line 101
    :cond_5d
    sget v8, Lcom/rey/material/R$styleable;->ProgressView_pv_progress:I

    if-ne v0, v8, :cond_6c

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move v2, v3

    move v3, v4

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_27

    .line 103
    :cond_6c
    sget v8, Lcom/rey/material/R$styleable;->ProgressView_pv_secondaryProgress:I

    if-ne v0, v8, :cond_119

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_27

    .line 107
    :cond_79
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    const/4 v5, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    invoke-direct {p0, v0}, Lcom/rey/material/widget/ProgressView;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 112
    iput v4, p0, Lcom/rey/material/widget/ProgressView;->e:I

    .line 113
    iget v0, p0, Lcom/rey/material/widget/ProgressView;->e:I

    if-nez v0, :cond_93

    .line 114
    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    if-eqz v0, :cond_de

    sget v0, Lcom/rey/material/R$style;->Material_Drawable_CircularProgress:I

    :goto_91
    iput v0, p0, Lcom/rey/material/widget/ProgressView;->e:I

    .line 116
    :cond_93
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e1

    const/4 v0, 0x1

    .line 117
    :goto_a2
    iget-boolean v4, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    if-eqz v4, :cond_e3

    new-instance v4, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    iget v5, p0, Lcom/rey/material/widget/ProgressView;->e:I

    invoke-direct {v4, p1, v5}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->a()Lcom/rey/material/drawable/CircularProgressDrawable;

    move-result-object v4

    :goto_b1
    iput-object v4, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v4, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v4}, Lcom/rey/material/util/ViewUtil;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    move v4, v0

    .line 128
    :goto_b9
    if-ltz v3, :cond_c8

    .line 129
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/rey/material/drawable/CircularProgressDrawable;

    if-eqz v0, :cond_111

    .line 130
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/CircularProgressDrawable;

    invoke-virtual {v0, v3}, Lcom/rey/material/drawable/CircularProgressDrawable;->a(I)V

    .line 135
    :cond_c8
    :goto_c8
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_d0

    .line 136
    invoke-virtual {p0, v2}, Lcom/rey/material/widget/ProgressView;->setProgress(F)V

    .line 138
    :cond_d0
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_d8

    .line 139
    invoke-virtual {p0, v1}, Lcom/rey/material/widget/ProgressView;->setSecondaryProgress(F)V

    .line 141
    :cond_d8
    if-eqz v4, :cond_dd

    .line 142
    invoke-virtual {p0}, Lcom/rey/material/widget/ProgressView;->a()V

    .line 143
    :cond_dd
    return-void

    .line 114
    :cond_de
    sget v0, Lcom/rey/material/R$style;->Material_Drawable_LinearProgress:I

    goto :goto_91

    .line 116
    :cond_e1
    const/4 v0, 0x0

    goto :goto_a2

    .line 117
    :cond_e3
    new-instance v4, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    iget v5, p0, Lcom/rey/material/widget/ProgressView;->e:I

    invoke-direct {v4, p1, v5}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a()Lcom/rey/material/drawable/LinearProgressDrawable;

    move-result-object v4

    goto :goto_b1

    .line 120
    :cond_ef
    iget v0, p0, Lcom/rey/material/widget/ProgressView;->e:I

    if-eq v0, v4, :cond_10f

    .line 121
    iput v4, p0, Lcom/rey/material/widget/ProgressView;->e:I

    .line 122
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/rey/material/drawable/CircularProgressDrawable;

    if-eqz v0, :cond_106

    .line 123
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/CircularProgressDrawable;

    iget v4, p0, Lcom/rey/material/widget/ProgressView;->e:I

    invoke-virtual {v0, p1, v4}, Lcom/rey/material/drawable/CircularProgressDrawable;->a(Landroid/content/Context;I)V

    move v4, v5

    goto :goto_b9

    .line 125
    :cond_106
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/LinearProgressDrawable;

    iget v4, p0, Lcom/rey/material/widget/ProgressView;->e:I

    invoke-virtual {v0, p1, v4}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/content/Context;I)V

    :cond_10f
    move v4, v5

    goto :goto_b9

    .line 132
    :cond_111
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/LinearProgressDrawable;

    invoke-virtual {v0, v3}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(I)V

    goto :goto_c8

    :cond_119
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_27
.end method

.method public getProgress()F
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    if-eqz v0, :cond_d

    .line 202
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/CircularProgressDrawable;->b()F

    move-result v0

    .line 204
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/LinearProgressDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/LinearProgressDrawable;->b()F

    move-result v0

    goto :goto_c
.end method

.method public getProgressMode()I
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    if-eqz v0, :cond_d

    .line 192
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/CircularProgressDrawable;->a()I

    move-result v0

    .line 194
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/LinearProgressDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/LinearProgressDrawable;->a()I

    move-result v0

    goto :goto_c
.end method

.method public getSecondaryProgress()F
    .registers 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    if-eqz v0, :cond_d

    .line 212
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/CircularProgressDrawable;->c()F

    move-result v0

    .line 214
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/LinearProgressDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/LinearProgressDrawable;->c()F

    move-result v0

    goto :goto_c
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 172
    invoke-virtual {p0}, Lcom/rey/material/widget/ProgressView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->c:Z

    if-eqz v0, :cond_10

    .line 173
    invoke-virtual {p0}, Lcom/rey/material/widget/ProgressView;->a()V

    .line 174
    :cond_10
    iget v0, p0, Lcom/rey/material/widget/ProgressView;->a:I

    if-eqz v0, :cond_1f

    .line 175
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/ThemeManager;->a(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/ProgressView;->a(Lcom/rey/material/app/ThemeManager$OnThemeChangedEvent;)V

    .line 178
    :cond_1f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->c:Z

    if-eqz v0, :cond_7

    .line 183
    invoke-virtual {p0}, Lcom/rey/material/widget/ProgressView;->b()V

    .line 185
    :cond_7
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 186
    iget v0, p0, Lcom/rey/material/widget/ProgressView;->a:I

    if-eqz v0, :cond_15

    .line 187
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/ThemeManager;->b(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 188
    :cond_15
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 158
    if-eq p1, p0, :cond_6

    .line 167
    :cond_5
    :goto_5
    return-void

    .line 161
    :cond_6
    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->c:Z

    if-eqz v0, :cond_5

    .line 162
    const/16 v0, 0x8

    if-eq p2, v0, :cond_11

    const/4 v0, 0x4

    if-ne p2, v0, :cond_15

    .line 163
    :cond_11
    invoke-virtual {p0}, Lcom/rey/material/widget/ProgressView;->b()V

    goto :goto_5

    .line 165
    :cond_15
    invoke-virtual {p0}, Lcom/rey/material/widget/ProgressView;->a()V

    goto :goto_5
.end method

.method public setProgress(F)V
    .registers 3

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    if-eqz v0, :cond_c

    .line 223
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/rey/material/drawable/CircularProgressDrawable;->a(F)V

    .line 226
    :goto_b
    return-void

    .line 225
    :cond_c
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/LinearProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(F)V

    goto :goto_b
.end method

.method public setSecondaryProgress(F)V
    .registers 3

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/rey/material/widget/ProgressView;->d:Z

    if-eqz v0, :cond_c

    .line 234
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/rey/material/drawable/CircularProgressDrawable;->b(F)V

    .line 237
    :goto_b
    return-void

    .line 236
    :cond_c
    iget-object v0, p0, Lcom/rey/material/widget/ProgressView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/rey/material/drawable/LinearProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/rey/material/drawable/LinearProgressDrawable;->b(F)V

    goto :goto_b
.end method
