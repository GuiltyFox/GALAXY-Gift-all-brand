.class Lic/buzzebeeslib/activity/Place2Activity$6;
.super Ljava/lang/Thread;
.source "Place2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity;->getLocation()V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    .line 510
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/Place2Activity$6;)Lic/buzzebeeslib/activity/Place2Activity;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 513
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 515
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$0(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lic/buzzebeeslib/activity/Place2Activity$6$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/Place2Activity$6$1;-><init>(Lic/buzzebeeslib/activity/Place2Activity$6;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 527
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_26

    .line 528
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const-string v3, "location"

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/Place2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v2, Lic/buzzebeeslib/activity/Place2Activity;->lm:Landroid/location/LocationManager;

    .line 532
    :cond_26
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->locationListener:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    if-nez v0, :cond_37

    .line 533
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    new-instance v2, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-direct {v2, v3, v9}, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;-><init>(Lic/buzzebeeslib/activity/Place2Activity;Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)V

    iput-object v2, v0, Lic/buzzebeeslib/activity/Place2Activity;->locationListener:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    .line 538
    :cond_37
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 539
    .local v7, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 541
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->lm:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_86

    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 545
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->lm:Landroid/location/LocationManager;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v5, v5, Lic/buzzebeeslib/activity/Place2Activity;->locationListener:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 551
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    new-instance v2, Lic/buzzebeeslib/activity/Place2Activity$6$2;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/Place2Activity$6$2;-><init>(Lic/buzzebeeslib/activity/Place2Activity$6;)V

    invoke-static {v0, v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$32(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V

    .line 583
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gRunnable0:Ljava/lang/Runnable;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$33(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v2, "MagentoBackground"

    invoke-direct {v8, v9, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 584
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 610
    .end local v8    # "thread":Ljava/lang/Thread;
    :goto_82
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 611
    return-void

    .line 586
    :cond_86
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    new-instance v3, Lic/buzzebeeslib/activity/Place2Activity$6$3;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/Place2Activity$6$3;-><init>(Lic/buzzebeeslib/activity/Place2Activity$6;)V

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$34(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V

    .line 593
    const-wide/16 v4, 0x3e8

    .line 586
    invoke-virtual {v0, v3, v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 595
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const-string v2, "GPS not enabled, please enable GPS in the Location menu."

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$2(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V

    .line 596
    const-string v0, "buzzebees.places"

    const-string v2, "GPS not enabled, prompt user to enable GPS in the Location menu."

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lic/buzzebeeslib/R$string;->enable_gps_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$6;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    sget v3, Lic/buzzebeeslib/R$string;->enable_gps:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/Place2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lic/buzzebeeslib/R$string;->gps_settings:I

    new-instance v3, Lic/buzzebeeslib/activity/Place2Activity$6$4;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/Place2Activity$6$4;-><init>(Lic/buzzebeeslib/activity/Place2Activity$6;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 602
    sget v2, Lic/buzzebeeslib/R$string;->cancel:I

    new-instance v3, Lic/buzzebeeslib/activity/Place2Activity$6$5;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/Place2Activity$6$5;-><init>(Lic/buzzebeeslib/activity/Place2Activity$6;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_82
.end method
