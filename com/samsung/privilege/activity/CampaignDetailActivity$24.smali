.class Lcom/samsung/privilege/activity/CampaignDetailActivity$24;
.super Ljava/lang/Thread;
.source "CampaignDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 3156
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$24;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const v6, 0x7f09031c

    .line 3159
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3161
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$24;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3170
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_28

    .line 3171
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const-string v3, "location"

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v2, Lcom/samsung/privilege/activity/CampaignDetailActivity;->lm:Landroid/location/LocationManager;

    .line 3174
    :cond_28
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->locationListener:Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;

    if-nez v0, :cond_39

    .line 3175
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    iput-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->locationListener:Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;

    .line 3178
    :cond_39
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 3179
    .local v7, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 3181
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->lm:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 3182
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_7e

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 3183
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->lm:Landroid/location/LocationManager;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v5, v5, Lcom/samsung/privilege/activity/CampaignDetailActivity;->locationListener:Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3184
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$24;)V

    .line 3218
    .local v8, "runnable":Ljava/lang/Runnable;
    new-instance v9, Ljava/lang/Thread;

    const/4 v0, 0x0

    const-string v2, "MagentoBackground"

    invoke-direct {v9, v0, v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3219
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 3242
    .end local v8    # "runnable":Ljava/lang/Runnable;
    .end local v9    # "thread":Ljava/lang/Thread;
    :goto_7a
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3243
    return-void

    .line 3221
    :cond_7e
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$3;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$24;)V

    .line 3226
    const-wide/16 v4, 0x3e8

    .line 3221
    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3228
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v2, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    .line 3229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09031b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v2, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0900c0

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$4;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$24;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3234
    const v2, 0x7f0900b1

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$5;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$5;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$24;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3240
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_7a
.end method
