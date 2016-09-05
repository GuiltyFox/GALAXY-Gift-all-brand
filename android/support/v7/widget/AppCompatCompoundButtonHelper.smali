.class Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"


# instance fields
.field private final a:Landroid/widget/CompoundButton;

.field private final b:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->c:Landroid/content/res/ColorStateList;

    .line 37
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->d:Landroid/graphics/PorterDuff$Mode;

    .line 38
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->e:Z

    .line 39
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->f:Z

    .line 51
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    .line 52
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 53
    return-void
.end method


# virtual methods
.method a(I)I
    .registers 4

    .prologue
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_13

    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroid/support/v4/widget/CompoundButtonCompat;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_13

    .line 141
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 144
    :cond_13
    return p1
.end method

.method a()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->c:Landroid/content/res/ColorStateList;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->e:Z

    .line 86
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->d()V

    .line 87
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 94
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->d:Landroid/graphics/PorterDuff$Mode;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->f:Z

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->d()V

    .line 98
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->CompoundButton:[I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    :try_start_d
    sget v0, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 60
    sget v0, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_android_button:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 62
    if-eqz v0, :cond_2f

    .line 63
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->b:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_2f
    sget v0, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/widget/CompoundButtonCompat;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_42
    sget v0, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 72
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/widget/CompoundButtonCompat;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5b
    .catchall {:try_start_d .. :try_end_5b} :catchall_5f

    .line 78
    :cond_5b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void

    .line 78
    :catchall_5f
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->d:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method c()V
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->g:Z

    if-eqz v0, :cond_8

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->g:Z

    .line 112
    :goto_7
    return-void

    .line 110
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->g:Z

    .line 111
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->d()V

    goto :goto_7
.end method

.method d()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroid/support/v4/widget/CompoundButtonCompat;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_3e

    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->e:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->f:Z

    if-eqz v1, :cond_3e

    .line 118
    :cond_10
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->e:Z

    if-eqz v1, :cond_21

    .line 121
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->c:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 123
    :cond_21
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->f:Z

    if-eqz v1, :cond_2a

    .line 124
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 128
    :cond_2a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 129
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 131
    :cond_39
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_3e
    return-void
.end method
