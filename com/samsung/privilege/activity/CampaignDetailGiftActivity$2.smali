.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 421
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 425
    .line 426
    :try_start_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f1000c9

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 427
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_38

    move v0, v1

    .line 431
    :goto_16
    if-ne v0, v1, :cond_35

    .line 432
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getCampaign(resume|need_to_refresh)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    .line 438
    :cond_35
    :goto_35
    return-void

    .line 435
    :catch_36
    move-exception v0

    goto :goto_35

    :cond_38
    move v0, v2

    goto :goto_16
.end method
