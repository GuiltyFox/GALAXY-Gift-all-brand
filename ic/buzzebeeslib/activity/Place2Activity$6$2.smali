.class Lic/buzzebeeslib/activity/Place2Activity$6$2;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/Place2Activity$6;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$6;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$6$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$6;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/Place2Activity$6$2;)Lic/buzzebeeslib/activity/Place2Activity$6;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$6;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 555
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$6$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$6;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity$6;->access$0(Lic/buzzebeeslib/activity/Place2Activity$6;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->booleanCancelRunnable:Z
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$5(Lic/buzzebeeslib/activity/Place2Activity;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 557
    const-wide/16 v2, 0x2710

    :try_start_e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_30

    .line 563
    :goto_11
    :try_start_11
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$6$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$6;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity$6;->access$0(Lic/buzzebeeslib/activity/Place2Activity$6;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gFoundLocation:Z
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$30(Lic/buzzebeeslib/activity/Place2Activity;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 566
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$6$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$6;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity$6;->access$0(Lic/buzzebeeslib/activity/Place2Activity$6;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$0(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/Place2Activity$6$2$1;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/Place2Activity$6$2$1;-><init>(Lic/buzzebeeslib/activity/Place2Activity$6$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_4a

    .line 581
    :cond_2f
    :goto_2f
    return-void

    .line 558
    :catch_30
    move-exception v0

    .line 559
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

    .line 574
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_4a
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while get your location!"

    .line 576
    .local v1, "error":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$6$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$6;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity$6;->access$0(Lic/buzzebeeslib/activity/Place2Activity$6;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v2

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lic/buzzebeeslib/activity/Place2Activity;->access$2(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V

    .line 577
    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/Place2Activity;->access$15()Ljava/lang/String;

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
