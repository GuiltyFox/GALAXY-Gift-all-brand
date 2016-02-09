.class Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "PlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "placesRequestListener"
.end annotation


# instance fields
.field private gCacheName:Ljava/lang/String;

.field private gIsAll:Z

.field private gLoadMore:Z

.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment;ZZLjava/lang/String;)V
    .registers 6
    .param p2, "pLoadMore"    # Z
    .param p3, "pIsAll"    # Z
    .param p4, "pCacheName"    # Ljava/lang/String;

    .prologue
    .line 804
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->gCacheName:Ljava/lang/String;

    .line 805
    iput-boolean p2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->gLoadMore:Z

    .line 806
    iput-boolean p3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->gIsAll:Z

    .line 807
    iput-object p4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->gCacheName:Ljava/lang/String;

    .line 808
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)Z
    .registers 2

    .prologue
    .line 800
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 812
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 813
    const-string v1, "buzzebees.placeslist.fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(placesRequestListener|onComplete)response={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_6c

    .line 816
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;

    invoke-direct {v2, p0, p2}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$1;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$2;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$2;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 841
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v1, v1, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    new-instance v3, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$3;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener$3;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;)V

    invoke-static {v2, v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/Runnable;)V

    .line 849
    const-wide/16 v4, 0x3e8

    .line 841
    invoke-virtual {v1, v3, v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 851
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$7(Lic/buzzebeeslib/fragment/PlaceListFragment;Z)V

    .line 853
    :cond_6b
    :goto_6b
    return-void

    .line 828
    :cond_6c
    const-string v0, "Error: nearby places could not be fetched"

    .line 829
    .local v0, "err_message":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;)V

    goto :goto_6b
.end method
