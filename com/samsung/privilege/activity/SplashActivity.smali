.class public Lcom/samsung/privilege/activity/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashActivity.java"


# static fields
.field private static SPLASH_TIME_OUT:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/privilege/activity/SplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/SplashActivity;->TAG:Ljava/lang/String;

    .line 19
    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/privilege/activity/SplashActivity;->SPLASH_TIME_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/SplashActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/SplashActivity;
    .param p1, "x1"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/SplashActivity;->gotoCampaignDetail(I)V

    return-void
.end method

.method private gotoCampaignDetail(I)V
    .registers 6
    .param p1, "campaign_id"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "mode":Ljava/lang/String;
    if-eqz v1, :cond_5d

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gift"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->finish()V

    .line 114
    return-void

    .line 99
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bzbs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    .line 109
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5d
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/SplashActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/SplashActivity$2;-><init>(Lcom/samsung/privilege/activity/SplashActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashActivity;->setContentView(I)V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/SplashActivity;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/SplashActivity$1;-><init>(Lcom/samsung/privilege/activity/SplashActivity;)V

    sget v2, Lcom/samsung/privilege/activity/SplashActivity;->SPLASH_TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method
