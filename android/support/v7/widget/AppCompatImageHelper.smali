.class public Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 35
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 36
    return-void
.end method


# virtual methods
.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 39
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 42
    :try_start_e
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_android_src:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1b

    .line 44
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_1b
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 48
    if-eq v0, v3, :cond_37

    .line 49
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_37

    .line 51
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_37
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_42

    .line 57
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_46

    .line 60
    :cond_42
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 62
    return-void

    .line 60
    :catchall_46
    move-exception v0

    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v0
.end method

.method public setImageResource(I)V
    .registers 4

    .prologue
    .line 65
    if-eqz p1, :cond_28

    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    :goto_12
    if-eqz v0, :cond_17

    .line 70
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_17
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_1c
    return-void

    .line 66
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_12

    .line 74
    :cond_28
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c
.end method
