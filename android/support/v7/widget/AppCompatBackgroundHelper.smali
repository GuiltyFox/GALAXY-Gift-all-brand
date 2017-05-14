.class Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private c:I

.field private d:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private f:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:I

    .line 41
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    .line 42
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 43
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 195
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->f:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v1, :cond_d

    .line 196
    new-instance v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->f:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 198
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->f:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 199
    invoke-virtual {v1}, Landroid/support/v7/widget/TintInfo;->a()V

    .line 201
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->A(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_1e

    .line 203
    iput-boolean v0, v1, Landroid/support/v7/widget/TintInfo;->e:Z

    .line 204
    iput-object v2, v1, Landroid/support/v7/widget/TintInfo;->b:Landroid/content/res/ColorStateList;

    .line 206
    :cond_1e
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->B(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 207
    if-eqz v2, :cond_2a

    .line 208
    iput-boolean v0, v1, Landroid/support/v7/widget/TintInfo;->d:Z

    .line 209
    iput-object v2, v1, Landroid/support/v7/widget/TintInfo;->c:Landroid/graphics/PorterDuff$Mode;

    .line 212
    :cond_2a
    iget-boolean v2, v1, Landroid/support/v7/widget/TintInfo;->e:Z

    if-nez v2, :cond_32

    iget-boolean v2, v1, Landroid/support/v7/widget/TintInfo;->d:Z

    if-eqz v2, :cond_3c

    .line 213
    :cond_32
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 217
    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private d()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 116
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->e:Z

    if-eqz v1, :cond_3b

    .line 117
    iget v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:I

    if-ltz v1, :cond_28

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->a:Landroid/content/res/ColorStateList;

    .line 120
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_28

    .line 123
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object v1, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->b:Landroid/content/res/ColorStateList;

    .line 134
    :goto_27
    return v0

    .line 129
    :cond_28
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->b:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->a:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_3b

    .line 130
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->a:Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->b:Landroid/content/res/ColorStateList;

    goto :goto_27

    .line 134
    :cond_3b
    const/4 v0, 0x0

    goto :goto_27
.end method


# virtual methods
.method a()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->b:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method a(I)V
    .registers 4

    .prologue
    .line 74
    iput p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:I

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 76
    :goto_12
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c()V

    .line 83
    :cond_1e
    return-void

    .line 77
    :cond_1f
    const/4 v0, 0x0

    goto :goto_12
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_c

    .line 97
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 102
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->a:Landroid/content/res/ColorStateList;

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->b:Landroid/content/res/ColorStateList;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->e:Z

    .line 106
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c()V

    .line 109
    :cond_22
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_c

    .line 143
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 145
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->c:Landroid/graphics/PorterDuff$Mode;

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->d:Z

    .line 148
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c()V

    .line 149
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:I

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b(Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c()V

    .line 93
    :cond_10
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 49
    :try_start_d
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 50
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:I

    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_31

    .line 55
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b(Landroid/content/res/ColorStateList;)V

    .line 58
    :cond_31
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 60
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_44
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 64
    invoke-static {v2, v3}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5d
    .catchall {:try_start_d .. :try_end_5d} :catchall_61

    .line 69
    :cond_5d
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 71
    return-void

    .line 69
    :catchall_61
    move-exception v0

    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->c:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 177
    if-eqz p1, :cond_1b

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_e

    .line 179
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 181
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->b:Landroid/content/res/ColorStateList;

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->e:Z

    .line 186
    :goto_17
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c()V

    .line 187
    return-void

    .line 184
    :cond_1b
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    goto :goto_17
.end method

.method c()V
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_14

    .line 158
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_15

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 174
    :cond_14
    :goto_14
    return-void

    .line 166
    :cond_15
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_25

    .line 167
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 167
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_14

    .line 169
    :cond_25
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_14

    .line 170
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    .line 171
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 170
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_14
.end method
