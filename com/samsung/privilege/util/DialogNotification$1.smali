.class final Lcom/samsung/privilege/util/DialogNotification$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DialogNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogNotification;->a(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 6

    .prologue
    .line 112
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->a()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogNotification;->a(I)I

    .line 113
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->a()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogNotification;->b(I)I

    .line 116
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->b()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->c()Z

    move-result v0

    if-nez v0, :cond_34

    .line 117
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->d()I

    move-result v0

    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->e()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->f()I

    move-result v1

    if-lt v0, v1, :cond_34

    .line 118
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->f()I

    .line 122
    :cond_34
    return-void
.end method
