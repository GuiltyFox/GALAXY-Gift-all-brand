.class public final Lcom/rey/material/widget/RippleManager;
.super Ljava/lang/Object;
.source "RippleManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/RippleManager;->b:Z

    .line 21
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lcom/rey/material/drawable/RippleDrawable;

    if-eqz v1, :cond_24

    .line 105
    check-cast v0, Lcom/rey/material/drawable/RippleDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/RippleDrawable;->c()V

    .line 109
    :cond_d
    :goto_d
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    .line 110
    check-cast p0, Landroid/view/ViewGroup;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_18
    if-ge v0, v1, :cond_2e

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/rey/material/widget/RippleManager;->a(Landroid/view/View;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 106
    :cond_24
    instance-of v1, v0, Lcom/rey/material/drawable/ToolbarRippleDrawable;

    if-eqz v1, :cond_d

    .line 107
    check-cast v0, Lcom/rey/material/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b()V

    goto :goto_d

    .line 114
    :cond_2e
    return-void
.end method

.method static synthetic a(Lcom/rey/material/widget/RippleManager;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/rey/material/widget/RippleManager;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/rey/material/widget/RippleManager;Z)Z
    .registers 2

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/rey/material/widget/RippleManager;->b:Z

    return p1
.end method

.method private b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    if-nez v0, :cond_8

    .line 56
    const/4 v0, 0x0

    .line 61
    :cond_7
    :goto_7
    return-object v0

    .line 58
    :cond_8
    instance-of v1, v0, Lcom/rey/material/drawable/RippleDrawable;

    if-eqz v1, :cond_7

    .line 59
    check-cast v0, Lcom/rey/material/drawable/RippleDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/RippleDrawable;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_7
.end method

.method private c(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/rey/material/widget/RippleManager;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/rey/material/widget/RippleManager;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 96
    :cond_9
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/rey/material/widget/RippleManager;->a:Landroid/view/View$OnClickListener;

    .line 66
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51
    :cond_7
    :goto_7
    return-void

    .line 35
    :cond_8
    sget-object v0, Lcom/rey/material/R$styleable;->RippleView:[I

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 36
    sget v0, Lcom/rey/material/R$styleable;->RippleView_rd_style:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 37
    const/4 v0, 0x0

    .line 39
    if-eqz v2, :cond_31

    .line 40
    new-instance v0, Lcom/rey/material/drawable/RippleDrawable$Builder;

    invoke-direct {v0, p2, v2}, Lcom/rey/material/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/rey/material/widget/RippleManager;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rey/material/drawable/RippleDrawable$Builder;->a(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/drawable/RippleDrawable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rey/material/drawable/RippleDrawable$Builder;->a()Lcom/rey/material/drawable/RippleDrawable;

    move-result-object v0

    .line 47
    :cond_28
    :goto_28
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    if-eqz v0, :cond_7

    .line 50
    invoke-static {p1, v0}, Lcom/rey/material/util/ViewUtil;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 42
    :cond_31
    sget v2, Lcom/rey/material/R$styleable;->RippleView_rd_enable:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 43
    if-eqz v2, :cond_28

    .line 44
    new-instance v0, Lcom/rey/material/drawable/RippleDrawable$Builder;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/rey/material/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/rey/material/widget/RippleManager;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rey/material/drawable/RippleDrawable$Builder;->a(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/drawable/RippleDrawable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rey/material/drawable/RippleDrawable$Builder;->a()Lcom/rey/material/drawable/RippleDrawable;

    move-result-object v0

    goto :goto_28
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/rey/material/drawable/RippleDrawable;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/rey/material/drawable/RippleDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/rey/material/drawable/RippleDrawable;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_3f

    .line 79
    instance-of v1, v0, Lcom/rey/material/drawable/RippleDrawable;

    if-eqz v1, :cond_30

    .line 80
    check-cast v0, Lcom/rey/material/drawable/RippleDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/RippleDrawable;->b()J

    move-result-wide v0

    .line 85
    :goto_12
    cmp-long v2, v0, v2

    if-lez v2, :cond_3b

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Lcom/rey/material/widget/RippleManager;->b:Z

    if-nez v2, :cond_3b

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rey/material/widget/RippleManager;->b:Z

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/rey/material/widget/RippleManager$ClickRunnable;

    invoke-direct {v3, p0, p1}, Lcom/rey/material/widget/RippleManager$ClickRunnable;-><init>(Lcom/rey/material/widget/RippleManager;Landroid/view/View;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :goto_2f
    return-void

    .line 81
    :cond_30
    instance-of v1, v0, Lcom/rey/material/drawable/ToolbarRippleDrawable;

    if-eqz v1, :cond_3f

    .line 82
    check-cast v0, Lcom/rey/material/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a()J

    move-result-wide v0

    goto :goto_12

    .line 90
    :cond_3b
    invoke-direct {p0, p1}, Lcom/rey/material/widget/RippleManager;->c(Landroid/view/View;)V

    goto :goto_2f

    :cond_3f
    move-wide v0, v2

    goto :goto_12
.end method
