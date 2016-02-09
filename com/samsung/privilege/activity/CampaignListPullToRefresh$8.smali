.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;
.super Ljava/lang/Thread;
.source "CampaignListPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    .line 965
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    .registers 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const v4, 0x7f0a0315

    .line 968
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 970
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$13(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$1;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 979
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_2c

    .line 980
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v2, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->lm:Landroid/location/LocationManager;

    .line 983
    :cond_2c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->locationListener:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

    if-nez v0, :cond_3d

    .line 984
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-direct {v2, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V

    iput-object v2, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->locationListener:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

    .line 987
    :cond_3d
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 988
    .local v7, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 990
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->lm:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_82

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 992
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->lm:Landroid/location/LocationManager;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v5, v5, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->locationListener:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 993
    new-instance v8, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)V

    .line 1020
    .local v8, "runnable":Ljava/lang/Runnable;
    new-instance v9, Ljava/lang/Thread;

    const/4 v0, 0x0

    const-string v2, "MagentoBackground"

    invoke-direct {v9, v0, v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1021
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1037
    .end local v8    # "runnable":Ljava/lang/Runnable;
    .end local v9    # "thread":Ljava/lang/Thread;
    :goto_7e
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1038
    return-void

    .line 1023
    :cond_82
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->showToast(Ljava/lang/String;)V

    .line 1024
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0314

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a00c0

    new-instance v3, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$3;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$3;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1029
    const v2, 0x7f0a00b1

    new-instance v3, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$4;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$4;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_7e
.end method
