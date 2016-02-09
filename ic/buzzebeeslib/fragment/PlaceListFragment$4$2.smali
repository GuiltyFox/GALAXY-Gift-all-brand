.class Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;)Lic/buzzebeeslib/fragment/PlaceListFragment$4;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 550
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->booleanCancelRunnable:Z
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$5(Lic/buzzebeeslib/fragment/PlaceListFragment;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 552
    const-wide/16 v2, 0x2710

    :try_start_e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_30

    .line 558
    :goto_11
    :try_start_11
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gFoundLocation:Z
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$29(Lic/buzzebeeslib/fragment/PlaceListFragment;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 561
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2$1;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2$1;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_4a

    .line 576
    :cond_2f
    :goto_2f
    return-void

    .line 553
    :catch_30
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "buzzebees.placeslist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|getLocation|try):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 569
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_4a
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while get your location!"

    .line 571
    .local v1, "error":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v2

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;)V

    .line 572
    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$15()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocation|error := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method
