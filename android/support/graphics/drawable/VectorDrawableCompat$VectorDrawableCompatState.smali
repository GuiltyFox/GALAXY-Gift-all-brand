.class Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# instance fields
.field a:I

.field b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 870
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->c:Landroid/content/res/ColorStateList;

    .line 765
    sget-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->d:Landroid/graphics/PorterDuff$Mode;

    .line 871
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 872
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V
    .registers 5

    .prologue
    .line 782
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->c:Landroid/content/res/ColorStateList;

    .line 765
    sget-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->d:Landroid/graphics/PorterDuff$Mode;

    .line 783
    if-eqz p1, :cond_55

    .line 784
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->a:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->a:I

    .line 785
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 786
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 787
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 789
    :cond_31
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->c(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 790
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->c(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 792
    :cond_49
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->c:Landroid/content/res/ColorStateList;

    .line 793
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->d:Landroid/graphics/PorterDuff$Mode;

    .line 794
    iget-boolean v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->e:Z

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->e:Z

    .line 796
    :cond_55
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .registers 4

    .prologue
    .line 813
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->a()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_a

    .line 814
    const/4 v0, 0x0

    .line 823
    :goto_9
    return-object v0

    .line 817
    :cond_a
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_1b

    .line 818
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->l:Landroid/graphics/Paint;

    .line 819
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 821
    :cond_1b
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 822
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 823
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->l:Landroid/graphics/Paint;

    goto :goto_9
.end method

.method public a(II)V
    .registers 6

    .prologue
    .line 827
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 828
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 829
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 830
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .registers 7

    .prologue
    .line 801
    invoke-virtual {p0, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object v0

    .line 802
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 803
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 806
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public b(II)V
    .registers 4

    .prologue
    .line 833
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->c(II)Z

    move-result v0

    if-nez v0, :cond_15

    .line 834
    :cond_a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->f:Landroid/graphics/Bitmap;

    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->k:Z

    .line 839
    :cond_15
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 850
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->k:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->g:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->c:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->j:Z

    iget-boolean v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->e:Z

    if-ne v0, v1, :cond_22

    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->i:I

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a()I

    move-result v1

    if-ne v0, v1, :cond_22

    .line 855
    const/4 v0, 0x1

    .line 857
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public c()V
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->g:Landroid/content/res/ColorStateList;

    .line 864
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->h:Landroid/graphics/PorterDuff$Mode;

    .line 865
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a()I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->i:I

    .line 866
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->e:Z

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->j:Z

    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->k:Z

    .line 868
    return-void
.end method

.method public c(II)Z
    .registers 4

    .prologue
    .line 842
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_12

    .line 844
    const/4 v0, 0x1

    .line 846
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 886
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 876
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 881
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V

    return-object v0
.end method
