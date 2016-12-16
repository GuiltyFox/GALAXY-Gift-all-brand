.class public Lcom/samsung/privilege/activity/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashActivity.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static c:I


# instance fields
.field private b:Landroid/os/Handler;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/privilege/activity/SplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/SplashActivity;->a:Ljava/lang/String;

    .line 24
    const/16 v0, 0x2710

    sput v0, Lcom/samsung/privilege/activity/SplashActivity;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/SplashActivity;->d:Z

    return-void
.end method

.method private a(I)V
    .registers 6

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_91

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gift"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    :goto_37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->finish()V

    .line 170
    return-void

    .line 148
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    new-instance v1, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 151
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 152
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string/jumbo v3, "ItemMarketPlace"

    invoke-static {v1}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    const-string/jumbo v1, "ItemMarketPlace::Ads::Ins"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    .line 158
    :cond_7c
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    .line 164
    :cond_91
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/SplashActivity;)Z
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/SplashActivity;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/SplashActivity;)V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/privilege/activity/SplashActivity;->f()V

    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    if-lez v0, :cond_1a

    .line 83
    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->a(I)V

    .line 128
    :goto_19
    return-void

    .line 85
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 86
    invoke-static {p0, v2}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Z)V

    goto :goto_19

    .line 88
    :cond_33
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->finish()V

    goto :goto_19
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->setContentView(I)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/SplashActivity;->b:Landroid/os/Handler;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/SplashActivity$1;-><init>(Lcom/samsung/privilege/activity/SplashActivity;)V

    sget v2, Lcom/samsung/privilege/activity/SplashActivity;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method
