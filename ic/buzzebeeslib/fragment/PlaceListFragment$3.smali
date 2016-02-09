.class Lic/buzzebeeslib/fragment/PlaceListFragment$3;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment;->setLayoutByData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 485
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 486
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$28(Lic/buzzebeeslib/fragment/PlaceListFragment;Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;)V

    .line 487
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 488
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 497
    :goto_45
    return-void

    .line 490
    :cond_46
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_45

    .line 493
    :cond_4f
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->notifyDataSetChanged()V

    .line 494
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->refreshDrawableState()V

    .line 495
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->footerListView:Landroid/view/View;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$27(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_45
.end method
