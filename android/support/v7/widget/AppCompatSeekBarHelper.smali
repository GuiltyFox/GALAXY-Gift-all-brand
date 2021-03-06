.class Landroid/support/v7/widget/AppCompatSeekBarHelper;
.super Landroid/support/v7/widget/AppCompatProgressBarHelper;
.source "AppCompatSeekBarHelper.java"


# instance fields
.field private final a:Landroid/widget/SeekBar;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;)V

    .line 35
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->c:Landroid/content/res/ColorStateList;

    .line 36
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->d:Landroid/graphics/PorterDuff$Mode;

    .line 37
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->e:Z

    .line 38
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->f:Z

    .line 42
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    .line 43
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->e:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->f:Z

    if-eqz v0, :cond_41

    .line 125
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->e:Z

    if-eqz v0, :cond_23

    .line 128
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->c:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 131
    :cond_23
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->f:Z

    if-eqz v0, :cond_2e

    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 137
    :cond_2e
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 141
    :cond_41
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 161
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6b

    .line 162
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 163
    if-le v2, v0, :cond_6b

    .line 164
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 165
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 166
    if-ltz v1, :cond_66

    div-int/lit8 v1, v1, 0x2

    .line 167
    :goto_1d
    if-ltz v3, :cond_21

    div-int/lit8 v0, v3, 0x2

    .line 168
    :cond_21
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    neg-int v4, v1

    neg-int v5, v0

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    .line 171
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v2

    div-float v1, v0, v1

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    const/4 v0, 0x0

    :goto_58
    if-gt v0, v2, :cond_68

    .line 175
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_66
    move v1, v0

    .line 166
    goto :goto_1d

    .line 178
    :cond_68
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 181
    :cond_6b
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 80
    :cond_a
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    .line 82
    if-eqz p1, :cond_2e

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 85
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 88
    :cond_2b
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->d()V

    .line 91
    :cond_2e
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 92
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->a(Landroid/util/AttributeSet;I)V

    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 51
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_1e

    .line 53
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :cond_1e
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMark:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a(Landroid/graphics/drawable/Drawable;)V

    .line 59
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 60
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->d:Landroid/graphics/PorterDuff$Mode;

    .line 62
    iput-boolean v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->f:Z

    .line 65
    :cond_40
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 66
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->c:Landroid/content/res/ColorStateList;

    .line 67
    iput-boolean v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->e:Z

    .line 70
    :cond_52
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 72
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->d()V

    .line 73
    return-void
.end method

.method b()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 147
    :cond_9
    return-void
.end method

.method c()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->b:Landroid/graphics/drawable/Drawable;

    .line 151
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    .line 152
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 153
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    :cond_1b
    return-void
.end method
