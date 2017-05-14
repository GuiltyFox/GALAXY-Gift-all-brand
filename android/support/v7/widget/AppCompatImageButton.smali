.class public Landroid/support/v7/widget/AppCompatImageButton;
.super Landroid/widget/ImageButton;
.source "AppCompatImageButton.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 53
    sget v0, Landroid/support/v7/appcompat/R$attr;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 57
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a(Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_c

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->c()V

    .line 146
    :cond_c
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 111
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 137
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_c
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_c

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a(I)V

    .line 78
    :cond_c
    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 70
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a(Landroid/content/res/ColorStateList;)V

    .line 99
    :cond_9
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    :cond_9
    return-void
.end method
