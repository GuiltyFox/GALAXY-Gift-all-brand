.class Lic/buzzebeeslib/fragment/PlaceListFragment$1;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->getLocation()V
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    .line 225
    return-void
.end method
