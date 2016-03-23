.class Lcom/samsung/privilege/activity/NotificationActivity$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/NotificationActivity;->bindingEventNotificationPull()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/NotificationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-static {v2}, Lcom/samsung/privilege/activity/NotificationActivity;->access$300(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    # setter for: Lcom/samsung/privilege/activity/NotificationActivity;->visibleItemCount:I
    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/NotificationActivity;->access$202(Lcom/samsung/privilege/activity/NotificationActivity;I)I

    .line 126
    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-static {v2}, Lcom/samsung/privilege/activity/NotificationActivity;->access$300(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    # setter for: Lcom/samsung/privilege/activity/NotificationActivity;->totalItemCount:I
    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/NotificationActivity;->access$402(Lcom/samsung/privilege/activity/NotificationActivity;I)I

    .line 129
    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->loading:Z
    invoke-static {v1}, Lcom/samsung/privilege/activity/NotificationActivity;->access$500(Lcom/samsung/privilege/activity/NotificationActivity;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->out_of_data:Z
    invoke-static {v1}, Lcom/samsung/privilege/activity/NotificationActivity;->access$600(Lcom/samsung/privilege/activity/NotificationActivity;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 130
    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->visibleItemCount:I
    invoke-static {v1}, Lcom/samsung/privilege/activity/NotificationActivity;->access$200(Lcom/samsung/privilege/activity/NotificationActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->pastVisiblesItems:I
    invoke-static {v2}, Lcom/samsung/privilege/activity/NotificationActivity;->access$700(Lcom/samsung/privilege/activity/NotificationActivity;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->totalItemCount:I
    invoke-static {v2}, Lcom/samsung/privilege/activity/NotificationActivity;->access$400(Lcom/samsung/privilege/activity/NotificationActivity;)I

    move-result v2

    if-lt v1, v2, :cond_4e

    .line 131
    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->totalItemCount:I
    invoke-static {v1}, Lcom/samsung/privilege/activity/NotificationActivity;->access$400(Lcom/samsung/privilege/activity/NotificationActivity;)I

    move-result v0

    .line 132
    .local v0, "skip":I
    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity$4;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # invokes: Lcom/samsung/privilege/activity/NotificationActivity;->loadNotificationPull(I)V
    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/NotificationActivity;->access$100(Lcom/samsung/privilege/activity/NotificationActivity;I)V

    .line 135
    .end local v0    # "skip":I
    :cond_4e
    return-void
.end method
