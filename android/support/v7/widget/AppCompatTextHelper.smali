.class Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final b:[I

.field private static final c:[I


# instance fields
.field final a:Landroid/widget/TextView;

.field private d:Landroid/support/v7/widget/TintInfo;

.field private e:Landroid/support/v7/widget/TintInfo;

.field private f:Landroid/support/v7/widget/TintInfo;

.field private g:Landroid/support/v7/widget/TintInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/support/v7/widget/AppCompatTextHelper;->b:[I

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->textAllCaps:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatTextHelper;->c:[I

    return-void

    .line 39
    nop

    :array_14
    .array-data 4
        0x1010034
        0x101016f
        0x101016d
        0x1010170
        0x101016e
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method static a(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;
    .registers 3

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_c

    .line 34
    new-instance v0, Landroid/support/v7/widget/AppCompatTextHelperV17;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelperV17;-><init>(Landroid/widget/TextView;)V

    .line 36
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
    .line 148
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_11

    .line 150
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    .line 151
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->d:Z

    .line 152
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    .line 155
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
    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->d:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->e:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->f:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->g:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_36

    .line 132
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->d:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 134
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->e:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 135
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->f:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 136
    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->g:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 138
    :cond_36
    return-void
.end method

.method a(Landroid/content/Context;I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 112
    sget-object v0, Landroid/support/v7/widget/AppCompatTextHelper;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 118
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Z)V

    .line 120
    :cond_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
    .registers 4

    .prologue
    .line 141
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 144
    :cond_d
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 13

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 57
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    .line 60
    sget-object v3, Landroid/support/v7/widget/AppCompatTextHelper;->b:[I

    invoke-virtual {v4, p1, v3, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 61
    invoke-virtual {v3, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 64
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 65
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {v4, v0, v6}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/AppCompatTextHelper;->d:Landroid/support/v7/widget/TintInfo;

    .line 67
    :cond_29
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 68
    invoke-virtual {v3, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {v4, v0, v6}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/AppCompatTextHelper;->e:Landroid/support/v7/widget/TintInfo;

    .line 70
    :cond_39
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 71
    invoke-virtual {v3, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {v4, v0, v6}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/AppCompatTextHelper;->f:Landroid/support/v7/widget/TintInfo;

    .line 73
    :cond_49
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 74
    const/4 v6, 0x4

    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {v4, v0, v6}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->g:Landroid/support/v7/widget/TintInfo;

    .line 76
    :cond_5b
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-nez v0, :cond_9b

    .line 87
    if-eq v5, v7, :cond_a1

    .line 88
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 90
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 92
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v3, v0

    move v0, v1

    .line 94
    :goto_80
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    :goto_83
    sget-object v5, Landroid/support/v7/widget/AppCompatTextHelper;->c:[I

    invoke-virtual {v4, p1, v5, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 101
    invoke-virtual {v4, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 103
    :goto_93
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    if-eqz v1, :cond_9b

    .line 106
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AppCompatTextHelper;->a(Z)V

    .line 109
    :cond_9b
    return-void

    :cond_9c
    move v1, v0

    goto :goto_93

    :cond_9e
    move v0, v2

    move v3, v2

    goto :goto_80

    :cond_a1
    move v0, v2

    move v3, v2

    goto :goto_83
.end method

.method a(Z)V
    .registers 5

    .prologue
    .line 124
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    new-instance v0, Landroid/support/v7/text/AllCapsTransformationMethod;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 127
    return-void

    .line 124
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
