.class Lic/buzzebeeslib/activity/Place2Activity$5;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity;->setLayoutByData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/Place2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 492
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gAdapter:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$20(Lic/buzzebeeslib/activity/Place2Activity;)Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 493
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    new-instance v1, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$21(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;-><init>(Lic/buzzebeeslib/activity/Place2Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/Place2Activity;->access$29(Lic/buzzebeeslib/activity/Place2Activity;Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;)V

    .line 494
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$21(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$21(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_42

    .line 495
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gAdapter:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;
    invoke-static {v1}, Lic/buzzebeeslib/activity/Place2Activity;->access$20(Lic/buzzebeeslib/activity/Place2Activity;)Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 504
    :goto_41
    return-void

    .line 497
    :cond_42
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_41

    .line 500
    :cond_4b
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gAdapter:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$20(Lic/buzzebeeslib/activity/Place2Activity;)Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->notifyDataSetChanged()V

    .line 501
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->refreshDrawableState()V

    .line 502
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$5;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->footerListView:Landroid/view/View;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$27(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_41
.end method
