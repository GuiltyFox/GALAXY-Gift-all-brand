.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1$1;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;)V
    .registers 2

    .prologue
    .line 927
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 929
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->f:Lcom/bzbs/bean/NFCTag;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->f:Lcom/bzbs/bean/NFCTag;

    iget-boolean v0, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 930
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;

    iget v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->b:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_25

    .line 931
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeem(Landroid/view/View;)V

    .line 934
    :cond_25
    return-void
.end method
