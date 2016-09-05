.class Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private c:Landroid/support/v7/widget/TintInfo;

.field private d:Landroid/support/v7/widget/TintInfo;

.field private e:Landroid/support/v7/widget/TintInfo;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    .line 41
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 42
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 150
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/TintInfo;

    if-nez v1, :cond_c

    .line 151
    new-instance v1, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v1}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/TintInfo;

    .line 153
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->e:Landroid/support/v7/widget/TintInfo;

    .line 154
    invoke-virtual {v1}, Landroid/support/v7/widget/TintInfo;->a()V

    .line 156
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->A(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_1d

    .line 158
    iput-boolean v0, v1, Landroid/support/v7/widget/TintInfo;->d:Z

    .line 159
    iput-object v2, v1, Landroid/support/v7/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    .line 161
    :cond_1d
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->B(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_29

    .line 163
    iput-boolean v0, v1, Landroid/support/v7/widget/TintInfo;->c:Z

    .line 164
    iput-object v2, v1, Landroid/support/v7/widget/TintInfo;->b:Landroid/graphics/PorterDuff$Mode;

    .line 167
    :cond_29
    iget-boolean v2, v1, Landroid/support/v7/widget/TintInfo;->d:Z

    if-nez v2, :cond_31

    iget-boolean v2, v1, Landroid/support/v7/widget/TintInfo;->c:Z

    if-eqz v2, :cond_3b

    .line 168
    :cond_31
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 172
    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method


# virtual methods
.method a()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method a(I)V
    .registers 4

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_10
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b(Landroid/content/res/ColorStateList;)V

    .line 75
    return-void

    .line 72
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    .line 86
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->d:Z

    .line 89
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c()V

    .line 90
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 98
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    .line 100
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->b:Landroid/graphics/PorterDuff$Mode;

    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->c:Z

    .line 103
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c()V

    .line 104
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b(Landroid/content/res/ColorStateList;)V

    .line 80
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 48
    :try_start_d
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_2d

    .line 52
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b(Landroid/content/res/ColorStateList;)V

    .line 55
    :cond_2d
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 59
    :cond_40
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_59
    .catchall {:try_start_d .. :try_end_59} :catchall_5d

    .line 66
    :cond_59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void

    .line 66
    :catchall_5d
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    .line 132
    if-eqz p1, :cond_1a

    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_d

    .line 134
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:Landroid/support/v7/widget/TintInfo;

    .line 136
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->d:Z

    .line 141
    :goto_16
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c()V

    .line 142
    return-void

    .line 139
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:Landroid/support/v7/widget/TintInfo;

    goto :goto_16
.end method

.method c()V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_14

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_15

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 129
    :cond_14
    :goto_14
    return-void

    .line 121
    :cond_15
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_25

    .line 122
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->d:Landroid/support/v7/widget/TintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_14

    .line 124
    :cond_25
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_14

    .line 125
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c:Landroid/support/v7/widget/TintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_14
.end method
