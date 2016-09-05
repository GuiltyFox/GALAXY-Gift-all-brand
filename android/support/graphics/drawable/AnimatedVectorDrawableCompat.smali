.class public Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.super Landroid/support/graphics/drawable/VectorDrawableCommon;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

.field private c:Landroid/content/Context;

.field private d:Landroid/animation/ArgbEvaluator;

.field private final e:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0, v0, v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V
    .registers 6

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->d:Landroid/animation/ArgbEvaluator;

    .line 629
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->e:Landroid/graphics/drawable/Drawable$Callback;

    .line 92
    iput-object p1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->c:Landroid/content/Context;

    .line 93
    if-eqz p2, :cond_14

    .line 94
    iput-object p2, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    .line 99
    :goto_13
    return-void

    .line 96
    :cond_14
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->e:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    goto :goto_13
.end method

.method synthetic constructor <init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>()V

    return-void
.end method

.method static a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 325
    if-nez p1, :cond_8

    .line 326
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 328
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_7
.end method

.method static synthetic a(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Landroid/graphics/drawable/Drawable$Callback;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->e:Landroid/graphics/drawable/Drawable$Callback;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    .registers 6

    .prologue
    .line 161
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 163
    return-object v0
.end method

.method private a(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    .line 527
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_22

    move-object v0, p1

    .line 528
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    .line 529
    if-eqz v2, :cond_22

    .line 530
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 531
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a(Landroid/animation/Animator;)V

    .line 530
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 535
    :cond_22
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4e

    .line 536
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 537
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 538
    const-string/jumbo v1, "fillColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 539
    :cond_3e
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->d:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_49

    .line 540
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->d:Landroid/animation/ArgbEvaluator;

    .line 542
    :cond_49
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->d:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 545
    :cond_4e
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/animation/Animator;)V
    .registers 5

    .prologue
    .line 548
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 550
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_14

    .line 551
    invoke-direct {p0, p2}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a(Landroid/animation/Animator;)V

    .line 553
    :cond_14
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2c

    .line 554
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->c:Ljava/util/ArrayList;

    .line 555
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->d:Landroid/support/v4/util/ArrayMap;

    .line 557
    :cond_2c
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    return-void
.end method

.method private a()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v3, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->c:Ljava/util/ArrayList;

    .line 582
    if-nez v3, :cond_9

    move v0, v1

    .line 592
    :goto_8
    return v0

    .line 585
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 586
    :goto_e
    if-ge v2, v4, :cond_22

    .line 587
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 588
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 589
    const/4 v0, 0x1

    goto :goto_8

    .line 586
    :cond_1e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_22
    move v0, v1

    .line 592
    goto :goto_8
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .prologue
    .line 400
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 401
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 405
    :cond_9
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 410
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 413
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic clearColorFilter()V
    .registers 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 193
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    :cond_9
    :goto_9
    return-void

    .line 196
    :cond_a
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-direct {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    invoke-virtual {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    goto :goto_9
.end method

.method public getAlpha()I
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 230
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 232
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getAlpha()I

    move-result v0

    goto :goto_a
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 185
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 187
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->a:I

    or-int/2addr v0, v1

    goto :goto_a
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 174
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 179
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 314
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 316
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getIntrinsicHeight()I

    move-result v0

    goto :goto_a
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 307
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 309
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getIntrinsicWidth()I

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic getLayoutDirection()I
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 300
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 302
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getOpacity()I

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 396
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 335
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 390
    :cond_b
    return-void

    .line 338
    :cond_c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 339
    :goto_10
    if-eq v0, v5, :cond_b

    .line 340
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    .line 341
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string/jumbo v1, "animated-vector"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 346
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->e:[I

    invoke-static {p1, p4, p3, v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 355
    if-eqz v1, :cond_4c

    .line 356
    invoke-static {p1, v1, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-result-object v1

    .line 358
    invoke-virtual {v1, v4}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Z)V

    .line 359
    iget-object v2, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->e:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 360
    iget-object v2, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-eqz v2, :cond_48

    .line 361
    iget-object v2, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 363
    :cond_48
    iget-object v2, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iput-object v1, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    .line 365
    :cond_4c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 388
    :cond_4f
    :goto_4f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_10

    .line 366
    :cond_54
    const-string/jumbo v1, "target"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 367
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->f:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 375
    if-eqz v2, :cond_7a

    .line 376
    iget-object v3, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->c:Landroid/content/Context;

    if-eqz v3, :cond_7e

    .line 377
    iget-object v3, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 378
    invoke-direct {p0, v1, v2}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 384
    :cond_7a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4f

    .line 380
    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic isAutoMirrored()Z
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 567
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    .line 577
    :goto_d
    return v0

    .line 569
    :cond_e
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v3, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->c:Ljava/util/ArrayList;

    .line 570
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 571
    :goto_17
    if-ge v2, v4, :cond_2b

    .line 572
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 573
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 574
    const/4 v0, 0x1

    goto :goto_d

    .line 571
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    :cond_2b
    move v0, v1

    .line 577
    goto :goto_d
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 292
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 294
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->isStateful()Z

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic jumpToCurrentState()V
    .registers 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 104
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 105
    return-object p0

    .line 107
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Mutate() is not supported for older platform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 205
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 209
    :goto_9
    return-void

    .line 208
    :cond_a
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_9
.end method

.method protected onLevelChange(I)Z
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 222
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 224
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setLevel(I)Z

    move-result v0

    goto :goto_a
.end method

.method protected onStateChange([I)Z
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 214
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 216
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setState([I)Z

    move-result v0

    goto :goto_a
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 238
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 242
    :goto_9
    return-void

    .line 241
    :cond_a
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setAlpha(I)V

    goto :goto_9
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 247
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    :goto_9
    return-void

    .line 250
    :cond_a
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_9
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .registers 3

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .registers 5

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .registers 3

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 255
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 260
    :goto_9
    return-void

    .line 259
    :cond_a
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTint(I)V

    goto :goto_9
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 264
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 269
    :goto_9
    return-void

    .line 268
    :cond_a
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_9
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 273
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 278
    :goto_9
    return-void

    .line 277
    :cond_a
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 283
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 286
    :goto_a
    return v0

    .line 285
    :cond_b
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setVisible(ZZ)Z

    .line 286
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setVisible(ZZ)Z

    move-result v0

    goto :goto_a
.end method

.method public start()V
    .registers 5

    .prologue
    .line 597
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 598
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 613
    :cond_b
    :goto_b
    return-void

    .line 602
    :cond_c
    invoke-direct {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 606
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->c:Ljava/util/ArrayList;

    .line 607
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 608
    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-ge v1, v3, :cond_2b

    .line 609
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 610
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 608
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    .line 612
    :cond_2b
    invoke-virtual {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    goto :goto_b
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 617
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 618
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 627
    :cond_b
    return-void

    .line 621
    :cond_c
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->b:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->c:Ljava/util/ArrayList;

    .line 622
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 623
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    if-ge v1, v3, :cond_b

    .line 624
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 625
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 623
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16
.end method
