.class Landroid/support/v7/widget/SnapHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SnapHelper;
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/support/v7/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SnapHelper;)V
    .registers 3

    .prologue
    .line 44
    iput-object p1, p0, Landroid/support/v7/widget/SnapHelper$1;->b:Landroid/support/v7/widget/SnapHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SnapHelper$1;->a:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 4

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 50
    if-nez p2, :cond_11

    iget-boolean v0, p0, Landroid/support/v7/widget/SnapHelper$1;->a:Z

    if-eqz v0, :cond_11

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SnapHelper$1;->a:Z

    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper$1;->b:Landroid/support/v7/widget/SnapHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/SnapHelper;->snapToTargetExistingView()V

    .line 54
    :cond_11
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 5

    .prologue
    .line 58
    if-nez p2, :cond_4

    if-eqz p3, :cond_7

    .line 59
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SnapHelper$1;->a:Z

    .line 61
    :cond_7
    return-void
.end method
