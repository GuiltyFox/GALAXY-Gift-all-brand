.class public Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FlowLayout.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 397
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->a:I

    .line 398
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 385
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 382
    iput v0, p0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->a:I

    .line 387
    sget-object v0, Lcom/samsung/privilege/R$styleable;->FlowLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 390
    const/4 v0, 0x0

    const/4 v2, -0x1

    :try_start_e
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->a:I
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 392
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    return-void

    .line 392
    :catchall_18
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 401
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->a:I

    .line 402
    return-void
.end method
