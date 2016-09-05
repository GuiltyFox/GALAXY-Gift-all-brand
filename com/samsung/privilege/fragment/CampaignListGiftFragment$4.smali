.class Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;
.super Ljava/lang/Object;
.source "CampaignListGiftFragment.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 9

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->g(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->a(I)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string/jumbo v2, "campaign_id"

    iget-object v3, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v2, "time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    iget-object v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->startActivity(Landroid/content/Intent;)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Category-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const-string/jumbo v3, "header_en"

    invoke-static {v2, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Click Campaign Banner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    .line 234
    :goto_76
    return-void

    .line 231
    :catch_77
    move-exception v0

    goto :goto_76
.end method
