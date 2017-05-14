.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZZ)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v1, 0x7f100100

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1297
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_19

    .line 1298
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1302
    :goto_18
    return-void

    .line 1300
    :cond_19
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_18
.end method
