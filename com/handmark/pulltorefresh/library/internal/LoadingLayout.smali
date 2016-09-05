.class public abstract Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final a:Landroid/view/animation/Interpolator;


# instance fields
.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/ProgressBar;

.field protected final d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field protected final e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

.field private f:Landroid/widget/FrameLayout;

.field private g:Z

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .registers 8

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 69
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    .line 71
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->a:[I

    invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_19e

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$layout;->bz_pull_to_refresh_header_vertical:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    :goto_1b
    sget v0, Lcom/bzbs/lib/survey/R$id;->fl_inner:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    .line 82
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/bzbs/lib/survey/R$id;->pull_to_refresh_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/bzbs/lib/survey/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    .line 84
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/bzbs/lib/survey/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/bzbs/lib/survey/R$id;->pull_to_refresh_image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1a4

    .line 101
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    if-ne p3, v1, :cond_15b

    const/16 v1, 0x50

    :goto_6e
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    sget v0, Lcom/bzbs/lib/survey/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    .line 105
    sget v0, Lcom/bzbs/lib/survey/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    .line 106
    sget v0, Lcom/bzbs/lib/survey/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 110
    :goto_88
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 111
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_9b

    .line 113
    invoke-static {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_9b
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 118
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 119
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 120
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextAppearance(I)V

    .line 122
    :cond_b2
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 123
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 124
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 125
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextAppearance(I)V

    .line 129
    :cond_c9
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 130
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_dc

    .line 132
    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b(Landroid/content/res/ColorStateList;)V

    .line 135
    :cond_dc
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 136
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_ef

    .line 138
    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(Landroid/content/res/ColorStateList;)V

    .line 143
    :cond_ef
    const/4 v0, 0x0

    .line 144
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 145
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    :cond_fe
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1aa

    .line 153
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 154
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    :cond_117
    :goto_117
    if-nez v0, :cond_125

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    :cond_125
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b(Landroid/graphics/drawable/Drawable;)V

    .line 179
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h()V

    .line 180
    return-void

    .line 73
    :pswitch_12c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$layout;->bz_pull_to_refresh_header_horizontal:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1b

    .line 91
    :pswitch_137
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    if-ne p3, v1, :cond_159

    const/16 v1, 0x30

    :goto_13d
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    sget v0, Lcom/bzbs/lib/survey/R$string;->pull_to_refresh_from_bottom_pull_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    .line 95
    sget v0, Lcom/bzbs/lib/survey/R$string;->pull_to_refresh_from_bottom_refreshing_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    .line 96
    sget v0, Lcom/bzbs/lib/survey/R$string;->pull_to_refresh_from_bottom_release_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    goto/16 :goto_88

    .line 91
    :cond_159
    const/4 v1, 0x3

    goto :goto_13d

    .line 101
    :cond_15b
    const/4 v1, 0x5

    goto/16 :goto_6e

    .line 155
    :cond_15e
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 156
    const-string/jumbo v0, "ptrDrawableTop"

    const-string/jumbo v1, "ptrDrawableStart"

    invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/Utils;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_117

    .line 162
    :pswitch_176
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 163
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_117

    .line 164
    :cond_185
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 165
    const-string/jumbo v0, "ptrDrawableBottom"

    const-string/jumbo v1, "ptrDrawableEnd"

    invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/Utils;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_117

    .line 71
    :pswitch_data_19e
    .packed-switch 0x1
        :pswitch_12c
    .end packed-switch

    .line 89
    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_137
    .end packed-switch

    .line 150
    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_176
    .end packed-switch
.end method

.method private a(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 370
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 372
    :cond_9
    return-void
.end method

.method private b(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 385
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 387
    :cond_9
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 388
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 390
    :cond_12
    return-void
.end method

.method private setSubTextAppearance(I)V
    .registers 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 364
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 366
    :cond_d
    return-void
.end method

.method private setTextAppearance(I)V
    .registers 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 376
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 378
    :cond_d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 379
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 381
    :cond_1a
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(F)V
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected abstract b()V
.end method

.method public final b(F)V
    .registers 3

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    if-nez v0, :cond_7

    .line 221
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(F)V

    .line 223
    :cond_7
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    .line 293
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(Landroid/graphics/drawable/Drawable;)V

    .line 294
    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 227
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_b
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a()V

    .line 232
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_b
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    if-eqz v0, :cond_26

    .line 240
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 246
    :goto_1a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 247
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_25
    return-void

    .line 243
    :cond_26
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b()V

    goto :goto_1a
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 253
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_b
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c()V

    .line 258
    return-void
.end method

.method public final getContentSize()I
    .registers 3

    .prologue
    .line 195
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->a:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 200
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_13
    return v0

    .line 197
    :pswitch_14
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_13

    .line 195
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final h()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 262
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_c
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Z

    if-eqz v0, :cond_38

    .line 267
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 273
    :goto_20
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 274
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 275
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    :cond_37
    :goto_37
    return-void

    .line 270
    :cond_38
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->d()V

    goto :goto_20

    .line 277
    :cond_3c
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_37
.end method

.method public final setHeight(I)V
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 184
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    .line 186
    return-void
.end method

.method public final setWidth(I)V
    .registers 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 190
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    .line 192
    return-void
.end method
