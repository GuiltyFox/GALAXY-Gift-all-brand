.class Lcom/samsung/privilege/fragment/CampaignListGiftFragment$5;
.super Ljava/lang/Object;
.source "CampaignListGiftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V
    .registers 2

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$5;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$5;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10061e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    return-void
.end method
