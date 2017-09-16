.class Lcom/samsung/privilege/activity/StampBranchActivity$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "StampBranchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampBranchActivity;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampBranchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampBranchActivity;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->d(Lcom/samsung/privilege/activity/StampBranchActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Lcom/samsung/privilege/activity/StampBranchActivity;I)I

    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->d(Lcom/samsung/privilege/activity/StampBranchActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->b(Lcom/samsung/privilege/activity/StampBranchActivity;I)I

    .line 236
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->e(Lcom/samsung/privilege/activity/StampBranchActivity;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->f(Lcom/samsung/privilege/activity/StampBranchActivity;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 237
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->g(Lcom/samsung/privilege/activity/StampBranchActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->h(Lcom/samsung/privilege/activity/StampBranchActivity;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->i(Lcom/samsung/privilege/activity/StampBranchActivity;)I

    move-result v1

    if-lt v0, v1, :cond_54

    .line 238
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->i(Lcom/samsung/privilege/activity/StampBranchActivity;)I

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampBranchActivity$4;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->c(Lcom/samsung/privilege/activity/StampBranchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;I)V

    .line 242
    :cond_54
    return-void
.end method
