.class public Lcom/samsung/privilege/control/smarttab/TintableImageView;
.super Landroid/widget/ImageView;
.source "TintableImageView.java"


# instance fields
.field private a:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/privilege/control/smarttab/TintableImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/control/smarttab/TintableImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/privilege/control/smarttab/TintableImageView;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/samsung/privilege/control/smarttab/TintableImageView;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/smarttab/TintableImageView;->setColorFilter(I)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 32
    sget-object v0, Lcom/samsung/privilege/R$styleable;->TintableImageView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/smarttab/TintableImageView;->a:Landroid/content/res/ColorStateList;

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 42
    iget-object v0, p0, Lcom/samsung/privilege/control/smarttab/TintableImageView;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/privilege/control/smarttab/TintableImageView;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 43
    invoke-direct {p0}, Lcom/samsung/privilege/control/smarttab/TintableImageView;->a()V

    .line 45
    :cond_12
    return-void
.end method
