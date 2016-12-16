.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 550
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;)V
    .registers 3

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 590
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 623
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 627
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 643
    return-void
.end method
