.class Landroid/support/v7/widget/AppCompatProgressBarHelper;
.super Ljava/lang/Object;
.source "AppCompatProgressBarHelper.java"


# static fields
.field private static final b:[I


# instance fields
.field final a:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private final c:Landroid/widget/ProgressBar;

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->b:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x101013b
        0x101013c
    .end array-data
.end method

.method constructor <init>(Landroid/widget/ProgressBar;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->c:Landroid/widget/ProgressBar;

    .line 49
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->a:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 50
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/16 v5, 0x2710

    .line 123
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_35

    .line 124
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 125
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 126
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 129
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v2, :cond_31

    .line 130
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 131
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 132
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 134
    :cond_31
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v0

    .line 137
    :cond_35
    return-object p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    instance-of v0, p1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_1b

    move-object v0, p1

    .line 75
    check-cast v0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v0}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_19

    .line 77
    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, p1

    .line 78
    check-cast v0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    move-object v0, p1

    .line 114
    :cond_1a
    :goto_1a
    return-object v0

    .line 80
    :cond_1b
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_5a

    .line 81
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 82
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 83
    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    move v3, v1

    .line 85
    :goto_28
    if-ge v3, v4, :cond_49

    .line 86
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    .line 87
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v0, v7, :cond_3c

    const v7, 0x102000f

    if-ne v0, v7, :cond_47

    :cond_3c
    move v0, v2

    :goto_3d
    invoke-direct {p0, v6, v0}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v5, v3

    .line 85
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_28

    :cond_47
    move v0, v1

    .line 87
    goto :goto_3d

    .line 90
    :cond_49
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_4e
    if-ge v1, v4, :cond_1a

    .line 93
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 98
    :cond_5a
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_19

    .line 99
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->d:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6a

    .line 102
    iput-object v0, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->d:Landroid/graphics/Bitmap;

    .line 105
    :cond_6a
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->b()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 106
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 108
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 109
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 110
    if-eqz p2, :cond_9b

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1a

    :cond_9b
    move-object v0, v1

    goto/16 :goto_1a
.end method

.method private b()Landroid/graphics/drawable/shapes/Shape;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_e

    .line 142
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 141
    :array_e
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/AppCompatProgressBarHelper;->b:[I

    invoke-static {v0, p1, v1, p2, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_1c

    .line 58
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->c:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_1c
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_2c

    .line 63
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->c:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1, v3}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_2c
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 67
    return-void
.end method
