.class Lic/buzzebeeslib/fragment/PlaceListFragment$4;
.super Ljava/lang/Thread;
.source "PlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment;->getLocation()V
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
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    .line 505
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 508
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 510
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceListFragment$4$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4$1;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_2a

    .line 523
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v2, Lic/buzzebeeslib/fragment/PlaceListFragment;->lm:Landroid/location/LocationManager;

    .line 527
    :cond_2a
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->locationListener:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    if-nez v0, :cond_3b

    .line 528
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-direct {v2, v3, v9}, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)V

    iput-object v2, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->locationListener:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    .line 533
    :cond_3b
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 534
    .local v7, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 536
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->lm:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_8a

    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 540
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->lm:Landroid/location/LocationManager;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v5, v5, Lic/buzzebeeslib/fragment/PlaceListFragment;->locationListener:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 546
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4$2;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)V

    invoke-static {v0, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$31(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/Runnable;)V

    .line 578
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable0:Ljava/lang/Runnable;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$32(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v2, "MagentoBackground"

    invoke-direct {v8, v9, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 579
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 605
    .end local v8    # "thread":Ljava/lang/Thread;
    :goto_86
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 606
    return-void

    .line 581
    :cond_8a
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    new-instance v3, Lic/buzzebeeslib/fragment/PlaceListFragment$4$3;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4$3;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)V

    invoke-static {v2, v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$33(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/Runnable;)V

    .line 588
    const-wide/16 v4, 0x3e8

    .line 581
    invoke-virtual {v0, v3, v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 590
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    const-string v2, "GPS not enabled, please enable GPS in the Location menu."

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;)V

    .line 591
    const-string v0, "buzzebees.places"

    const-string v2, "GPS not enabled, prompt user to enable GPS in the Location menu."

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lic/buzzebeeslib/R$string;->enable_gps_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    sget v3, Lic/buzzebeeslib/R$string;->enable_gps:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lic/buzzebeeslib/R$string;->gps_settings:I

    new-instance v3, Lic/buzzebeeslib/fragment/PlaceListFragment$4$4;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4$4;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 597
    sget v2, Lic/buzzebeeslib/R$string;->cancel:I

    new-instance v3, Lic/buzzebeeslib/fragment/PlaceListFragment$4$5;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4$5;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_86
.end method
