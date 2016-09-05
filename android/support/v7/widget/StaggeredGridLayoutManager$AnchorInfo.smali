.class Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field final synthetic e:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .registers 2

    .prologue
    .line 3013
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/support/v7/widget/StaggeredGridLayoutManager$1;)V
    .registers 3

    .prologue
    .line 3013
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3021
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->a:I

    .line 3022
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->b:I

    .line 3023
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->c:Z

    .line 3024
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->d:Z

    .line 3025
    return-void
.end method

.method a(I)V
    .registers 3

    .prologue
    .line 3033
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->c:Z

    if-eqz v0, :cond_10

    .line 3034
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->b:I

    .line 3038
    :goto_f
    return-void

    .line 3036
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->b:I

    goto :goto_f
.end method

.method b()V
    .registers 2

    .prologue
    .line 3028
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    :goto_c
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->b:I

    .line 3030
    return-void

    .line 3028
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_c
.end method
