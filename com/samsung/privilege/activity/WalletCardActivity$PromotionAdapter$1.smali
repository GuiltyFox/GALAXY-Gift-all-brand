.class Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/Campaign;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;Lcom/bzbs/bean/Campaign;)V
    .registers 3

    .prologue
    .line 2201
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;->a:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2206
    const-string/jumbo v1, "campaign_id"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;->a:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2207
    const-string/jumbo v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2208
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Campaign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;->a:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;->a:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2211
    return-void
.end method
