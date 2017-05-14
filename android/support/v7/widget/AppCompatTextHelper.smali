.class Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# instance fields
.field final a:Landroid/widget/TextView;

.field private b:Landroid/support/v7/widget/TintInfo;

.field private c:Landroid/support/v7/widget/TintInfo;

.field private d:Landroid/support/v7/widget/TintInfo;

.field private e:Landroid/support/v7/widget/TintInfo;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method static a(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;
    .registers 3

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_c

    .line 33
    new-instance v0, Landroid/support/v7/widget/AppCompatTextHelperV17;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelperV17;-><init>(Landroid/widget/TextView;)V

    .line 35
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    goto :goto_b
.end method

.method protected static a(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
    .registers 6

    .prologue
    .line 173
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_11

    .line 175
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    .line 176
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->e:Z

    .line 177
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->b:Landroid/content/res/ColorStateList;

    .line 180
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method a()V
    .registers 4

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->b:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->c:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->d:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->e:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_36

    .line 157
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->b:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 159
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->c:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 160
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->d:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 161
    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->e:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 163
    :cond_36
    return-void
.end method

.method a(Landroid/content/Context;I)V
    .registers 6

    .prologue
    .line 126
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 128
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 133
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Z)V

    .line 135
    :cond_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_33

    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 136
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 139
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_33

    .line 142
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    :cond_33
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 146
    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
    .registers 4

    .prologue
    .line 166
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 169
    :cond_d
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 13

    .prologue
    const/16 v9, 0x17

    const/4 v1, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 51
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    .line 54
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    invoke-static {v5, p1, v3, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v3

    .line 56
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    invoke-virtual {v3, v4, v8}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    .line 58
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 59
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 60
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 59
    invoke-static {v5, v0, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->b:Landroid/support/v7/widget/TintInfo;

    .line 62
    :cond_2f
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 63
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 64
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 63
    invoke-static {v5, v0, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->c:Landroid/support/v7/widget/TintInfo;

    .line 66
    :cond_43
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 67
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 68
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 67
    invoke-static {v5, v0, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->d:Landroid/support/v7/widget/TintInfo;

    .line 70
    :cond_57
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 71
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 72
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 71
    invoke-static {v5, v0, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->e:Landroid/support/v7/widget/TintInfo;

    .line 74
    :cond_6b
    invoke-virtual {v3}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v7, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 83
    const/4 v4, 0x0

    .line 86
    if-eq v6, v8, :cond_e4

    .line 87
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v5, v6, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v6

    .line 88
    if-nez v7, :cond_e1

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 90
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    move v3, v0

    move v0, v1

    .line 92
    :goto_91
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v9, :cond_a3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 93
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 96
    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 98
    :cond_a3
    invoke-virtual {v6}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 102
    :goto_a6
    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v5, p1, v6, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    .line 104
    if-nez v7, :cond_bd

    sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 106
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    move v0, v1

    .line 108
    :cond_bd
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v9, :cond_cf

    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 109
    invoke-virtual {v5, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 112
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 114
    :cond_cf
    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 116
    if-eqz v4, :cond_d9

    .line 117
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 120
    :cond_d9
    if-nez v7, :cond_e0

    if-eqz v0, :cond_e0

    .line 121
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Z)V

    .line 123
    :cond_e0
    return-void

    :cond_e1
    move v0, v2

    move v3, v2

    goto :goto_91

    :cond_e4
    move v0, v2

    move v3, v2

    goto :goto_a6
.end method

.method a(Z)V
    .registers 5

    .prologue
    .line 149
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    new-instance v0, Landroid/support/v7/text/AllCapsTransformationMethod;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 150
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    .line 149
    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 152
    return-void

    .line 150
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
