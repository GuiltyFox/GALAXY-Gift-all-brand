.class public Landroid/support/v7/widget/AppCompatRadioButton;
.super Landroid/widget/RadioButton;
.source "AppCompatRadioButton.java"

# interfaces
.implements Landroid/support/v4/widget/TintableCompoundButton;


# instance fields
.field private mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

.field private mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 54
    sget v0, Landroid/support/v7/appcompat/R$attr;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 58
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 60
    new-instance v0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;Landroid/support/v7/widget/AppCompatDrawableManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a(Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .registers 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 82
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a(I)I

    move-result v0

    :cond_e
    return v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setButtonDrawable(I)V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRadioButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_e
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void

    .line 74
    :cond_12
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_c

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->c()V

    .line 70
    :cond_c
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_9
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 119
    :cond_9
    return-void
.end method
