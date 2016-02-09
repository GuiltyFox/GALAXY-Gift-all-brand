.class Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$2;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 897
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$5(Lic/buzzebeeslib/fragment/PlaceListFragment;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 898
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 900
    :cond_17
    return-void
.end method
