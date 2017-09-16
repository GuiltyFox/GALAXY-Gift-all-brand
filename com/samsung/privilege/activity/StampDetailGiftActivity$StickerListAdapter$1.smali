.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->a(Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$StickerViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/StampSticker;

.field final synthetic b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;Lcom/bzbs/bean/StampSticker;)V
    .registers 3

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;->a:Lcom/bzbs/bean/StampSticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1339
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->d:Landroid/content/Context;

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1341
    const-string/jumbo v1, "campaign_id"

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;->a:Lcom/bzbs/bean/StampSticker;

    iget-object v2, v2, Lcom/bzbs/bean/StampSticker;->stampCampaign:Lcom/bzbs/bean/StampCampaign;

    iget v2, v2, Lcom/bzbs/bean/StampCampaign;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1342
    const-string/jumbo v1, "redeem_media"

    const-string/jumbo v2, "stamp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    const-string/jumbo v1, "walletcard"

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;->a:Lcom/bzbs/bean/StampSticker;

    iget-object v2, v2, Lcom/bzbs/bean/StampSticker;->stampAgency:Lcom/bzbs/bean/StampAgency;

    iget-object v2, v2, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1344
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1346
    const-string/jumbo v0, "Stamp Profile"

    const-string/jumbo v1, "Click Campaign Stamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StickerListAdapter$1;->a:Lcom/bzbs/bean/StampSticker;

    iget-object v3, v3, Lcom/bzbs/bean/StampSticker;->stampCampaign:Lcom/bzbs/bean/StampCampaign;

    iget v3, v3, Lcom/bzbs/bean/StampCampaign;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1347
    return-void
.end method
