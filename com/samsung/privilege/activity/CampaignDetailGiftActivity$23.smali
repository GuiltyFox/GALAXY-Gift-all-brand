.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V
    .registers 3

    .prologue
    .line 2632
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-boolean p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const v2, 0x7f1000de

    .line 2636
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 2637
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "#cccccc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2642
    :goto_18
    return-void

    .line 2639
    :cond_19
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020241

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_18
.end method
