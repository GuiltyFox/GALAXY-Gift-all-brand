.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;
.super Ljava/lang/Thread;
.source "CampaignDetailPremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    .line 2134
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    .registers 2

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const v4, 0x7f0a0315

    .line 2137
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2139
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2148
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_28

    .line 2149
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const-string v3, "location"

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->lm:Landroid/location/LocationManager;

    .line 2152
    :cond_28
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->locationListener:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;

    if-nez v0, :cond_39

    .line 2153
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    iput-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->locationListener:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;

    .line 2156
    :cond_39
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 2157
    .local v7, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 2159
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->lm:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 2160
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_7e

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2161
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->lm:Landroid/location/LocationManager;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v5, v5, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->locationListener:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2162
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;)V

    .line 2196
    .local v8, "runnable":Ljava/lang/Runnable;
    new-instance v9, Ljava/lang/Thread;

    const/4 v0, 0x0

    const-string v2, "MagentoBackground"

    invoke-direct {v9, v0, v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2197
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 2220
    .end local v8    # "runnable":Ljava/lang/Runnable;
    .end local v9    # "thread":Ljava/lang/Thread;
    :goto_7a
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2221
    return-void

    .line 2206
    :cond_7e
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    .line 2207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0314

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a00c0

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$3;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2212
    const v2, 0x7f0a00b1

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$4;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_7a
.end method
