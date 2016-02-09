.class Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$3;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$3;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$3;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$5(Lic/buzzebeeslib/fragment/PlaceListFragment;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 846
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$3;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 848
    :cond_17
    return-void
.end method
